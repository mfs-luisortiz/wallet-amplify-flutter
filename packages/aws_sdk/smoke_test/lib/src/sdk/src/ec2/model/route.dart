// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.route; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/route_origin.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/route_state.dart' as _i3;

part 'route.g.dart';

/// Describes a route in a route table.
abstract class Route
    with _i1.AWSEquatable<Route>
    implements Built<Route, RouteBuilder> {
  /// Describes a route in a route table.
  factory Route({
    String? destinationCidrBlock,
    String? destinationIpv6CidrBlock,
    String? destinationPrefixListId,
    String? egressOnlyInternetGatewayId,
    String? gatewayId,
    String? instanceId,
    String? instanceOwnerId,
    String? natGatewayId,
    String? transitGatewayId,
    String? localGatewayId,
    String? carrierGatewayId,
    String? networkInterfaceId,
    _i2.RouteOrigin? origin,
    _i3.RouteState? state,
    String? vpcPeeringConnectionId,
    String? coreNetworkArn,
  }) {
    return _$Route._(
      destinationCidrBlock: destinationCidrBlock,
      destinationIpv6CidrBlock: destinationIpv6CidrBlock,
      destinationPrefixListId: destinationPrefixListId,
      egressOnlyInternetGatewayId: egressOnlyInternetGatewayId,
      gatewayId: gatewayId,
      instanceId: instanceId,
      instanceOwnerId: instanceOwnerId,
      natGatewayId: natGatewayId,
      transitGatewayId: transitGatewayId,
      localGatewayId: localGatewayId,
      carrierGatewayId: carrierGatewayId,
      networkInterfaceId: networkInterfaceId,
      origin: origin,
      state: state,
      vpcPeeringConnectionId: vpcPeeringConnectionId,
      coreNetworkArn: coreNetworkArn,
    );
  }

  /// Describes a route in a route table.
  factory Route.build([void Function(RouteBuilder) updates]) = _$Route;

  const Route._();

  static const List<_i4.SmithySerializer> serializers = [
    RouteEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RouteBuilder b) {}

  /// The IPv4 CIDR block used for the destination match.
  String? get destinationCidrBlock;

  /// The IPv6 CIDR block used for the destination match.
  String? get destinationIpv6CidrBlock;

  /// The prefix of the Amazon Web Service.
  String? get destinationPrefixListId;

  /// The ID of the egress-only internet gateway.
  String? get egressOnlyInternetGatewayId;

  /// The ID of a gateway attached to your VPC.
  String? get gatewayId;

  /// The ID of a NAT instance in your VPC.
  String? get instanceId;

  /// The ID of Amazon Web Services account that owns the instance.
  String? get instanceOwnerId;

  /// The ID of a NAT gateway.
  String? get natGatewayId;

  /// The ID of a transit gateway.
  String? get transitGatewayId;

  /// The ID of the local gateway.
  String? get localGatewayId;

  /// The ID of the carrier gateway.
  String? get carrierGatewayId;

  /// The ID of the network interface.
  String? get networkInterfaceId;

  /// Describes how the route was created.
  ///
  /// *   `CreateRouteTable` \- The route was automatically created when the route table was created.
  ///
  /// *   `CreateRoute` \- The route was manually added to the route table.
  ///
  /// *   `EnableVgwRoutePropagation` \- The route was propagated by route propagation.
  _i2.RouteOrigin? get origin;

  /// The state of the route. The `blackhole` state indicates that the route's target isn't available (for example, the specified gateway isn't attached to the VPC, or the specified NAT instance has been terminated).
  _i3.RouteState? get state;

  /// The ID of a VPC peering connection.
  String? get vpcPeeringConnectionId;

  /// The Amazon Resource Name (ARN) of the core network.
  String? get coreNetworkArn;
  @override
  List<Object?> get props => [
        destinationCidrBlock,
        destinationIpv6CidrBlock,
        destinationPrefixListId,
        egressOnlyInternetGatewayId,
        gatewayId,
        instanceId,
        instanceOwnerId,
        natGatewayId,
        transitGatewayId,
        localGatewayId,
        carrierGatewayId,
        networkInterfaceId,
        origin,
        state,
        vpcPeeringConnectionId,
        coreNetworkArn,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Route');
    helper.add(
      'destinationCidrBlock',
      destinationCidrBlock,
    );
    helper.add(
      'destinationIpv6CidrBlock',
      destinationIpv6CidrBlock,
    );
    helper.add(
      'destinationPrefixListId',
      destinationPrefixListId,
    );
    helper.add(
      'egressOnlyInternetGatewayId',
      egressOnlyInternetGatewayId,
    );
    helper.add(
      'gatewayId',
      gatewayId,
    );
    helper.add(
      'instanceId',
      instanceId,
    );
    helper.add(
      'instanceOwnerId',
      instanceOwnerId,
    );
    helper.add(
      'natGatewayId',
      natGatewayId,
    );
    helper.add(
      'transitGatewayId',
      transitGatewayId,
    );
    helper.add(
      'localGatewayId',
      localGatewayId,
    );
    helper.add(
      'carrierGatewayId',
      carrierGatewayId,
    );
    helper.add(
      'networkInterfaceId',
      networkInterfaceId,
    );
    helper.add(
      'origin',
      origin,
    );
    helper.add(
      'state',
      state,
    );
    helper.add(
      'vpcPeeringConnectionId',
      vpcPeeringConnectionId,
    );
    helper.add(
      'coreNetworkArn',
      coreNetworkArn,
    );
    return helper.toString();
  }
}

class RouteEc2QuerySerializer extends _i4.StructuredSmithySerializer<Route> {
  const RouteEc2QuerySerializer() : super('Route');

  @override
  Iterable<Type> get types => const [
        Route,
        _$Route,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  Route deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RouteBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'destinationCidrBlock':
          result.destinationCidrBlock = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'destinationIpv6CidrBlock':
          result.destinationIpv6CidrBlock = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'destinationPrefixListId':
          result.destinationPrefixListId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'egressOnlyInternetGatewayId':
          result.egressOnlyInternetGatewayId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'gatewayId':
          result.gatewayId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'instanceId':
          result.instanceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'instanceOwnerId':
          result.instanceOwnerId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'natGatewayId':
          result.natGatewayId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'transitGatewayId':
          result.transitGatewayId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'localGatewayId':
          result.localGatewayId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'carrierGatewayId':
          result.carrierGatewayId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'networkInterfaceId':
          result.networkInterfaceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'origin':
          result.origin = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.RouteOrigin),
          ) as _i2.RouteOrigin);
        case 'state':
          result.state = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.RouteState),
          ) as _i3.RouteState);
        case 'vpcPeeringConnectionId':
          result.vpcPeeringConnectionId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'coreNetworkArn':
          result.coreNetworkArn = (serializers.deserialize(
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
    Route object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i4.XmlElementName(
        'RouteResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final Route(
      :destinationCidrBlock,
      :destinationIpv6CidrBlock,
      :destinationPrefixListId,
      :egressOnlyInternetGatewayId,
      :gatewayId,
      :instanceId,
      :instanceOwnerId,
      :natGatewayId,
      :transitGatewayId,
      :localGatewayId,
      :carrierGatewayId,
      :networkInterfaceId,
      :origin,
      :state,
      :vpcPeeringConnectionId,
      :coreNetworkArn
    ) = object;
    if (destinationCidrBlock != null) {
      result$
        ..add(const _i4.XmlElementName('DestinationCidrBlock'))
        ..add(serializers.serialize(
          destinationCidrBlock,
          specifiedType: const FullType(String),
        ));
    }
    if (destinationIpv6CidrBlock != null) {
      result$
        ..add(const _i4.XmlElementName('DestinationIpv6CidrBlock'))
        ..add(serializers.serialize(
          destinationIpv6CidrBlock,
          specifiedType: const FullType(String),
        ));
    }
    if (destinationPrefixListId != null) {
      result$
        ..add(const _i4.XmlElementName('DestinationPrefixListId'))
        ..add(serializers.serialize(
          destinationPrefixListId,
          specifiedType: const FullType(String),
        ));
    }
    if (egressOnlyInternetGatewayId != null) {
      result$
        ..add(const _i4.XmlElementName('EgressOnlyInternetGatewayId'))
        ..add(serializers.serialize(
          egressOnlyInternetGatewayId,
          specifiedType: const FullType(String),
        ));
    }
    if (gatewayId != null) {
      result$
        ..add(const _i4.XmlElementName('GatewayId'))
        ..add(serializers.serialize(
          gatewayId,
          specifiedType: const FullType(String),
        ));
    }
    if (instanceId != null) {
      result$
        ..add(const _i4.XmlElementName('InstanceId'))
        ..add(serializers.serialize(
          instanceId,
          specifiedType: const FullType(String),
        ));
    }
    if (instanceOwnerId != null) {
      result$
        ..add(const _i4.XmlElementName('InstanceOwnerId'))
        ..add(serializers.serialize(
          instanceOwnerId,
          specifiedType: const FullType(String),
        ));
    }
    if (natGatewayId != null) {
      result$
        ..add(const _i4.XmlElementName('NatGatewayId'))
        ..add(serializers.serialize(
          natGatewayId,
          specifiedType: const FullType(String),
        ));
    }
    if (transitGatewayId != null) {
      result$
        ..add(const _i4.XmlElementName('TransitGatewayId'))
        ..add(serializers.serialize(
          transitGatewayId,
          specifiedType: const FullType(String),
        ));
    }
    if (localGatewayId != null) {
      result$
        ..add(const _i4.XmlElementName('LocalGatewayId'))
        ..add(serializers.serialize(
          localGatewayId,
          specifiedType: const FullType(String),
        ));
    }
    if (carrierGatewayId != null) {
      result$
        ..add(const _i4.XmlElementName('CarrierGatewayId'))
        ..add(serializers.serialize(
          carrierGatewayId,
          specifiedType: const FullType(String),
        ));
    }
    if (networkInterfaceId != null) {
      result$
        ..add(const _i4.XmlElementName('NetworkInterfaceId'))
        ..add(serializers.serialize(
          networkInterfaceId,
          specifiedType: const FullType(String),
        ));
    }
    if (origin != null) {
      result$
        ..add(const _i4.XmlElementName('Origin'))
        ..add(serializers.serialize(
          origin,
          specifiedType: const FullType.nullable(_i2.RouteOrigin),
        ));
    }
    if (state != null) {
      result$
        ..add(const _i4.XmlElementName('State'))
        ..add(serializers.serialize(
          state,
          specifiedType: const FullType.nullable(_i3.RouteState),
        ));
    }
    if (vpcPeeringConnectionId != null) {
      result$
        ..add(const _i4.XmlElementName('VpcPeeringConnectionId'))
        ..add(serializers.serialize(
          vpcPeeringConnectionId,
          specifiedType: const FullType(String),
        ));
    }
    if (coreNetworkArn != null) {
      result$
        ..add(const _i4.XmlElementName('CoreNetworkArn'))
        ..add(serializers.serialize(
          coreNetworkArn,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
