// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.modify_vpc_endpoint_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/dns_options_specification.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/ip_address_type.dart' as _i3;

part 'modify_vpc_endpoint_request.g.dart';

/// Contains the parameters for ModifyVpcEndpoint.
abstract class ModifyVpcEndpointRequest
    with
        _i1.HttpInput<ModifyVpcEndpointRequest>,
        _i2.AWSEquatable<ModifyVpcEndpointRequest>
    implements
        Built<ModifyVpcEndpointRequest, ModifyVpcEndpointRequestBuilder> {
  /// Contains the parameters for ModifyVpcEndpoint.
  factory ModifyVpcEndpointRequest({
    bool? dryRun,
    required String vpcEndpointId,
    bool? resetPolicy,
    String? policyDocument,
    List<String>? addRouteTableIds,
    List<String>? removeRouteTableIds,
    List<String>? addSubnetIds,
    List<String>? removeSubnetIds,
    List<String>? addSecurityGroupIds,
    List<String>? removeSecurityGroupIds,
    _i3.IpAddressType? ipAddressType,
    _i4.DnsOptionsSpecification? dnsOptions,
    bool? privateDnsEnabled,
  }) {
    dryRun ??= false;
    resetPolicy ??= false;
    privateDnsEnabled ??= false;
    return _$ModifyVpcEndpointRequest._(
      dryRun: dryRun,
      vpcEndpointId: vpcEndpointId,
      resetPolicy: resetPolicy,
      policyDocument: policyDocument,
      addRouteTableIds:
          addRouteTableIds == null ? null : _i5.BuiltList(addRouteTableIds),
      removeRouteTableIds: removeRouteTableIds == null
          ? null
          : _i5.BuiltList(removeRouteTableIds),
      addSubnetIds: addSubnetIds == null ? null : _i5.BuiltList(addSubnetIds),
      removeSubnetIds:
          removeSubnetIds == null ? null : _i5.BuiltList(removeSubnetIds),
      addSecurityGroupIds: addSecurityGroupIds == null
          ? null
          : _i5.BuiltList(addSecurityGroupIds),
      removeSecurityGroupIds: removeSecurityGroupIds == null
          ? null
          : _i5.BuiltList(removeSecurityGroupIds),
      ipAddressType: ipAddressType,
      dnsOptions: dnsOptions,
      privateDnsEnabled: privateDnsEnabled,
    );
  }

  /// Contains the parameters for ModifyVpcEndpoint.
  factory ModifyVpcEndpointRequest.build(
          [void Function(ModifyVpcEndpointRequestBuilder) updates]) =
      _$ModifyVpcEndpointRequest;

  const ModifyVpcEndpointRequest._();

  factory ModifyVpcEndpointRequest.fromRequest(
    ModifyVpcEndpointRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    ModifyVpcEndpointRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyVpcEndpointRequestBuilder b) {
    b.dryRun = false;
    b.resetPolicy = false;
    b.privateDnsEnabled = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the endpoint.
  String get vpcEndpointId;

  /// (Gateway endpoint) Specify `true` to reset the policy document to the default policy. The default policy allows full access to the service.
  bool get resetPolicy;

  /// (Interface and gateway endpoints) A policy to attach to the endpoint that controls access to the service. The policy must be in valid JSON format.
  String? get policyDocument;

  /// (Gateway endpoint) One or more route tables IDs to associate with the endpoint.
  _i5.BuiltList<String>? get addRouteTableIds;

  /// (Gateway endpoint) One or more route table IDs to disassociate from the endpoint.
  _i5.BuiltList<String>? get removeRouteTableIds;

  /// (Interface and Gateway Load Balancer endpoints) One or more subnet IDs in which to serve the endpoint. For a Gateway Load Balancer endpoint, you can specify only one subnet.
  _i5.BuiltList<String>? get addSubnetIds;

  /// (Interface endpoint) One or more subnets IDs in which to remove the endpoint.
  _i5.BuiltList<String>? get removeSubnetIds;

  /// (Interface endpoint) One or more security group IDs to associate with the network interface.
  _i5.BuiltList<String>? get addSecurityGroupIds;

  /// (Interface endpoint) One or more security group IDs to disassociate from the network interface.
  _i5.BuiltList<String>? get removeSecurityGroupIds;

  /// The IP address type for the endpoint.
  _i3.IpAddressType? get ipAddressType;

  /// The DNS options for the endpoint.
  _i4.DnsOptionsSpecification? get dnsOptions;

  /// (Interface endpoint) Indicates whether a private hosted zone is associated with the VPC.
  bool get privateDnsEnabled;
  @override
  ModifyVpcEndpointRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        vpcEndpointId,
        resetPolicy,
        policyDocument,
        addRouteTableIds,
        removeRouteTableIds,
        addSubnetIds,
        removeSubnetIds,
        addSecurityGroupIds,
        removeSecurityGroupIds,
        ipAddressType,
        dnsOptions,
        privateDnsEnabled,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ModifyVpcEndpointRequest');
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'vpcEndpointId',
      vpcEndpointId,
    );
    helper.add(
      'resetPolicy',
      resetPolicy,
    );
    helper.add(
      'policyDocument',
      policyDocument,
    );
    helper.add(
      'addRouteTableIds',
      addRouteTableIds,
    );
    helper.add(
      'removeRouteTableIds',
      removeRouteTableIds,
    );
    helper.add(
      'addSubnetIds',
      addSubnetIds,
    );
    helper.add(
      'removeSubnetIds',
      removeSubnetIds,
    );
    helper.add(
      'addSecurityGroupIds',
      addSecurityGroupIds,
    );
    helper.add(
      'removeSecurityGroupIds',
      removeSecurityGroupIds,
    );
    helper.add(
      'ipAddressType',
      ipAddressType,
    );
    helper.add(
      'dnsOptions',
      dnsOptions,
    );
    helper.add(
      'privateDnsEnabled',
      privateDnsEnabled,
    );
    return helper.toString();
  }
}

class ModifyVpcEndpointRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<ModifyVpcEndpointRequest> {
  const ModifyVpcEndpointRequestEc2QuerySerializer()
      : super('ModifyVpcEndpointRequest');

  @override
  Iterable<Type> get types => const [
        ModifyVpcEndpointRequest,
        _$ModifyVpcEndpointRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyVpcEndpointRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyVpcEndpointRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'VpcEndpointId':
          result.vpcEndpointId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ResetPolicy':
          result.resetPolicy = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'PolicyDocument':
          result.policyDocument = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'AddRouteTableId':
          result.addRouteTableIds.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i5.BuiltList,
              [FullType(String)],
            ),
          ) as _i5.BuiltList<String>));
        case 'RemoveRouteTableId':
          result.removeRouteTableIds.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i5.BuiltList,
              [FullType(String)],
            ),
          ) as _i5.BuiltList<String>));
        case 'AddSubnetId':
          result.addSubnetIds.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i5.BuiltList,
              [FullType(String)],
            ),
          ) as _i5.BuiltList<String>));
        case 'RemoveSubnetId':
          result.removeSubnetIds.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i5.BuiltList,
              [FullType(String)],
            ),
          ) as _i5.BuiltList<String>));
        case 'AddSecurityGroupId':
          result.addSecurityGroupIds.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i5.BuiltList,
              [FullType(String)],
            ),
          ) as _i5.BuiltList<String>));
        case 'RemoveSecurityGroupId':
          result.removeSecurityGroupIds
              .replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i5.BuiltList,
              [FullType(String)],
            ),
          ) as _i5.BuiltList<String>));
        case 'IpAddressType':
          result.ipAddressType = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.IpAddressType),
          ) as _i3.IpAddressType);
        case 'DnsOptions':
          result.dnsOptions.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.DnsOptionsSpecification),
          ) as _i4.DnsOptionsSpecification));
        case 'PrivateDnsEnabled':
          result.privateDnsEnabled = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ModifyVpcEndpointRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ModifyVpcEndpointRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ModifyVpcEndpointRequest(
      :dryRun,
      :vpcEndpointId,
      :resetPolicy,
      :policyDocument,
      :addRouteTableIds,
      :removeRouteTableIds,
      :addSubnetIds,
      :removeSubnetIds,
      :addSecurityGroupIds,
      :removeSecurityGroupIds,
      :ipAddressType,
      :dnsOptions,
      :privateDnsEnabled
    ) = object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    result$
      ..add(const _i1.XmlElementName('VpcEndpointId'))
      ..add(serializers.serialize(
        vpcEndpointId,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i1.XmlElementName('ResetPolicy'))
      ..add(serializers.serialize(
        resetPolicy,
        specifiedType: const FullType(bool),
      ));
    if (policyDocument != null) {
      result$
        ..add(const _i1.XmlElementName('PolicyDocument'))
        ..add(serializers.serialize(
          policyDocument,
          specifiedType: const FullType(String),
        ));
    }
    if (addRouteTableIds != null) {
      result$
        ..add(const _i1.XmlElementName('AddRouteTableId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          addRouteTableIds,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (removeRouteTableIds != null) {
      result$
        ..add(const _i1.XmlElementName('RemoveRouteTableId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          removeRouteTableIds,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (addSubnetIds != null) {
      result$
        ..add(const _i1.XmlElementName('AddSubnetId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          addSubnetIds,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (removeSubnetIds != null) {
      result$
        ..add(const _i1.XmlElementName('RemoveSubnetId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          removeSubnetIds,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (addSecurityGroupIds != null) {
      result$
        ..add(const _i1.XmlElementName('AddSecurityGroupId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          addSecurityGroupIds,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (removeSecurityGroupIds != null) {
      result$
        ..add(const _i1.XmlElementName('RemoveSecurityGroupId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          removeSecurityGroupIds,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (ipAddressType != null) {
      result$
        ..add(const _i1.XmlElementName('IpAddressType'))
        ..add(serializers.serialize(
          ipAddressType,
          specifiedType: const FullType.nullable(_i3.IpAddressType),
        ));
    }
    if (dnsOptions != null) {
      result$
        ..add(const _i1.XmlElementName('DnsOptions'))
        ..add(serializers.serialize(
          dnsOptions,
          specifiedType: const FullType(_i4.DnsOptionsSpecification),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('PrivateDnsEnabled'))
      ..add(serializers.serialize(
        privateDnsEnabled,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
