// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.terminate_client_vpn_connections_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/terminate_connection_status.dart'
    as _i2;

part 'terminate_client_vpn_connections_result.g.dart';

abstract class TerminateClientVpnConnectionsResult
    with
        _i1.AWSEquatable<TerminateClientVpnConnectionsResult>
    implements
        Built<TerminateClientVpnConnectionsResult,
            TerminateClientVpnConnectionsResultBuilder> {
  factory TerminateClientVpnConnectionsResult({
    String? clientVpnEndpointId,
    String? username,
    List<_i2.TerminateConnectionStatus>? connectionStatuses,
  }) {
    return _$TerminateClientVpnConnectionsResult._(
      clientVpnEndpointId: clientVpnEndpointId,
      username: username,
      connectionStatuses:
          connectionStatuses == null ? null : _i3.BuiltList(connectionStatuses),
    );
  }

  factory TerminateClientVpnConnectionsResult.build(
          [void Function(TerminateClientVpnConnectionsResultBuilder) updates]) =
      _$TerminateClientVpnConnectionsResult;

  const TerminateClientVpnConnectionsResult._();

  /// Constructs a [TerminateClientVpnConnectionsResult] from a [payload] and [response].
  factory TerminateClientVpnConnectionsResult.fromResponse(
    TerminateClientVpnConnectionsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    TerminateClientVpnConnectionsResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TerminateClientVpnConnectionsResultBuilder b) {}

  /// The ID of the Client VPN endpoint.
  String? get clientVpnEndpointId;

  /// The user who established the terminated client connections.
  String? get username;

  /// The current state of the client connections.
  _i3.BuiltList<_i2.TerminateConnectionStatus>? get connectionStatuses;
  @override
  List<Object?> get props => [
        clientVpnEndpointId,
        username,
        connectionStatuses,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('TerminateClientVpnConnectionsResult');
    helper.add(
      'clientVpnEndpointId',
      clientVpnEndpointId,
    );
    helper.add(
      'username',
      username,
    );
    helper.add(
      'connectionStatuses',
      connectionStatuses,
    );
    return helper.toString();
  }
}

class TerminateClientVpnConnectionsResultEc2QuerySerializer extends _i4
    .StructuredSmithySerializer<TerminateClientVpnConnectionsResult> {
  const TerminateClientVpnConnectionsResultEc2QuerySerializer()
      : super('TerminateClientVpnConnectionsResult');

  @override
  Iterable<Type> get types => const [
        TerminateClientVpnConnectionsResult,
        _$TerminateClientVpnConnectionsResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TerminateClientVpnConnectionsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TerminateClientVpnConnectionsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'clientVpnEndpointId':
          result.clientVpnEndpointId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'username':
          result.username = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'connectionStatuses':
          result.connectionStatuses.replace((const _i4.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i4.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(_i2.TerminateConnectionStatus)],
            ),
          ) as _i3.BuiltList<_i2.TerminateConnectionStatus>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    TerminateClientVpnConnectionsResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i4.XmlElementName(
        'TerminateClientVpnConnectionsResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final TerminateClientVpnConnectionsResult(
      :clientVpnEndpointId,
      :username,
      :connectionStatuses
    ) = object;
    if (clientVpnEndpointId != null) {
      result$
        ..add(const _i4.XmlElementName('ClientVpnEndpointId'))
        ..add(serializers.serialize(
          clientVpnEndpointId,
          specifiedType: const FullType(String),
        ));
    }
    if (username != null) {
      result$
        ..add(const _i4.XmlElementName('Username'))
        ..add(serializers.serialize(
          username,
          specifiedType: const FullType(String),
        ));
    }
    if (connectionStatuses != null) {
      result$
        ..add(const _i4.XmlElementName('ConnectionStatuses'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          connectionStatuses,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.TerminateConnectionStatus)],
          ),
        ));
    }
    return result$;
  }
}
