// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.transit_gateway_policy_table_association; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_association_state.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_attachment_resource_type.dart'
    as _i2;

part 'transit_gateway_policy_table_association.g.dart';

/// Describes a transit gateway policy table association.
abstract class TransitGatewayPolicyTableAssociation
    with
        _i1.AWSEquatable<TransitGatewayPolicyTableAssociation>
    implements
        Built<TransitGatewayPolicyTableAssociation,
            TransitGatewayPolicyTableAssociationBuilder> {
  /// Describes a transit gateway policy table association.
  factory TransitGatewayPolicyTableAssociation({
    String? transitGatewayPolicyTableId,
    String? transitGatewayAttachmentId,
    String? resourceId,
    _i2.TransitGatewayAttachmentResourceType? resourceType,
    _i3.TransitGatewayAssociationState? state,
  }) {
    return _$TransitGatewayPolicyTableAssociation._(
      transitGatewayPolicyTableId: transitGatewayPolicyTableId,
      transitGatewayAttachmentId: transitGatewayAttachmentId,
      resourceId: resourceId,
      resourceType: resourceType,
      state: state,
    );
  }

  /// Describes a transit gateway policy table association.
  factory TransitGatewayPolicyTableAssociation.build(
      [void Function(TransitGatewayPolicyTableAssociationBuilder)
          updates]) = _$TransitGatewayPolicyTableAssociation;

  const TransitGatewayPolicyTableAssociation._();

  static const List<_i4.SmithySerializer> serializers = [
    TransitGatewayPolicyTableAssociationEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TransitGatewayPolicyTableAssociationBuilder b) {}

  /// The ID of the transit gateway policy table.
  String? get transitGatewayPolicyTableId;

  /// The ID of the transit gateway attachment.
  String? get transitGatewayAttachmentId;

  /// The resource ID of the transit gateway attachment.
  String? get resourceId;

  /// The resource type for the transit gateway policy table association.
  _i2.TransitGatewayAttachmentResourceType? get resourceType;

  /// The state of the transit gateway policy table association.
  _i3.TransitGatewayAssociationState? get state;
  @override
  List<Object?> get props => [
        transitGatewayPolicyTableId,
        transitGatewayAttachmentId,
        resourceId,
        resourceType,
        state,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('TransitGatewayPolicyTableAssociation');
    helper.add(
      'transitGatewayPolicyTableId',
      transitGatewayPolicyTableId,
    );
    helper.add(
      'transitGatewayAttachmentId',
      transitGatewayAttachmentId,
    );
    helper.add(
      'resourceId',
      resourceId,
    );
    helper.add(
      'resourceType',
      resourceType,
    );
    helper.add(
      'state',
      state,
    );
    return helper.toString();
  }
}

class TransitGatewayPolicyTableAssociationEc2QuerySerializer extends _i4
    .StructuredSmithySerializer<TransitGatewayPolicyTableAssociation> {
  const TransitGatewayPolicyTableAssociationEc2QuerySerializer()
      : super('TransitGatewayPolicyTableAssociation');

  @override
  Iterable<Type> get types => const [
        TransitGatewayPolicyTableAssociation,
        _$TransitGatewayPolicyTableAssociation,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TransitGatewayPolicyTableAssociation deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TransitGatewayPolicyTableAssociationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'transitGatewayPolicyTableId':
          result.transitGatewayPolicyTableId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'transitGatewayAttachmentId':
          result.transitGatewayAttachmentId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'resourceId':
          result.resourceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'resourceType':
          result.resourceType = (serializers.deserialize(
            value,
            specifiedType:
                const FullType(_i2.TransitGatewayAttachmentResourceType),
          ) as _i2.TransitGatewayAttachmentResourceType);
        case 'state':
          result.state = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.TransitGatewayAssociationState),
          ) as _i3.TransitGatewayAssociationState);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    TransitGatewayPolicyTableAssociation object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i4.XmlElementName(
        'TransitGatewayPolicyTableAssociationResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final TransitGatewayPolicyTableAssociation(
      :transitGatewayPolicyTableId,
      :transitGatewayAttachmentId,
      :resourceId,
      :resourceType,
      :state
    ) = object;
    if (transitGatewayPolicyTableId != null) {
      result$
        ..add(const _i4.XmlElementName('TransitGatewayPolicyTableId'))
        ..add(serializers.serialize(
          transitGatewayPolicyTableId,
          specifiedType: const FullType(String),
        ));
    }
    if (transitGatewayAttachmentId != null) {
      result$
        ..add(const _i4.XmlElementName('TransitGatewayAttachmentId'))
        ..add(serializers.serialize(
          transitGatewayAttachmentId,
          specifiedType: const FullType(String),
        ));
    }
    if (resourceId != null) {
      result$
        ..add(const _i4.XmlElementName('ResourceId'))
        ..add(serializers.serialize(
          resourceId,
          specifiedType: const FullType(String),
        ));
    }
    if (resourceType != null) {
      result$
        ..add(const _i4.XmlElementName('ResourceType'))
        ..add(serializers.serialize(
          resourceType,
          specifiedType:
              const FullType.nullable(_i2.TransitGatewayAttachmentResourceType),
        ));
    }
    if (state != null) {
      result$
        ..add(const _i4.XmlElementName('State'))
        ..add(serializers.serialize(
          state,
          specifiedType:
              const FullType.nullable(_i3.TransitGatewayAssociationState),
        ));
    }
    return result$;
  }
}
