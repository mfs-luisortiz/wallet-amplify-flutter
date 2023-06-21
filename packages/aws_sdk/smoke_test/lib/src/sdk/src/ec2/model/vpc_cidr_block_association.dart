// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.vpc_cidr_block_association; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/vpc_cidr_block_state.dart'
    as _i2;

part 'vpc_cidr_block_association.g.dart';

/// Describes an IPv4 CIDR block associated with a VPC.
abstract class VpcCidrBlockAssociation
    with _i1.AWSEquatable<VpcCidrBlockAssociation>
    implements Built<VpcCidrBlockAssociation, VpcCidrBlockAssociationBuilder> {
  /// Describes an IPv4 CIDR block associated with a VPC.
  factory VpcCidrBlockAssociation({
    String? associationId,
    String? cidrBlock,
    _i2.VpcCidrBlockState? cidrBlockState,
  }) {
    return _$VpcCidrBlockAssociation._(
      associationId: associationId,
      cidrBlock: cidrBlock,
      cidrBlockState: cidrBlockState,
    );
  }

  /// Describes an IPv4 CIDR block associated with a VPC.
  factory VpcCidrBlockAssociation.build(
          [void Function(VpcCidrBlockAssociationBuilder) updates]) =
      _$VpcCidrBlockAssociation;

  const VpcCidrBlockAssociation._();

  static const List<_i3.SmithySerializer> serializers = [
    VpcCidrBlockAssociationEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(VpcCidrBlockAssociationBuilder b) {}

  /// The association ID for the IPv4 CIDR block.
  String? get associationId;

  /// The IPv4 CIDR block.
  String? get cidrBlock;

  /// Information about the state of the CIDR block.
  _i2.VpcCidrBlockState? get cidrBlockState;
  @override
  List<Object?> get props => [
        associationId,
        cidrBlock,
        cidrBlockState,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('VpcCidrBlockAssociation');
    helper.add(
      'associationId',
      associationId,
    );
    helper.add(
      'cidrBlock',
      cidrBlock,
    );
    helper.add(
      'cidrBlockState',
      cidrBlockState,
    );
    return helper.toString();
  }
}

class VpcCidrBlockAssociationEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<VpcCidrBlockAssociation> {
  const VpcCidrBlockAssociationEc2QuerySerializer()
      : super('VpcCidrBlockAssociation');

  @override
  Iterable<Type> get types => const [
        VpcCidrBlockAssociation,
        _$VpcCidrBlockAssociation,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  VpcCidrBlockAssociation deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VpcCidrBlockAssociationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'associationId':
          result.associationId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'cidrBlock':
          result.cidrBlock = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'cidrBlockState':
          result.cidrBlockState.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.VpcCidrBlockState),
          ) as _i2.VpcCidrBlockState));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    VpcCidrBlockAssociation object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'VpcCidrBlockAssociationResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final VpcCidrBlockAssociation(:associationId, :cidrBlock, :cidrBlockState) =
        object;
    if (associationId != null) {
      result$
        ..add(const _i3.XmlElementName('AssociationId'))
        ..add(serializers.serialize(
          associationId,
          specifiedType: const FullType(String),
        ));
    }
    if (cidrBlock != null) {
      result$
        ..add(const _i3.XmlElementName('CidrBlock'))
        ..add(serializers.serialize(
          cidrBlock,
          specifiedType: const FullType(String),
        ));
    }
    if (cidrBlockState != null) {
      result$
        ..add(const _i3.XmlElementName('CidrBlockState'))
        ..add(serializers.serialize(
          cidrBlockState,
          specifiedType: const FullType(_i2.VpcCidrBlockState),
        ));
    }
    return result$;
  }
}
