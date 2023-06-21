// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.explanation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i10;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i11;
import 'package:smoke_test/src/sdk/src/ec2/model/analysis_acl_rule.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/analysis_component.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/analysis_load_balancer_listener.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/analysis_load_balancer_target.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/analysis_route_table_route.dart'
    as _i7;
import 'package:smoke_test/src/sdk/src/ec2/model/analysis_security_group_rule.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/ec2/model/port_range.dart' as _i6;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_route_table_route.dart'
    as _i9;

part 'explanation.g.dart';

/// Describes an explanation code for an unreachable path. For more information, see [Reachability Analyzer explanation codes](https://docs.aws.amazon.com/vpc/latest/reachability/explanation-codes.html).
abstract class Explanation
    with _i1.AWSEquatable<Explanation>
    implements Built<Explanation, ExplanationBuilder> {
  /// Describes an explanation code for an unreachable path. For more information, see [Reachability Analyzer explanation codes](https://docs.aws.amazon.com/vpc/latest/reachability/explanation-codes.html).
  factory Explanation({
    _i2.AnalysisComponent? acl,
    _i3.AnalysisAclRule? aclRule,
    String? address,
    List<String>? addresses,
    _i2.AnalysisComponent? attachedTo,
    List<String>? availabilityZones,
    List<String>? cidrs,
    _i2.AnalysisComponent? component,
    _i2.AnalysisComponent? customerGateway,
    _i2.AnalysisComponent? destination,
    _i2.AnalysisComponent? destinationVpc,
    String? direction,
    String? explanationCode,
    _i2.AnalysisComponent? ingressRouteTable,
    _i2.AnalysisComponent? internetGateway,
    String? loadBalancerArn,
    _i4.AnalysisLoadBalancerListener? classicLoadBalancerListener,
    int? loadBalancerListenerPort,
    _i5.AnalysisLoadBalancerTarget? loadBalancerTarget,
    _i2.AnalysisComponent? loadBalancerTargetGroup,
    List<_i2.AnalysisComponent>? loadBalancerTargetGroups,
    int? loadBalancerTargetPort,
    _i2.AnalysisComponent? elasticLoadBalancerListener,
    String? missingComponent,
    _i2.AnalysisComponent? natGateway,
    _i2.AnalysisComponent? networkInterface,
    String? packetField,
    _i2.AnalysisComponent? vpcPeeringConnection,
    int? port,
    List<_i6.PortRange>? portRanges,
    _i2.AnalysisComponent? prefixList,
    List<String>? protocols,
    _i7.AnalysisRouteTableRoute? routeTableRoute,
    _i2.AnalysisComponent? routeTable,
    _i2.AnalysisComponent? securityGroup,
    _i8.AnalysisSecurityGroupRule? securityGroupRule,
    List<_i2.AnalysisComponent>? securityGroups,
    _i2.AnalysisComponent? sourceVpc,
    String? state,
    _i2.AnalysisComponent? subnet,
    _i2.AnalysisComponent? subnetRouteTable,
    _i2.AnalysisComponent? vpc,
    _i2.AnalysisComponent? vpcEndpoint,
    _i2.AnalysisComponent? vpnConnection,
    _i2.AnalysisComponent? vpnGateway,
    _i2.AnalysisComponent? transitGateway,
    _i2.AnalysisComponent? transitGatewayRouteTable,
    _i9.TransitGatewayRouteTableRoute? transitGatewayRouteTableRoute,
    _i2.AnalysisComponent? transitGatewayAttachment,
    String? componentAccount,
    String? componentRegion,
  }) {
    loadBalancerListenerPort ??= 0;
    loadBalancerTargetPort ??= 0;
    port ??= 0;
    return _$Explanation._(
      acl: acl,
      aclRule: aclRule,
      address: address,
      addresses: addresses == null ? null : _i10.BuiltList(addresses),
      attachedTo: attachedTo,
      availabilityZones:
          availabilityZones == null ? null : _i10.BuiltList(availabilityZones),
      cidrs: cidrs == null ? null : _i10.BuiltList(cidrs),
      component: component,
      customerGateway: customerGateway,
      destination: destination,
      destinationVpc: destinationVpc,
      direction: direction,
      explanationCode: explanationCode,
      ingressRouteTable: ingressRouteTable,
      internetGateway: internetGateway,
      loadBalancerArn: loadBalancerArn,
      classicLoadBalancerListener: classicLoadBalancerListener,
      loadBalancerListenerPort: loadBalancerListenerPort,
      loadBalancerTarget: loadBalancerTarget,
      loadBalancerTargetGroup: loadBalancerTargetGroup,
      loadBalancerTargetGroups: loadBalancerTargetGroups == null
          ? null
          : _i10.BuiltList(loadBalancerTargetGroups),
      loadBalancerTargetPort: loadBalancerTargetPort,
      elasticLoadBalancerListener: elasticLoadBalancerListener,
      missingComponent: missingComponent,
      natGateway: natGateway,
      networkInterface: networkInterface,
      packetField: packetField,
      vpcPeeringConnection: vpcPeeringConnection,
      port: port,
      portRanges: portRanges == null ? null : _i10.BuiltList(portRanges),
      prefixList: prefixList,
      protocols: protocols == null ? null : _i10.BuiltList(protocols),
      routeTableRoute: routeTableRoute,
      routeTable: routeTable,
      securityGroup: securityGroup,
      securityGroupRule: securityGroupRule,
      securityGroups:
          securityGroups == null ? null : _i10.BuiltList(securityGroups),
      sourceVpc: sourceVpc,
      state: state,
      subnet: subnet,
      subnetRouteTable: subnetRouteTable,
      vpc: vpc,
      vpcEndpoint: vpcEndpoint,
      vpnConnection: vpnConnection,
      vpnGateway: vpnGateway,
      transitGateway: transitGateway,
      transitGatewayRouteTable: transitGatewayRouteTable,
      transitGatewayRouteTableRoute: transitGatewayRouteTableRoute,
      transitGatewayAttachment: transitGatewayAttachment,
      componentAccount: componentAccount,
      componentRegion: componentRegion,
    );
  }

  /// Describes an explanation code for an unreachable path. For more information, see [Reachability Analyzer explanation codes](https://docs.aws.amazon.com/vpc/latest/reachability/explanation-codes.html).
  factory Explanation.build([void Function(ExplanationBuilder) updates]) =
      _$Explanation;

  const Explanation._();

  static const List<_i11.SmithySerializer> serializers = [
    ExplanationEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ExplanationBuilder b) {
    b.loadBalancerListenerPort = 0;
    b.loadBalancerTargetPort = 0;
    b.port = 0;
  }

  /// The network ACL.
  _i2.AnalysisComponent? get acl;

  /// The network ACL rule.
  _i3.AnalysisAclRule? get aclRule;

  /// The IPv4 address, in CIDR notation.
  String? get address;

  /// The IPv4 addresses, in CIDR notation.
  _i10.BuiltList<String>? get addresses;

  /// The resource to which the component is attached.
  _i2.AnalysisComponent? get attachedTo;

  /// The Availability Zones.
  _i10.BuiltList<String>? get availabilityZones;

  /// The CIDR ranges.
  _i10.BuiltList<String>? get cidrs;

  /// The component.
  _i2.AnalysisComponent? get component;

  /// The customer gateway.
  _i2.AnalysisComponent? get customerGateway;

  /// The destination.
  _i2.AnalysisComponent? get destination;

  /// The destination VPC.
  _i2.AnalysisComponent? get destinationVpc;

  /// The direction. The following are the possible values:
  ///
  /// *   egress
  ///
  /// *   ingress
  String? get direction;

  /// The explanation code.
  String? get explanationCode;

  /// The route table.
  _i2.AnalysisComponent? get ingressRouteTable;

  /// The internet gateway.
  _i2.AnalysisComponent? get internetGateway;

  /// The Amazon Resource Name (ARN) of the load balancer.
  String? get loadBalancerArn;

  /// The listener for a Classic Load Balancer.
  _i4.AnalysisLoadBalancerListener? get classicLoadBalancerListener;

  /// The listener port of the load balancer.
  int get loadBalancerListenerPort;

  /// The target.
  _i5.AnalysisLoadBalancerTarget? get loadBalancerTarget;

  /// The target group.
  _i2.AnalysisComponent? get loadBalancerTargetGroup;

  /// The target groups.
  _i10.BuiltList<_i2.AnalysisComponent>? get loadBalancerTargetGroups;

  /// The target port.
  int get loadBalancerTargetPort;

  /// The load balancer listener.
  _i2.AnalysisComponent? get elasticLoadBalancerListener;

  /// The missing component.
  String? get missingComponent;

  /// The NAT gateway.
  _i2.AnalysisComponent? get natGateway;

  /// The network interface.
  _i2.AnalysisComponent? get networkInterface;

  /// The packet field.
  String? get packetField;

  /// The VPC peering connection.
  _i2.AnalysisComponent? get vpcPeeringConnection;

  /// The port.
  int get port;

  /// The port ranges.
  _i10.BuiltList<_i6.PortRange>? get portRanges;

  /// The prefix list.
  _i2.AnalysisComponent? get prefixList;

  /// The protocols.
  _i10.BuiltList<String>? get protocols;

  /// The route table route.
  _i7.AnalysisRouteTableRoute? get routeTableRoute;

  /// The route table.
  _i2.AnalysisComponent? get routeTable;

  /// The security group.
  _i2.AnalysisComponent? get securityGroup;

  /// The security group rule.
  _i8.AnalysisSecurityGroupRule? get securityGroupRule;

  /// The security groups.
  _i10.BuiltList<_i2.AnalysisComponent>? get securityGroups;

  /// The source VPC.
  _i2.AnalysisComponent? get sourceVpc;

  /// The state.
  String? get state;

  /// The subnet.
  _i2.AnalysisComponent? get subnet;

  /// The route table for the subnet.
  _i2.AnalysisComponent? get subnetRouteTable;

  /// The component VPC.
  _i2.AnalysisComponent? get vpc;

  /// The VPC endpoint.
  _i2.AnalysisComponent? get vpcEndpoint;

  /// The VPN connection.
  _i2.AnalysisComponent? get vpnConnection;

  /// The VPN gateway.
  _i2.AnalysisComponent? get vpnGateway;

  /// The transit gateway.
  _i2.AnalysisComponent? get transitGateway;

  /// The transit gateway route table.
  _i2.AnalysisComponent? get transitGatewayRouteTable;

  /// The transit gateway route table route.
  _i9.TransitGatewayRouteTableRoute? get transitGatewayRouteTableRoute;

  /// The transit gateway attachment.
  _i2.AnalysisComponent? get transitGatewayAttachment;

  /// The Amazon Web Services account for the component.
  String? get componentAccount;

  /// The Region for the component.
  String? get componentRegion;
  @override
  List<Object?> get props => [
        acl,
        aclRule,
        address,
        addresses,
        attachedTo,
        availabilityZones,
        cidrs,
        component,
        customerGateway,
        destination,
        destinationVpc,
        direction,
        explanationCode,
        ingressRouteTable,
        internetGateway,
        loadBalancerArn,
        classicLoadBalancerListener,
        loadBalancerListenerPort,
        loadBalancerTarget,
        loadBalancerTargetGroup,
        loadBalancerTargetGroups,
        loadBalancerTargetPort,
        elasticLoadBalancerListener,
        missingComponent,
        natGateway,
        networkInterface,
        packetField,
        vpcPeeringConnection,
        port,
        portRanges,
        prefixList,
        protocols,
        routeTableRoute,
        routeTable,
        securityGroup,
        securityGroupRule,
        securityGroups,
        sourceVpc,
        state,
        subnet,
        subnetRouteTable,
        vpc,
        vpcEndpoint,
        vpnConnection,
        vpnGateway,
        transitGateway,
        transitGatewayRouteTable,
        transitGatewayRouteTableRoute,
        transitGatewayAttachment,
        componentAccount,
        componentRegion,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Explanation');
    helper.add(
      'acl',
      acl,
    );
    helper.add(
      'aclRule',
      aclRule,
    );
    helper.add(
      'address',
      address,
    );
    helper.add(
      'addresses',
      addresses,
    );
    helper.add(
      'attachedTo',
      attachedTo,
    );
    helper.add(
      'availabilityZones',
      availabilityZones,
    );
    helper.add(
      'cidrs',
      cidrs,
    );
    helper.add(
      'component',
      component,
    );
    helper.add(
      'customerGateway',
      customerGateway,
    );
    helper.add(
      'destination',
      destination,
    );
    helper.add(
      'destinationVpc',
      destinationVpc,
    );
    helper.add(
      'direction',
      direction,
    );
    helper.add(
      'explanationCode',
      explanationCode,
    );
    helper.add(
      'ingressRouteTable',
      ingressRouteTable,
    );
    helper.add(
      'internetGateway',
      internetGateway,
    );
    helper.add(
      'loadBalancerArn',
      loadBalancerArn,
    );
    helper.add(
      'classicLoadBalancerListener',
      classicLoadBalancerListener,
    );
    helper.add(
      'loadBalancerListenerPort',
      loadBalancerListenerPort,
    );
    helper.add(
      'loadBalancerTarget',
      loadBalancerTarget,
    );
    helper.add(
      'loadBalancerTargetGroup',
      loadBalancerTargetGroup,
    );
    helper.add(
      'loadBalancerTargetGroups',
      loadBalancerTargetGroups,
    );
    helper.add(
      'loadBalancerTargetPort',
      loadBalancerTargetPort,
    );
    helper.add(
      'elasticLoadBalancerListener',
      elasticLoadBalancerListener,
    );
    helper.add(
      'missingComponent',
      missingComponent,
    );
    helper.add(
      'natGateway',
      natGateway,
    );
    helper.add(
      'networkInterface',
      networkInterface,
    );
    helper.add(
      'packetField',
      packetField,
    );
    helper.add(
      'vpcPeeringConnection',
      vpcPeeringConnection,
    );
    helper.add(
      'port',
      port,
    );
    helper.add(
      'portRanges',
      portRanges,
    );
    helper.add(
      'prefixList',
      prefixList,
    );
    helper.add(
      'protocols',
      protocols,
    );
    helper.add(
      'routeTableRoute',
      routeTableRoute,
    );
    helper.add(
      'routeTable',
      routeTable,
    );
    helper.add(
      'securityGroup',
      securityGroup,
    );
    helper.add(
      'securityGroupRule',
      securityGroupRule,
    );
    helper.add(
      'securityGroups',
      securityGroups,
    );
    helper.add(
      'sourceVpc',
      sourceVpc,
    );
    helper.add(
      'state',
      state,
    );
    helper.add(
      'subnet',
      subnet,
    );
    helper.add(
      'subnetRouteTable',
      subnetRouteTable,
    );
    helper.add(
      'vpc',
      vpc,
    );
    helper.add(
      'vpcEndpoint',
      vpcEndpoint,
    );
    helper.add(
      'vpnConnection',
      vpnConnection,
    );
    helper.add(
      'vpnGateway',
      vpnGateway,
    );
    helper.add(
      'transitGateway',
      transitGateway,
    );
    helper.add(
      'transitGatewayRouteTable',
      transitGatewayRouteTable,
    );
    helper.add(
      'transitGatewayRouteTableRoute',
      transitGatewayRouteTableRoute,
    );
    helper.add(
      'transitGatewayAttachment',
      transitGatewayAttachment,
    );
    helper.add(
      'componentAccount',
      componentAccount,
    );
    helper.add(
      'componentRegion',
      componentRegion,
    );
    return helper.toString();
  }
}

class ExplanationEc2QuerySerializer
    extends _i11.StructuredSmithySerializer<Explanation> {
  const ExplanationEc2QuerySerializer() : super('Explanation');

  @override
  Iterable<Type> get types => const [
        Explanation,
        _$Explanation,
      ];
  @override
  Iterable<_i11.ShapeId> get supportedProtocols => const [
        _i11.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  Explanation deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExplanationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'acl':
          result.acl.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.AnalysisComponent),
          ) as _i2.AnalysisComponent));
        case 'aclRule':
          result.aclRule.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.AnalysisAclRule),
          ) as _i3.AnalysisAclRule));
        case 'address':
          result.address = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'addressSet':
          result.addresses.replace((const _i11.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i11.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i10.BuiltList,
              [FullType(String)],
            ),
          ) as _i10.BuiltList<String>));
        case 'attachedTo':
          result.attachedTo.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.AnalysisComponent),
          ) as _i2.AnalysisComponent));
        case 'availabilityZoneSet':
          result.availabilityZones.replace((const _i11.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i11.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i10.BuiltList,
              [FullType(String)],
            ),
          ) as _i10.BuiltList<String>));
        case 'cidrSet':
          result.cidrs.replace((const _i11.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i11.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i10.BuiltList,
              [FullType(String)],
            ),
          ) as _i10.BuiltList<String>));
        case 'component':
          result.component.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.AnalysisComponent),
          ) as _i2.AnalysisComponent));
        case 'customerGateway':
          result.customerGateway.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.AnalysisComponent),
          ) as _i2.AnalysisComponent));
        case 'destination':
          result.destination.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.AnalysisComponent),
          ) as _i2.AnalysisComponent));
        case 'destinationVpc':
          result.destinationVpc.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.AnalysisComponent),
          ) as _i2.AnalysisComponent));
        case 'direction':
          result.direction = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'explanationCode':
          result.explanationCode = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ingressRouteTable':
          result.ingressRouteTable.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.AnalysisComponent),
          ) as _i2.AnalysisComponent));
        case 'internetGateway':
          result.internetGateway.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.AnalysisComponent),
          ) as _i2.AnalysisComponent));
        case 'loadBalancerArn':
          result.loadBalancerArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'classicLoadBalancerListener':
          result.classicLoadBalancerListener.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.AnalysisLoadBalancerListener),
          ) as _i4.AnalysisLoadBalancerListener));
        case 'loadBalancerListenerPort':
          result.loadBalancerListenerPort = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'loadBalancerTarget':
          result.loadBalancerTarget.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i5.AnalysisLoadBalancerTarget),
          ) as _i5.AnalysisLoadBalancerTarget));
        case 'loadBalancerTargetGroup':
          result.loadBalancerTargetGroup.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.AnalysisComponent),
          ) as _i2.AnalysisComponent));
        case 'loadBalancerTargetGroupSet':
          result.loadBalancerTargetGroups
              .replace((const _i11.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i11.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i10.BuiltList,
              [FullType(_i2.AnalysisComponent)],
            ),
          ) as _i10.BuiltList<_i2.AnalysisComponent>));
        case 'loadBalancerTargetPort':
          result.loadBalancerTargetPort = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'elasticLoadBalancerListener':
          result.elasticLoadBalancerListener.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.AnalysisComponent),
          ) as _i2.AnalysisComponent));
        case 'missingComponent':
          result.missingComponent = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'natGateway':
          result.natGateway.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.AnalysisComponent),
          ) as _i2.AnalysisComponent));
        case 'networkInterface':
          result.networkInterface.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.AnalysisComponent),
          ) as _i2.AnalysisComponent));
        case 'packetField':
          result.packetField = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'vpcPeeringConnection':
          result.vpcPeeringConnection.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.AnalysisComponent),
          ) as _i2.AnalysisComponent));
        case 'port':
          result.port = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'portRangeSet':
          result.portRanges.replace((const _i11.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i11.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i10.BuiltList,
              [FullType(_i6.PortRange)],
            ),
          ) as _i10.BuiltList<_i6.PortRange>));
        case 'prefixList':
          result.prefixList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.AnalysisComponent),
          ) as _i2.AnalysisComponent));
        case 'protocolSet':
          result.protocols.replace((const _i11.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i11.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i10.BuiltList,
              [FullType(String)],
            ),
          ) as _i10.BuiltList<String>));
        case 'routeTableRoute':
          result.routeTableRoute.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i7.AnalysisRouteTableRoute),
          ) as _i7.AnalysisRouteTableRoute));
        case 'routeTable':
          result.routeTable.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.AnalysisComponent),
          ) as _i2.AnalysisComponent));
        case 'securityGroup':
          result.securityGroup.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.AnalysisComponent),
          ) as _i2.AnalysisComponent));
        case 'securityGroupRule':
          result.securityGroupRule.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i8.AnalysisSecurityGroupRule),
          ) as _i8.AnalysisSecurityGroupRule));
        case 'securityGroupSet':
          result.securityGroups.replace((const _i11.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i11.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i10.BuiltList,
              [FullType(_i2.AnalysisComponent)],
            ),
          ) as _i10.BuiltList<_i2.AnalysisComponent>));
        case 'sourceVpc':
          result.sourceVpc.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.AnalysisComponent),
          ) as _i2.AnalysisComponent));
        case 'state':
          result.state = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'subnet':
          result.subnet.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.AnalysisComponent),
          ) as _i2.AnalysisComponent));
        case 'subnetRouteTable':
          result.subnetRouteTable.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.AnalysisComponent),
          ) as _i2.AnalysisComponent));
        case 'vpc':
          result.vpc.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.AnalysisComponent),
          ) as _i2.AnalysisComponent));
        case 'vpcEndpoint':
          result.vpcEndpoint.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.AnalysisComponent),
          ) as _i2.AnalysisComponent));
        case 'vpnConnection':
          result.vpnConnection.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.AnalysisComponent),
          ) as _i2.AnalysisComponent));
        case 'vpnGateway':
          result.vpnGateway.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.AnalysisComponent),
          ) as _i2.AnalysisComponent));
        case 'transitGateway':
          result.transitGateway.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.AnalysisComponent),
          ) as _i2.AnalysisComponent));
        case 'transitGatewayRouteTable':
          result.transitGatewayRouteTable.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.AnalysisComponent),
          ) as _i2.AnalysisComponent));
        case 'transitGatewayRouteTableRoute':
          result.transitGatewayRouteTableRoute.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i9.TransitGatewayRouteTableRoute),
          ) as _i9.TransitGatewayRouteTableRoute));
        case 'transitGatewayAttachment':
          result.transitGatewayAttachment.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.AnalysisComponent),
          ) as _i2.AnalysisComponent));
        case 'componentAccount':
          result.componentAccount = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'componentRegion':
          result.componentRegion = (serializers.deserialize(
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
    Explanation object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i11.XmlElementName(
        'ExplanationResponse',
        _i11.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final Explanation(
      :acl,
      :aclRule,
      :address,
      :addresses,
      :attachedTo,
      :availabilityZones,
      :cidrs,
      :component,
      :customerGateway,
      :destination,
      :destinationVpc,
      :direction,
      :explanationCode,
      :ingressRouteTable,
      :internetGateway,
      :loadBalancerArn,
      :classicLoadBalancerListener,
      :loadBalancerListenerPort,
      :loadBalancerTarget,
      :loadBalancerTargetGroup,
      :loadBalancerTargetGroups,
      :loadBalancerTargetPort,
      :elasticLoadBalancerListener,
      :missingComponent,
      :natGateway,
      :networkInterface,
      :packetField,
      :vpcPeeringConnection,
      :port,
      :portRanges,
      :prefixList,
      :protocols,
      :routeTableRoute,
      :routeTable,
      :securityGroup,
      :securityGroupRule,
      :securityGroups,
      :sourceVpc,
      :state,
      :subnet,
      :subnetRouteTable,
      :vpc,
      :vpcEndpoint,
      :vpnConnection,
      :vpnGateway,
      :transitGateway,
      :transitGatewayRouteTable,
      :transitGatewayRouteTableRoute,
      :transitGatewayAttachment,
      :componentAccount,
      :componentRegion
    ) = object;
    if (acl != null) {
      result$
        ..add(const _i11.XmlElementName('Acl'))
        ..add(serializers.serialize(
          acl,
          specifiedType: const FullType(_i2.AnalysisComponent),
        ));
    }
    if (aclRule != null) {
      result$
        ..add(const _i11.XmlElementName('AclRule'))
        ..add(serializers.serialize(
          aclRule,
          specifiedType: const FullType(_i3.AnalysisAclRule),
        ));
    }
    if (address != null) {
      result$
        ..add(const _i11.XmlElementName('Address'))
        ..add(serializers.serialize(
          address,
          specifiedType: const FullType(String),
        ));
    }
    if (addresses != null) {
      result$
        ..add(const _i11.XmlElementName('AddressSet'))
        ..add(const _i11.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i11.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          addresses,
          specifiedType: const FullType.nullable(
            _i10.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (attachedTo != null) {
      result$
        ..add(const _i11.XmlElementName('AttachedTo'))
        ..add(serializers.serialize(
          attachedTo,
          specifiedType: const FullType(_i2.AnalysisComponent),
        ));
    }
    if (availabilityZones != null) {
      result$
        ..add(const _i11.XmlElementName('AvailabilityZoneSet'))
        ..add(const _i11.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i11.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          availabilityZones,
          specifiedType: const FullType.nullable(
            _i10.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (cidrs != null) {
      result$
        ..add(const _i11.XmlElementName('CidrSet'))
        ..add(const _i11.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i11.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          cidrs,
          specifiedType: const FullType.nullable(
            _i10.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (component != null) {
      result$
        ..add(const _i11.XmlElementName('Component'))
        ..add(serializers.serialize(
          component,
          specifiedType: const FullType(_i2.AnalysisComponent),
        ));
    }
    if (customerGateway != null) {
      result$
        ..add(const _i11.XmlElementName('CustomerGateway'))
        ..add(serializers.serialize(
          customerGateway,
          specifiedType: const FullType(_i2.AnalysisComponent),
        ));
    }
    if (destination != null) {
      result$
        ..add(const _i11.XmlElementName('Destination'))
        ..add(serializers.serialize(
          destination,
          specifiedType: const FullType(_i2.AnalysisComponent),
        ));
    }
    if (destinationVpc != null) {
      result$
        ..add(const _i11.XmlElementName('DestinationVpc'))
        ..add(serializers.serialize(
          destinationVpc,
          specifiedType: const FullType(_i2.AnalysisComponent),
        ));
    }
    if (direction != null) {
      result$
        ..add(const _i11.XmlElementName('Direction'))
        ..add(serializers.serialize(
          direction,
          specifiedType: const FullType(String),
        ));
    }
    if (explanationCode != null) {
      result$
        ..add(const _i11.XmlElementName('ExplanationCode'))
        ..add(serializers.serialize(
          explanationCode,
          specifiedType: const FullType(String),
        ));
    }
    if (ingressRouteTable != null) {
      result$
        ..add(const _i11.XmlElementName('IngressRouteTable'))
        ..add(serializers.serialize(
          ingressRouteTable,
          specifiedType: const FullType(_i2.AnalysisComponent),
        ));
    }
    if (internetGateway != null) {
      result$
        ..add(const _i11.XmlElementName('InternetGateway'))
        ..add(serializers.serialize(
          internetGateway,
          specifiedType: const FullType(_i2.AnalysisComponent),
        ));
    }
    if (loadBalancerArn != null) {
      result$
        ..add(const _i11.XmlElementName('LoadBalancerArn'))
        ..add(serializers.serialize(
          loadBalancerArn,
          specifiedType: const FullType(String),
        ));
    }
    if (classicLoadBalancerListener != null) {
      result$
        ..add(const _i11.XmlElementName('ClassicLoadBalancerListener'))
        ..add(serializers.serialize(
          classicLoadBalancerListener,
          specifiedType: const FullType(_i4.AnalysisLoadBalancerListener),
        ));
    }
    result$
      ..add(const _i11.XmlElementName('LoadBalancerListenerPort'))
      ..add(serializers.serialize(
        loadBalancerListenerPort,
        specifiedType: const FullType(int),
      ));
    if (loadBalancerTarget != null) {
      result$
        ..add(const _i11.XmlElementName('LoadBalancerTarget'))
        ..add(serializers.serialize(
          loadBalancerTarget,
          specifiedType: const FullType(_i5.AnalysisLoadBalancerTarget),
        ));
    }
    if (loadBalancerTargetGroup != null) {
      result$
        ..add(const _i11.XmlElementName('LoadBalancerTargetGroup'))
        ..add(serializers.serialize(
          loadBalancerTargetGroup,
          specifiedType: const FullType(_i2.AnalysisComponent),
        ));
    }
    if (loadBalancerTargetGroups != null) {
      result$
        ..add(const _i11.XmlElementName('LoadBalancerTargetGroupSet'))
        ..add(const _i11.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i11.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          loadBalancerTargetGroups,
          specifiedType: const FullType.nullable(
            _i10.BuiltList,
            [FullType(_i2.AnalysisComponent)],
          ),
        ));
    }
    result$
      ..add(const _i11.XmlElementName('LoadBalancerTargetPort'))
      ..add(serializers.serialize(
        loadBalancerTargetPort,
        specifiedType: const FullType(int),
      ));
    if (elasticLoadBalancerListener != null) {
      result$
        ..add(const _i11.XmlElementName('ElasticLoadBalancerListener'))
        ..add(serializers.serialize(
          elasticLoadBalancerListener,
          specifiedType: const FullType(_i2.AnalysisComponent),
        ));
    }
    if (missingComponent != null) {
      result$
        ..add(const _i11.XmlElementName('MissingComponent'))
        ..add(serializers.serialize(
          missingComponent,
          specifiedType: const FullType(String),
        ));
    }
    if (natGateway != null) {
      result$
        ..add(const _i11.XmlElementName('NatGateway'))
        ..add(serializers.serialize(
          natGateway,
          specifiedType: const FullType(_i2.AnalysisComponent),
        ));
    }
    if (networkInterface != null) {
      result$
        ..add(const _i11.XmlElementName('NetworkInterface'))
        ..add(serializers.serialize(
          networkInterface,
          specifiedType: const FullType(_i2.AnalysisComponent),
        ));
    }
    if (packetField != null) {
      result$
        ..add(const _i11.XmlElementName('PacketField'))
        ..add(serializers.serialize(
          packetField,
          specifiedType: const FullType(String),
        ));
    }
    if (vpcPeeringConnection != null) {
      result$
        ..add(const _i11.XmlElementName('VpcPeeringConnection'))
        ..add(serializers.serialize(
          vpcPeeringConnection,
          specifiedType: const FullType(_i2.AnalysisComponent),
        ));
    }
    result$
      ..add(const _i11.XmlElementName('Port'))
      ..add(serializers.serialize(
        port,
        specifiedType: const FullType(int),
      ));
    if (portRanges != null) {
      result$
        ..add(const _i11.XmlElementName('PortRangeSet'))
        ..add(const _i11.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i11.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          portRanges,
          specifiedType: const FullType.nullable(
            _i10.BuiltList,
            [FullType(_i6.PortRange)],
          ),
        ));
    }
    if (prefixList != null) {
      result$
        ..add(const _i11.XmlElementName('PrefixList'))
        ..add(serializers.serialize(
          prefixList,
          specifiedType: const FullType(_i2.AnalysisComponent),
        ));
    }
    if (protocols != null) {
      result$
        ..add(const _i11.XmlElementName('ProtocolSet'))
        ..add(const _i11.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i11.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          protocols,
          specifiedType: const FullType.nullable(
            _i10.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (routeTableRoute != null) {
      result$
        ..add(const _i11.XmlElementName('RouteTableRoute'))
        ..add(serializers.serialize(
          routeTableRoute,
          specifiedType: const FullType(_i7.AnalysisRouteTableRoute),
        ));
    }
    if (routeTable != null) {
      result$
        ..add(const _i11.XmlElementName('RouteTable'))
        ..add(serializers.serialize(
          routeTable,
          specifiedType: const FullType(_i2.AnalysisComponent),
        ));
    }
    if (securityGroup != null) {
      result$
        ..add(const _i11.XmlElementName('SecurityGroup'))
        ..add(serializers.serialize(
          securityGroup,
          specifiedType: const FullType(_i2.AnalysisComponent),
        ));
    }
    if (securityGroupRule != null) {
      result$
        ..add(const _i11.XmlElementName('SecurityGroupRule'))
        ..add(serializers.serialize(
          securityGroupRule,
          specifiedType: const FullType(_i8.AnalysisSecurityGroupRule),
        ));
    }
    if (securityGroups != null) {
      result$
        ..add(const _i11.XmlElementName('SecurityGroupSet'))
        ..add(const _i11.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i11.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          securityGroups,
          specifiedType: const FullType.nullable(
            _i10.BuiltList,
            [FullType(_i2.AnalysisComponent)],
          ),
        ));
    }
    if (sourceVpc != null) {
      result$
        ..add(const _i11.XmlElementName('SourceVpc'))
        ..add(serializers.serialize(
          sourceVpc,
          specifiedType: const FullType(_i2.AnalysisComponent),
        ));
    }
    if (state != null) {
      result$
        ..add(const _i11.XmlElementName('State'))
        ..add(serializers.serialize(
          state,
          specifiedType: const FullType(String),
        ));
    }
    if (subnet != null) {
      result$
        ..add(const _i11.XmlElementName('Subnet'))
        ..add(serializers.serialize(
          subnet,
          specifiedType: const FullType(_i2.AnalysisComponent),
        ));
    }
    if (subnetRouteTable != null) {
      result$
        ..add(const _i11.XmlElementName('SubnetRouteTable'))
        ..add(serializers.serialize(
          subnetRouteTable,
          specifiedType: const FullType(_i2.AnalysisComponent),
        ));
    }
    if (vpc != null) {
      result$
        ..add(const _i11.XmlElementName('Vpc'))
        ..add(serializers.serialize(
          vpc,
          specifiedType: const FullType(_i2.AnalysisComponent),
        ));
    }
    if (vpcEndpoint != null) {
      result$
        ..add(const _i11.XmlElementName('VpcEndpoint'))
        ..add(serializers.serialize(
          vpcEndpoint,
          specifiedType: const FullType(_i2.AnalysisComponent),
        ));
    }
    if (vpnConnection != null) {
      result$
        ..add(const _i11.XmlElementName('VpnConnection'))
        ..add(serializers.serialize(
          vpnConnection,
          specifiedType: const FullType(_i2.AnalysisComponent),
        ));
    }
    if (vpnGateway != null) {
      result$
        ..add(const _i11.XmlElementName('VpnGateway'))
        ..add(serializers.serialize(
          vpnGateway,
          specifiedType: const FullType(_i2.AnalysisComponent),
        ));
    }
    if (transitGateway != null) {
      result$
        ..add(const _i11.XmlElementName('TransitGateway'))
        ..add(serializers.serialize(
          transitGateway,
          specifiedType: const FullType(_i2.AnalysisComponent),
        ));
    }
    if (transitGatewayRouteTable != null) {
      result$
        ..add(const _i11.XmlElementName('TransitGatewayRouteTable'))
        ..add(serializers.serialize(
          transitGatewayRouteTable,
          specifiedType: const FullType(_i2.AnalysisComponent),
        ));
    }
    if (transitGatewayRouteTableRoute != null) {
      result$
        ..add(const _i11.XmlElementName('TransitGatewayRouteTableRoute'))
        ..add(serializers.serialize(
          transitGatewayRouteTableRoute,
          specifiedType: const FullType(_i9.TransitGatewayRouteTableRoute),
        ));
    }
    if (transitGatewayAttachment != null) {
      result$
        ..add(const _i11.XmlElementName('TransitGatewayAttachment'))
        ..add(serializers.serialize(
          transitGatewayAttachment,
          specifiedType: const FullType(_i2.AnalysisComponent),
        ));
    }
    if (componentAccount != null) {
      result$
        ..add(const _i11.XmlElementName('ComponentAccount'))
        ..add(serializers.serialize(
          componentAccount,
          specifiedType: const FullType(String),
        ));
    }
    if (componentRegion != null) {
      result$
        ..add(const _i11.XmlElementName('ComponentRegion'))
        ..add(serializers.serialize(
          componentRegion,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
