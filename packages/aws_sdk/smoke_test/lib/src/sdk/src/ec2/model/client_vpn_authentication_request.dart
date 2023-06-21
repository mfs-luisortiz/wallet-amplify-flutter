// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.client_vpn_authentication_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i6;
import 'package:smoke_test/src/sdk/src/ec2/model/certificate_authentication_request.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/client_vpn_authentication_type.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/directory_service_authentication_request.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/federated_authentication_request.dart'
    as _i5;

part 'client_vpn_authentication_request.g.dart';

/// Describes the authentication method to be used by a Client VPN endpoint. For more information, see [Authentication](https://docs.aws.amazon.com/vpn/latest/clientvpn-admin/authentication-authrization.html#client-authentication) in the _Client VPN Administrator Guide_.
abstract class ClientVpnAuthenticationRequest
    with
        _i1.AWSEquatable<ClientVpnAuthenticationRequest>
    implements
        Built<ClientVpnAuthenticationRequest,
            ClientVpnAuthenticationRequestBuilder> {
  /// Describes the authentication method to be used by a Client VPN endpoint. For more information, see [Authentication](https://docs.aws.amazon.com/vpn/latest/clientvpn-admin/authentication-authrization.html#client-authentication) in the _Client VPN Administrator Guide_.
  factory ClientVpnAuthenticationRequest({
    _i2.ClientVpnAuthenticationType? type,
    _i3.DirectoryServiceAuthenticationRequest? activeDirectory,
    _i4.CertificateAuthenticationRequest? mutualAuthentication,
    _i5.FederatedAuthenticationRequest? federatedAuthentication,
  }) {
    return _$ClientVpnAuthenticationRequest._(
      type: type,
      activeDirectory: activeDirectory,
      mutualAuthentication: mutualAuthentication,
      federatedAuthentication: federatedAuthentication,
    );
  }

  /// Describes the authentication method to be used by a Client VPN endpoint. For more information, see [Authentication](https://docs.aws.amazon.com/vpn/latest/clientvpn-admin/authentication-authrization.html#client-authentication) in the _Client VPN Administrator Guide_.
  factory ClientVpnAuthenticationRequest.build(
          [void Function(ClientVpnAuthenticationRequestBuilder) updates]) =
      _$ClientVpnAuthenticationRequest;

  const ClientVpnAuthenticationRequest._();

  static const List<_i6.SmithySerializer> serializers = [
    ClientVpnAuthenticationRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ClientVpnAuthenticationRequestBuilder b) {}

  /// The type of client authentication to be used.
  _i2.ClientVpnAuthenticationType? get type;

  /// Information about the Active Directory to be used, if applicable. You must provide this information if **Type** is `directory-service-authentication`.
  _i3.DirectoryServiceAuthenticationRequest? get activeDirectory;

  /// Information about the authentication certificates to be used, if applicable. You must provide this information if **Type** is `certificate-authentication`.
  _i4.CertificateAuthenticationRequest? get mutualAuthentication;

  /// Information about the IAM SAML identity provider to be used, if applicable. You must provide this information if **Type** is `federated-authentication`.
  _i5.FederatedAuthenticationRequest? get federatedAuthentication;
  @override
  List<Object?> get props => [
        type,
        activeDirectory,
        mutualAuthentication,
        federatedAuthentication,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ClientVpnAuthenticationRequest');
    helper.add(
      'type',
      type,
    );
    helper.add(
      'activeDirectory',
      activeDirectory,
    );
    helper.add(
      'mutualAuthentication',
      mutualAuthentication,
    );
    helper.add(
      'federatedAuthentication',
      federatedAuthentication,
    );
    return helper.toString();
  }
}

class ClientVpnAuthenticationRequestEc2QuerySerializer
    extends _i6.StructuredSmithySerializer<ClientVpnAuthenticationRequest> {
  const ClientVpnAuthenticationRequestEc2QuerySerializer()
      : super('ClientVpnAuthenticationRequest');

  @override
  Iterable<Type> get types => const [
        ClientVpnAuthenticationRequest,
        _$ClientVpnAuthenticationRequest,
      ];
  @override
  Iterable<_i6.ShapeId> get supportedProtocols => const [
        _i6.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ClientVpnAuthenticationRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ClientVpnAuthenticationRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Type':
          result.type = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.ClientVpnAuthenticationType),
          ) as _i2.ClientVpnAuthenticationType);
        case 'ActiveDirectory':
          result.activeDirectory.replace((serializers.deserialize(
            value,
            specifiedType:
                const FullType(_i3.DirectoryServiceAuthenticationRequest),
          ) as _i3.DirectoryServiceAuthenticationRequest));
        case 'MutualAuthentication':
          result.mutualAuthentication.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.CertificateAuthenticationRequest),
          ) as _i4.CertificateAuthenticationRequest));
        case 'FederatedAuthentication':
          result.federatedAuthentication.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i5.FederatedAuthenticationRequest),
          ) as _i5.FederatedAuthenticationRequest));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ClientVpnAuthenticationRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i6.XmlElementName(
        'ClientVpnAuthenticationRequestResponse',
        _i6.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ClientVpnAuthenticationRequest(
      :type,
      :activeDirectory,
      :mutualAuthentication,
      :federatedAuthentication
    ) = object;
    if (type != null) {
      result$
        ..add(const _i6.XmlElementName('Type'))
        ..add(serializers.serialize(
          type,
          specifiedType:
              const FullType.nullable(_i2.ClientVpnAuthenticationType),
        ));
    }
    if (activeDirectory != null) {
      result$
        ..add(const _i6.XmlElementName('ActiveDirectory'))
        ..add(serializers.serialize(
          activeDirectory,
          specifiedType:
              const FullType(_i3.DirectoryServiceAuthenticationRequest),
        ));
    }
    if (mutualAuthentication != null) {
      result$
        ..add(const _i6.XmlElementName('MutualAuthentication'))
        ..add(serializers.serialize(
          mutualAuthentication,
          specifiedType: const FullType(_i4.CertificateAuthenticationRequest),
        ));
    }
    if (federatedAuthentication != null) {
      result$
        ..add(const _i6.XmlElementName('FederatedAuthentication'))
        ..add(serializers.serialize(
          federatedAuthentication,
          specifiedType: const FullType(_i5.FederatedAuthenticationRequest),
        ));
    }
    return result$;
  }
}
