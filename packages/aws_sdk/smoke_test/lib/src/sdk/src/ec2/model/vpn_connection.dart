// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.vpn_connection; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i9;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i10;
import 'package:smoke_test/src/sdk/src/ec2/model/gateway_association_state.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/gateway_type.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i7;
import 'package:smoke_test/src/sdk/src/ec2/model/vgw_telemetry.dart' as _i8;
import 'package:smoke_test/src/sdk/src/ec2/model/vpn_connection_options.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/vpn_state.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/vpn_static_route.dart' as _i6;

part 'vpn_connection.g.dart';

/// Describes a VPN connection.
abstract class VpnConnection
    with _i1.AWSEquatable<VpnConnection>
    implements Built<VpnConnection, VpnConnectionBuilder> {
  /// Describes a VPN connection.
  factory VpnConnection({
    String? customerGatewayConfiguration,
    String? customerGatewayId,
    String? category,
    _i2.VpnState? state,
    _i3.GatewayType? type,
    String? vpnConnectionId,
    String? vpnGatewayId,
    String? transitGatewayId,
    String? coreNetworkArn,
    String? coreNetworkAttachmentArn,
    _i4.GatewayAssociationState? gatewayAssociationState,
    _i5.VpnConnectionOptions? options,
    List<_i6.VpnStaticRoute>? routes,
    List<_i7.Tag>? tags,
    List<_i8.VgwTelemetry>? vgwTelemetry,
  }) {
    return _$VpnConnection._(
      customerGatewayConfiguration: customerGatewayConfiguration,
      customerGatewayId: customerGatewayId,
      category: category,
      state: state,
      type: type,
      vpnConnectionId: vpnConnectionId,
      vpnGatewayId: vpnGatewayId,
      transitGatewayId: transitGatewayId,
      coreNetworkArn: coreNetworkArn,
      coreNetworkAttachmentArn: coreNetworkAttachmentArn,
      gatewayAssociationState: gatewayAssociationState,
      options: options,
      routes: routes == null ? null : _i9.BuiltList(routes),
      tags: tags == null ? null : _i9.BuiltList(tags),
      vgwTelemetry: vgwTelemetry == null ? null : _i9.BuiltList(vgwTelemetry),
    );
  }

  /// Describes a VPN connection.
  factory VpnConnection.build([void Function(VpnConnectionBuilder) updates]) =
      _$VpnConnection;

  const VpnConnection._();

  static const List<_i10.SmithySerializer> serializers = [
    VpnConnectionEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(VpnConnectionBuilder b) {}

  /// The configuration information for the VPN connection's customer gateway (in the native XML format). This element is always present in the CreateVpnConnection response; however, it's present in the DescribeVpnConnections response only if the VPN connection is in the `pending` or `available` state.
  String? get customerGatewayConfiguration;

  /// The ID of the customer gateway at your end of the VPN connection.
  String? get customerGatewayId;

  /// The category of the VPN connection. A value of `VPN` indicates an Amazon Web Services VPN connection. A value of `VPN-Classic` indicates an Amazon Web Services Classic VPN connection.
  String? get category;

  /// The current state of the VPN connection.
  _i2.VpnState? get state;

  /// The type of VPN connection.
  _i3.GatewayType? get type;

  /// The ID of the VPN connection.
  String? get vpnConnectionId;

  /// The ID of the virtual private gateway at the Amazon Web Services side of the VPN connection.
  String? get vpnGatewayId;

  /// The ID of the transit gateway associated with the VPN connection.
  String? get transitGatewayId;

  /// The ARN of the core network.
  String? get coreNetworkArn;

  /// The ARN of the core network attachment.
  String? get coreNetworkAttachmentArn;

  /// The current state of the gateway association.
  _i4.GatewayAssociationState? get gatewayAssociationState;

  /// The VPN connection options.
  _i5.VpnConnectionOptions? get options;

  /// The static routes associated with the VPN connection.
  _i9.BuiltList<_i6.VpnStaticRoute>? get routes;

  /// Any tags assigned to the VPN connection.
  _i9.BuiltList<_i7.Tag>? get tags;

  /// Information about the VPN tunnel.
  _i9.BuiltList<_i8.VgwTelemetry>? get vgwTelemetry;
  @override
  List<Object?> get props => [
        customerGatewayConfiguration,
        customerGatewayId,
        category,
        state,
        type,
        vpnConnectionId,
        vpnGatewayId,
        transitGatewayId,
        coreNetworkArn,
        coreNetworkAttachmentArn,
        gatewayAssociationState,
        options,
        routes,
        tags,
        vgwTelemetry,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('VpnConnection');
    helper.add(
      'customerGatewayConfiguration',
      customerGatewayConfiguration,
    );
    helper.add(
      'customerGatewayId',
      customerGatewayId,
    );
    helper.add(
      'category',
      category,
    );
    helper.add(
      'state',
      state,
    );
    helper.add(
      'type',
      type,
    );
    helper.add(
      'vpnConnectionId',
      vpnConnectionId,
    );
    helper.add(
      'vpnGatewayId',
      vpnGatewayId,
    );
    helper.add(
      'transitGatewayId',
      transitGatewayId,
    );
    helper.add(
      'coreNetworkArn',
      coreNetworkArn,
    );
    helper.add(
      'coreNetworkAttachmentArn',
      coreNetworkAttachmentArn,
    );
    helper.add(
      'gatewayAssociationState',
      gatewayAssociationState,
    );
    helper.add(
      'options',
      options,
    );
    helper.add(
      'routes',
      routes,
    );
    helper.add(
      'tags',
      tags,
    );
    helper.add(
      'vgwTelemetry',
      vgwTelemetry,
    );
    return helper.toString();
  }
}

class VpnConnectionEc2QuerySerializer
    extends _i10.StructuredSmithySerializer<VpnConnection> {
  const VpnConnectionEc2QuerySerializer() : super('VpnConnection');

  @override
  Iterable<Type> get types => const [
        VpnConnection,
        _$VpnConnection,
      ];
  @override
  Iterable<_i10.ShapeId> get supportedProtocols => const [
        _i10.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  VpnConnection deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VpnConnectionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'customerGatewayConfiguration':
          result.customerGatewayConfiguration = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'customerGatewayId':
          result.customerGatewayId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'category':
          result.category = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'state':
          result.state = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.VpnState),
          ) as _i2.VpnState);
        case 'type':
          result.type = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.GatewayType),
          ) as _i3.GatewayType);
        case 'vpnConnectionId':
          result.vpnConnectionId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'vpnGatewayId':
          result.vpnGatewayId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'transitGatewayId':
          result.transitGatewayId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'coreNetworkArn':
          result.coreNetworkArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'coreNetworkAttachmentArn':
          result.coreNetworkAttachmentArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'gatewayAssociationState':
          result.gatewayAssociationState = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.GatewayAssociationState),
          ) as _i4.GatewayAssociationState);
        case 'options':
          result.options.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i5.VpnConnectionOptions),
          ) as _i5.VpnConnectionOptions));
        case 'routes':
          result.routes.replace((const _i10.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i10.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i9.BuiltList,
              [FullType(_i6.VpnStaticRoute)],
            ),
          ) as _i9.BuiltList<_i6.VpnStaticRoute>));
        case 'tagSet':
          result.tags.replace((const _i10.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i10.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i9.BuiltList,
              [FullType(_i7.Tag)],
            ),
          ) as _i9.BuiltList<_i7.Tag>));
        case 'vgwTelemetry':
          result.vgwTelemetry.replace((const _i10.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i10.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i9.BuiltList,
              [FullType(_i8.VgwTelemetry)],
            ),
          ) as _i9.BuiltList<_i8.VgwTelemetry>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    VpnConnection object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i10.XmlElementName(
        'VpnConnectionResponse',
        _i10.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final VpnConnection(
      :customerGatewayConfiguration,
      :customerGatewayId,
      :category,
      :state,
      :type,
      :vpnConnectionId,
      :vpnGatewayId,
      :transitGatewayId,
      :coreNetworkArn,
      :coreNetworkAttachmentArn,
      :gatewayAssociationState,
      :options,
      :routes,
      :tags,
      :vgwTelemetry
    ) = object;
    if (customerGatewayConfiguration != null) {
      result$
        ..add(const _i10.XmlElementName('CustomerGatewayConfiguration'))
        ..add(serializers.serialize(
          customerGatewayConfiguration,
          specifiedType: const FullType(String),
        ));
    }
    if (customerGatewayId != null) {
      result$
        ..add(const _i10.XmlElementName('CustomerGatewayId'))
        ..add(serializers.serialize(
          customerGatewayId,
          specifiedType: const FullType(String),
        ));
    }
    if (category != null) {
      result$
        ..add(const _i10.XmlElementName('Category'))
        ..add(serializers.serialize(
          category,
          specifiedType: const FullType(String),
        ));
    }
    if (state != null) {
      result$
        ..add(const _i10.XmlElementName('State'))
        ..add(serializers.serialize(
          state,
          specifiedType: const FullType.nullable(_i2.VpnState),
        ));
    }
    if (type != null) {
      result$
        ..add(const _i10.XmlElementName('Type'))
        ..add(serializers.serialize(
          type,
          specifiedType: const FullType.nullable(_i3.GatewayType),
        ));
    }
    if (vpnConnectionId != null) {
      result$
        ..add(const _i10.XmlElementName('VpnConnectionId'))
        ..add(serializers.serialize(
          vpnConnectionId,
          specifiedType: const FullType(String),
        ));
    }
    if (vpnGatewayId != null) {
      result$
        ..add(const _i10.XmlElementName('VpnGatewayId'))
        ..add(serializers.serialize(
          vpnGatewayId,
          specifiedType: const FullType(String),
        ));
    }
    if (transitGatewayId != null) {
      result$
        ..add(const _i10.XmlElementName('TransitGatewayId'))
        ..add(serializers.serialize(
          transitGatewayId,
          specifiedType: const FullType(String),
        ));
    }
    if (coreNetworkArn != null) {
      result$
        ..add(const _i10.XmlElementName('CoreNetworkArn'))
        ..add(serializers.serialize(
          coreNetworkArn,
          specifiedType: const FullType(String),
        ));
    }
    if (coreNetworkAttachmentArn != null) {
      result$
        ..add(const _i10.XmlElementName('CoreNetworkAttachmentArn'))
        ..add(serializers.serialize(
          coreNetworkAttachmentArn,
          specifiedType: const FullType(String),
        ));
    }
    if (gatewayAssociationState != null) {
      result$
        ..add(const _i10.XmlElementName('GatewayAssociationState'))
        ..add(serializers.serialize(
          gatewayAssociationState,
          specifiedType: const FullType.nullable(_i4.GatewayAssociationState),
        ));
    }
    if (options != null) {
      result$
        ..add(const _i10.XmlElementName('Options'))
        ..add(serializers.serialize(
          options,
          specifiedType: const FullType(_i5.VpnConnectionOptions),
        ));
    }
    if (routes != null) {
      result$
        ..add(const _i10.XmlElementName('Routes'))
        ..add(const _i10.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i10.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          routes,
          specifiedType: const FullType.nullable(
            _i9.BuiltList,
            [FullType(_i6.VpnStaticRoute)],
          ),
        ));
    }
    if (tags != null) {
      result$
        ..add(const _i10.XmlElementName('TagSet'))
        ..add(const _i10.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i10.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          tags,
          specifiedType: const FullType.nullable(
            _i9.BuiltList,
            [FullType(_i7.Tag)],
          ),
        ));
    }
    if (vgwTelemetry != null) {
      result$
        ..add(const _i10.XmlElementName('VgwTelemetry'))
        ..add(const _i10.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i10.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          vgwTelemetry,
          specifiedType: const FullType.nullable(
            _i9.BuiltList,
            [FullType(_i8.VgwTelemetry)],
          ),
        ));
    }
    return result$;
  }
}
