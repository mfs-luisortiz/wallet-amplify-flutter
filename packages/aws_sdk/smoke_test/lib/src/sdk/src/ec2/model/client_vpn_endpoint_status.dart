// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.client_vpn_endpoint_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/client_vpn_endpoint_status_code.dart'
    as _i2;

part 'client_vpn_endpoint_status.g.dart';

/// Describes the state of a Client VPN endpoint.
abstract class ClientVpnEndpointStatus
    with _i1.AWSEquatable<ClientVpnEndpointStatus>
    implements Built<ClientVpnEndpointStatus, ClientVpnEndpointStatusBuilder> {
  /// Describes the state of a Client VPN endpoint.
  factory ClientVpnEndpointStatus({
    _i2.ClientVpnEndpointStatusCode? code,
    String? message,
  }) {
    return _$ClientVpnEndpointStatus._(
      code: code,
      message: message,
    );
  }

  /// Describes the state of a Client VPN endpoint.
  factory ClientVpnEndpointStatus.build(
          [void Function(ClientVpnEndpointStatusBuilder) updates]) =
      _$ClientVpnEndpointStatus;

  const ClientVpnEndpointStatus._();

  static const List<_i3.SmithySerializer> serializers = [
    ClientVpnEndpointStatusEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ClientVpnEndpointStatusBuilder b) {}

  /// The state of the Client VPN endpoint. Possible states include:
  ///
  /// *   `pending-associate` \- The Client VPN endpoint has been created but no target networks have been associated. The Client VPN endpoint cannot accept connections.
  ///
  /// *   `available` \- The Client VPN endpoint has been created and a target network has been associated. The Client VPN endpoint can accept connections.
  ///
  /// *   `deleting` \- The Client VPN endpoint is being deleted. The Client VPN endpoint cannot accept connections.
  ///
  /// *   `deleted` \- The Client VPN endpoint has been deleted. The Client VPN endpoint cannot accept connections.
  _i2.ClientVpnEndpointStatusCode? get code;

  /// A message about the status of the Client VPN endpoint.
  String? get message;
  @override
  List<Object?> get props => [
        code,
        message,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ClientVpnEndpointStatus');
    helper.add(
      'code',
      code,
    );
    helper.add(
      'message',
      message,
    );
    return helper.toString();
  }
}

class ClientVpnEndpointStatusEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<ClientVpnEndpointStatus> {
  const ClientVpnEndpointStatusEc2QuerySerializer()
      : super('ClientVpnEndpointStatus');

  @override
  Iterable<Type> get types => const [
        ClientVpnEndpointStatus,
        _$ClientVpnEndpointStatus,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ClientVpnEndpointStatus deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ClientVpnEndpointStatusBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'code':
          result.code = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.ClientVpnEndpointStatusCode),
          ) as _i2.ClientVpnEndpointStatusCode);
        case 'message':
          result.message = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ClientVpnEndpointStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'ClientVpnEndpointStatusResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ClientVpnEndpointStatus(:code, :message) = object;
    if (code != null) {
      result$
        ..add(const _i3.XmlElementName('Code'))
        ..add(serializers.serialize(
          code,
          specifiedType:
              const FullType.nullable(_i2.ClientVpnEndpointStatusCode),
        ));
    }
    if (message != null) {
      result$
        ..add(const _i3.XmlElementName('Message'))
        ..add(serializers.serialize(
          message,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
