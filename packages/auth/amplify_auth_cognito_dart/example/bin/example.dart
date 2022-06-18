// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'dart:convert';
import 'dart:io';

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';
import 'package:cognito_example/amplifyconfiguration.dart';
import 'package:cognito_example/common.dart';

Future<void> main() async {
  try {
    await Amplify.addPlugin(
      AmplifyAuthCognitoDart(
        credentialStorage: AmplifySecureStorageDart(
          config: AmplifySecureStorageConfig(
            scope: 'auth',
            macOSOptions: MacOSSecureStorageOptions(useDataProtection: false),
          ),
        ),
      ),
    );
    await Amplify.configure(amplifyconfig);
  } on Exception catch (e) {
    stderr.writeln('Could not configure: $e');
    exit(1);
  }
  final username = prompt(
    'Enter your username (or type "amazon" to login with Amazon): ',
  );

  if (username == 'amazon') {
    try {
      await hostedSignIn(provider: AuthProvider.amazon);
    } on Object catch (e, st) {
      exitError(e, st);
    }
  } else {
    final password = prompt('Enter your password: ');
    stdout.writeln('Logging in...');
    try {
      var res = await signIn(
        username: username,
        password: password,
      );
      while (!res.isSignedIn) {
        res = await _processSignInResult(
          res,
          username: username,
          password: password,
        );
      }
    } on Object catch (e, st) {
      exitError(e, st);
    }
  }

  stdout
    ..writeln('Successfully logged in')
    ..writeln();

  try {
    final session = await fetchAuthSession();
    stdout
      ..writeln('Session Details')
      ..writeln('---------------')
      ..writeln('Access Token: ${session.userPoolTokens?.accessToken.raw}')
      ..writeln()
      ..writeln('Refresh Token: ${session.userPoolTokens?.refreshToken}')
      ..writeln()
      ..writeln('ID Token: ${session.userPoolTokens?.idToken.raw}')
      ..writeln();

    final attributes = await fetchUserAttributes();
    stdout
      ..writeln('User Attributes')
      ..writeln('---------------');
    for (final attribute in attributes) {
      stdout.writeln('${attribute.userAttributeKey}: ${attribute.value}');
    }
    stdout.writeln();

    stdout
      ..writeln('Devices')
      ..writeln('-------');
    try {
      final devices = await fetchDevices();
      if (devices.isEmpty) {
        stdout.writeln('No devices');
      } else {
        for (final device in devices) {
          stdout.writeln(
            '${device.name ?? device.id}: '
            '${device.asCognitoDevice.attributes}',
          );
        }
      }
      stdout.writeln();
    } on InvalidUserPoolConfigurationException {
      stdout.writeln('Device tracking is not enabled.');
    } on Object {
      rethrow;
    }
  } on Object catch (e, st) {
    exitError(e, st);
  }
}

Never exitError(Object error, [StackTrace? stackTrace]) {
  stderr.writeln(error);
  stderr.writeln(stackTrace);
  exit(1);
}

Future<SignInResult> _processSignInResult(
  SignInResult result, {
  required String username,
  required String password,
}) async {
  final nextStep = result.nextStep;
  final signInStep = nextStep?.signInStep;
  final missingAttributes =
      nextStep?.missingAttributes.cast<CognitoUserAttributeKey>() ?? const [];
  switch (signInStep) {
    case 'CONFIRM_SIGN_IN_WITH_SMS_MFA_CODE':
    case 'CONFIRM_SIGN_IN_WITH_CUSTOM_CHALLENGE':
      final confirmationCode = prompt('Enter your confirmation code: ');
      return confirmSignIn(confirmationCode);
    case 'CONFIRM_SIGN_IN_WITH_NEW_PASSWORD':
      final userAttributes = <CognitoUserAttributeKey, String>{};
      for (final missingAttribute in missingAttributes) {
        final attributeValue = prompt(
          'Enter value for attribute ($missingAttribute): ',
        );
        userAttributes[missingAttribute] = attributeValue;
      }
      final newPassword = prompt('Enter your new password: ');
      return confirmSignIn(
        newPassword,
        userAttributes: userAttributes,
      );
    case 'RESET_PASSWORD':
      final result = await resetPassword(username: username);
      stdout
        ..writeln('You must reset your password.')
        ..writeln(result);
      final newPassword = prompt('Enter your new password: ');
      final confirmationCode = prompt('Enter your confirmation code: ');
      final confirmResult = await confirmResetPassword(
        username: username,
        newPassword: newPassword,
        confirmationCode: confirmationCode,
      );
      stdout.writeln(confirmResult);
      return signIn(username: username, password: password);
    case 'MFA_SETUP':
      final allowedTypes = nextStep!.allowedMfaTypes ?? const [];
      for (final type in allowedTypes) {
        switch (type) {
          case MfaType.sms:
            stderr.writeln('Cannot handle SMS set up');
            continue;
          case MfaType.totp:
            return confirmSignIn(MfaType.totp.name);
        }
      }
      throw StateError('Cannot handle any MFA type: $allowedTypes');
    case 'CONFIRM_SIGN_IN_WITH_TOTP_MFA_CODE':
      final totpSecretCode = nextStep!.totpSecretCode;
      var message = 'Enter an MFA code: ';
      if (totpSecretCode != null) {
        stdout
          ..writeln('Scan the QR code with an authenticator app:')
          ..writeln(totpSecretCode.qrImage.renderConsoleText())
          ..writeln();
        message = 'Enter an MFA code to confirm registration: ';
      }
      final code = prompt(message);
      return confirmSignIn(code);
    default:
      throw StateError('Unhandled case: $signInStep');
  }
}

String prompt(String prompt) {
  String? value;
  while (value == null || value.isEmpty) {
    stdout.write(prompt);
    value = stdin.readLineSync(encoding: utf8);
  }
  return value;
}
