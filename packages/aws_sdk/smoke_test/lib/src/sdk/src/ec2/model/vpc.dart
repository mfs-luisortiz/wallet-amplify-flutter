// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.vpc; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i7;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i8;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i6;
import 'package:smoke_test/src/sdk/src/ec2/model/tenancy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/vpc_cidr_block_association.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/vpc_ipv6_cidr_block_association.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/vpc_state.dart' as _i2;

part 'vpc.g.dart';

/// Describes a VPC.
abstract class Vpc
    with _i1.AWSEquatable<Vpc>
    implements Built<Vpc, VpcBuilder> {
  /// Describes a VPC.
  factory Vpc({
    String? cidrBlock,
    String? dhcpOptionsId,
    _i2.VpcState? state,
    String? vpcId,
    String? ownerId,
    _i3.Tenancy? instanceTenancy,
    List<_i4.VpcIpv6CidrBlockAssociation>? ipv6CidrBlockAssociationSet,
    List<_i5.VpcCidrBlockAssociation>? cidrBlockAssociationSet,
    bool? isDefault,
    List<_i6.Tag>? tags,
  }) {
    isDefault ??= false;
    return _$Vpc._(
      cidrBlock: cidrBlock,
      dhcpOptionsId: dhcpOptionsId,
      state: state,
      vpcId: vpcId,
      ownerId: ownerId,
      instanceTenancy: instanceTenancy,
      ipv6CidrBlockAssociationSet: ipv6CidrBlockAssociationSet == null
          ? null
          : _i7.BuiltList(ipv6CidrBlockAssociationSet),
      cidrBlockAssociationSet: cidrBlockAssociationSet == null
          ? null
          : _i7.BuiltList(cidrBlockAssociationSet),
      isDefault: isDefault,
      tags: tags == null ? null : _i7.BuiltList(tags),
    );
  }

  /// Describes a VPC.
  factory Vpc.build([void Function(VpcBuilder) updates]) = _$Vpc;

  const Vpc._();

  static const List<_i8.SmithySerializer> serializers = [
    VpcEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(VpcBuilder b) {
    b.isDefault = false;
  }

  /// The primary IPv4 CIDR block for the VPC.
  String? get cidrBlock;

  /// The ID of the set of DHCP options you've associated with the VPC.
  String? get dhcpOptionsId;

  /// The current state of the VPC.
  _i2.VpcState? get state;

  /// The ID of the VPC.
  String? get vpcId;

  /// The ID of the Amazon Web Services account that owns the VPC.
  String? get ownerId;

  /// The allowed tenancy of instances launched into the VPC.
  _i3.Tenancy? get instanceTenancy;

  /// Information about the IPv6 CIDR blocks associated with the VPC.
  _i7.BuiltList<_i4.VpcIpv6CidrBlockAssociation>?
      get ipv6CidrBlockAssociationSet;

  /// Information about the IPv4 CIDR blocks associated with the VPC.
  _i7.BuiltList<_i5.VpcCidrBlockAssociation>? get cidrBlockAssociationSet;

  /// Indicates whether the VPC is the default VPC.
  bool get isDefault;

  /// Any tags assigned to the VPC.
  _i7.BuiltList<_i6.Tag>? get tags;
  @override
  List<Object?> get props => [
        cidrBlock,
        dhcpOptionsId,
        state,
        vpcId,
        ownerId,
        instanceTenancy,
        ipv6CidrBlockAssociationSet,
        cidrBlockAssociationSet,
        isDefault,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Vpc');
    helper.add(
      'cidrBlock',
      cidrBlock,
    );
    helper.add(
      'dhcpOptionsId',
      dhcpOptionsId,
    );
    helper.add(
      'state',
      state,
    );
    helper.add(
      'vpcId',
      vpcId,
    );
    helper.add(
      'ownerId',
      ownerId,
    );
    helper.add(
      'instanceTenancy',
      instanceTenancy,
    );
    helper.add(
      'ipv6CidrBlockAssociationSet',
      ipv6CidrBlockAssociationSet,
    );
    helper.add(
      'cidrBlockAssociationSet',
      cidrBlockAssociationSet,
    );
    helper.add(
      'isDefault',
      isDefault,
    );
    helper.add(
      'tags',
      tags,
    );
    return helper.toString();
  }
}

class VpcEc2QuerySerializer extends _i8.StructuredSmithySerializer<Vpc> {
  const VpcEc2QuerySerializer() : super('Vpc');

  @override
  Iterable<Type> get types => const [
        Vpc,
        _$Vpc,
      ];
  @override
  Iterable<_i8.ShapeId> get supportedProtocols => const [
        _i8.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  Vpc deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VpcBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'cidrBlock':
          result.cidrBlock = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'dhcpOptionsId':
          result.dhcpOptionsId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'state':
          result.state = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.VpcState),
          ) as _i2.VpcState);
        case 'vpcId':
          result.vpcId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ownerId':
          result.ownerId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'instanceTenancy':
          result.instanceTenancy = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.Tenancy),
          ) as _i3.Tenancy);
        case 'ipv6CidrBlockAssociationSet':
          result.ipv6CidrBlockAssociationSet
              .replace((const _i8.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i8.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i7.BuiltList,
              [FullType(_i4.VpcIpv6CidrBlockAssociation)],
            ),
          ) as _i7.BuiltList<_i4.VpcIpv6CidrBlockAssociation>));
        case 'cidrBlockAssociationSet':
          result.cidrBlockAssociationSet
              .replace((const _i8.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i8.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i7.BuiltList,
              [FullType(_i5.VpcCidrBlockAssociation)],
            ),
          ) as _i7.BuiltList<_i5.VpcCidrBlockAssociation>));
        case 'isDefault':
          result.isDefault = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'tagSet':
          result.tags.replace((const _i8.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i8.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i7.BuiltList,
              [FullType(_i6.Tag)],
            ),
          ) as _i7.BuiltList<_i6.Tag>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Vpc object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i8.XmlElementName(
        'VpcResponse',
        _i8.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final Vpc(
      :cidrBlock,
      :dhcpOptionsId,
      :state,
      :vpcId,
      :ownerId,
      :instanceTenancy,
      :ipv6CidrBlockAssociationSet,
      :cidrBlockAssociationSet,
      :isDefault,
      :tags
    ) = object;
    if (cidrBlock != null) {
      result$
        ..add(const _i8.XmlElementName('CidrBlock'))
        ..add(serializers.serialize(
          cidrBlock,
          specifiedType: const FullType(String),
        ));
    }
    if (dhcpOptionsId != null) {
      result$
        ..add(const _i8.XmlElementName('DhcpOptionsId'))
        ..add(serializers.serialize(
          dhcpOptionsId,
          specifiedType: const FullType(String),
        ));
    }
    if (state != null) {
      result$
        ..add(const _i8.XmlElementName('State'))
        ..add(serializers.serialize(
          state,
          specifiedType: const FullType.nullable(_i2.VpcState),
        ));
    }
    if (vpcId != null) {
      result$
        ..add(const _i8.XmlElementName('VpcId'))
        ..add(serializers.serialize(
          vpcId,
          specifiedType: const FullType(String),
        ));
    }
    if (ownerId != null) {
      result$
        ..add(const _i8.XmlElementName('OwnerId'))
        ..add(serializers.serialize(
          ownerId,
          specifiedType: const FullType(String),
        ));
    }
    if (instanceTenancy != null) {
      result$
        ..add(const _i8.XmlElementName('InstanceTenancy'))
        ..add(serializers.serialize(
          instanceTenancy,
          specifiedType: const FullType.nullable(_i3.Tenancy),
        ));
    }
    if (ipv6CidrBlockAssociationSet != null) {
      result$
        ..add(const _i8.XmlElementName('Ipv6CidrBlockAssociationSet'))
        ..add(const _i8.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i8.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          ipv6CidrBlockAssociationSet,
          specifiedType: const FullType.nullable(
            _i7.BuiltList,
            [FullType(_i4.VpcIpv6CidrBlockAssociation)],
          ),
        ));
    }
    if (cidrBlockAssociationSet != null) {
      result$
        ..add(const _i8.XmlElementName('CidrBlockAssociationSet'))
        ..add(const _i8.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i8.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          cidrBlockAssociationSet,
          specifiedType: const FullType.nullable(
            _i7.BuiltList,
            [FullType(_i5.VpcCidrBlockAssociation)],
          ),
        ));
    }
    result$
      ..add(const _i8.XmlElementName('IsDefault'))
      ..add(serializers.serialize(
        isDefault,
        specifiedType: const FullType(bool),
      ));
    if (tags != null) {
      result$
        ..add(const _i8.XmlElementName('TagSet'))
        ..add(const _i8.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i8.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          tags,
          specifiedType: const FullType.nullable(
            _i7.BuiltList,
            [FullType(_i6.Tag)],
          ),
        ));
    }
    return result$;
  }
}
