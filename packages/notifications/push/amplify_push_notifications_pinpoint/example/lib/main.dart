import 'dart:async';

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_push_notifications_pinpoint/amplify_push_notifications_pinpoint.dart';
import 'package:flutter/material.dart';

import 'amplifyconfiguration.dart';

void main() {
  AmplifyLogger().logLevel = LogLevel.info;
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isConfigured = false;
  bool isForegroundListernerInitialized = false;
  PushNotificationMessage? foregroundMessage;
  PushNotificationPermissionRequestStatus? getPermissionStatus;
  bool? requestPermissionsResult;

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> _configureAmplify() async {
    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;
    try {
      final notificationsPlugin = AmplifyPushNotificationsPinpoint();
      final authPlugin = AmplifyAuthCognito();

      await Amplify.addPlugins([authPlugin, notificationsPlugin]);
      if (!Amplify.isConfigured) await Amplify.configure(amplifyconfig);
      setState(() {
        isConfigured = true;
      });
    } on Exception catch (e) {
      safePrint(e.toString());
    }
  }

  Widget headerText(String title) => Padding(
        padding: const EdgeInsets.only(top: 16),
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Amplify Push Notifications Pinpoint Example'),
        ),
        body: Center(
          child: ListView(
            children: [
              const Divider(
                height: 20,
              ),
              headerText('Configuration APIs'),
              ElevatedButton(
                onPressed: () async {
                  await _configureAmplify();
                },
                child: const Text('configure'),
              ),
              if (isConfigured)
                const Text('Push notification plugin has been configured'),
              const Divider(
                height: 20,
              ),
              headerText('Permissions APIs'),
              ElevatedButton(
                onPressed: () async {
                  final status =
                      await Amplify.Notifications.Push.getPermissionStatus();
                  setState(() {
                    getPermissionStatus = status;
                  });
                },
                child: const Text('getPermissionStatus'),
              ),
              if (getPermissionStatus != null)
                Text('Perimission status: $getPermissionStatus'),
              ElevatedButton(
                onPressed: () async {
                  final result =
                      await Amplify.Notifications.Push.requestPermissions();
                  setState(() {
                    requestPermissionsResult = result;
                  });
                },
                child: const Text('requestPermissions'),
              ),
              if (requestPermissionsResult != null)
                Text(
                  'Requesting Perimission result: $requestPermissionsResult',
                ),
              const Divider(
                height: 20,
              ),
              headerText('Notification Handling APIs'),
              ElevatedButton(
                onPressed: () async {
                  try {
                    final foregroundStream = Amplify
                        .Notifications.Push.onNotificationReceivedInForeground;
                    foregroundStream.listen((event) {
                      setState(() {
                        foregroundMessage = event;
                      });
                    });
                    setState(() {
                      isForegroundListernerInitialized = true;
                    });
                  } on Exception {
                    // print(e.toString());
                  }
                },
                child: const Text('onForegroundNotificationReceived'),
              ),
              if (isForegroundListernerInitialized)
                const Text('Foreground event listener initialized!'),
              ListTile(
                title: Text(
                  foregroundMessage == null
                      ? 'No foreground message yet'
                      : "Title: ${foregroundMessage!.title?.toString() ?? ""}",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
