// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.terminate_connection_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/client_vpn_connection_status.dart'
    as _i2;

part 'terminate_connection_status.g.dart';

/// Information about a terminated Client VPN endpoint client connection.
abstract class TerminateConnectionStatus
    with _i1.AWSEquatable<TerminateConnectionStatus>
    implements
        Built<TerminateConnectionStatus, TerminateConnectionStatusBuilder> {
  /// Information about a terminated Client VPN endpoint client connection.
  factory TerminateConnectionStatus({
    String? connectionId,
    _i2.ClientVpnConnectionStatus? previousStatus,
    _i2.ClientVpnConnectionStatus? currentStatus,
  }) {
    return _$TerminateConnectionStatus._(
      connectionId: connectionId,
      previousStatus: previousStatus,
      currentStatus: currentStatus,
    );
  }

  /// Information about a terminated Client VPN endpoint client connection.
  factory TerminateConnectionStatus.build(
          [void Function(TerminateConnectionStatusBuilder) updates]) =
      _$TerminateConnectionStatus;

  const TerminateConnectionStatus._();

  static const List<_i3.SmithySerializer> serializers = [
    TerminateConnectionStatusEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TerminateConnectionStatusBuilder b) {}

  /// The ID of the client connection.
  String? get connectionId;

  /// The state of the client connection.
  _i2.ClientVpnConnectionStatus? get previousStatus;

  /// A message about the status of the client connection, if applicable.
  _i2.ClientVpnConnectionStatus? get currentStatus;
  @override
  List<Object?> get props => [
        connectionId,
        previousStatus,
        currentStatus,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TerminateConnectionStatus');
    helper.add(
      'connectionId',
      connectionId,
    );
    helper.add(
      'previousStatus',
      previousStatus,
    );
    helper.add(
      'currentStatus',
      currentStatus,
    );
    return helper.toString();
  }
}

class TerminateConnectionStatusEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<TerminateConnectionStatus> {
  const TerminateConnectionStatusEc2QuerySerializer()
      : super('TerminateConnectionStatus');

  @override
  Iterable<Type> get types => const [
        TerminateConnectionStatus,
        _$TerminateConnectionStatus,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TerminateConnectionStatus deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TerminateConnectionStatusBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'connectionId':
          result.connectionId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'previousStatus':
          result.previousStatus.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.ClientVpnConnectionStatus),
          ) as _i2.ClientVpnConnectionStatus));
        case 'currentStatus':
          result.currentStatus.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.ClientVpnConnectionStatus),
          ) as _i2.ClientVpnConnectionStatus));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    TerminateConnectionStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'TerminateConnectionStatusResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final TerminateConnectionStatus(
      :connectionId,
      :previousStatus,
      :currentStatus
    ) = object;
    if (connectionId != null) {
      result$
        ..add(const _i3.XmlElementName('ConnectionId'))
        ..add(serializers.serialize(
          connectionId,
          specifiedType: const FullType(String),
        ));
    }
    if (previousStatus != null) {
      result$
        ..add(const _i3.XmlElementName('PreviousStatus'))
        ..add(serializers.serialize(
          previousStatus,
          specifiedType: const FullType(_i2.ClientVpnConnectionStatus),
        ));
    }
    if (currentStatus != null) {
      result$
        ..add(const _i3.XmlElementName('CurrentStatus'))
        ..add(serializers.serialize(
          currentStatus,
          specifiedType: const FullType(_i2.ClientVpnConnectionStatus),
        ));
    }
    return result$;
  }
}
