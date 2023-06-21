// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.transit_gateway_multicast_domain_associations; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/subnet_association.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_attachment_resource_type.dart'
    as _i2;

part 'transit_gateway_multicast_domain_associations.g.dart';

/// Describes the multicast domain associations.
abstract class TransitGatewayMulticastDomainAssociations
    with
        _i1.AWSEquatable<TransitGatewayMulticastDomainAssociations>
    implements
        Built<TransitGatewayMulticastDomainAssociations,
            TransitGatewayMulticastDomainAssociationsBuilder> {
  /// Describes the multicast domain associations.
  factory TransitGatewayMulticastDomainAssociations({
    String? transitGatewayMulticastDomainId,
    String? transitGatewayAttachmentId,
    String? resourceId,
    _i2.TransitGatewayAttachmentResourceType? resourceType,
    String? resourceOwnerId,
    List<_i3.SubnetAssociation>? subnets,
  }) {
    return _$TransitGatewayMulticastDomainAssociations._(
      transitGatewayMulticastDomainId: transitGatewayMulticastDomainId,
      transitGatewayAttachmentId: transitGatewayAttachmentId,
      resourceId: resourceId,
      resourceType: resourceType,
      resourceOwnerId: resourceOwnerId,
      subnets: subnets == null ? null : _i4.BuiltList(subnets),
    );
  }

  /// Describes the multicast domain associations.
  factory TransitGatewayMulticastDomainAssociations.build(
      [void Function(TransitGatewayMulticastDomainAssociationsBuilder)
          updates]) = _$TransitGatewayMulticastDomainAssociations;

  const TransitGatewayMulticastDomainAssociations._();

  static const List<_i5.SmithySerializer> serializers = [
    TransitGatewayMulticastDomainAssociationsEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TransitGatewayMulticastDomainAssociationsBuilder b) {}

  /// The ID of the transit gateway multicast domain.
  String? get transitGatewayMulticastDomainId;

  /// The ID of the transit gateway attachment.
  String? get transitGatewayAttachmentId;

  /// The ID of the resource.
  String? get resourceId;

  /// The type of resource, for example a VPC attachment.
  _i2.TransitGatewayAttachmentResourceType? get resourceType;

  /// The ID of the Amazon Web Services account that owns the resource.
  String? get resourceOwnerId;

  /// The subnets associated with the multicast domain.
  _i4.BuiltList<_i3.SubnetAssociation>? get subnets;
  @override
  List<Object?> get props => [
        transitGatewayMulticastDomainId,
        transitGatewayAttachmentId,
        resourceId,
        resourceType,
        resourceOwnerId,
        subnets,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'TransitGatewayMulticastDomainAssociations');
    helper.add(
      'transitGatewayMulticastDomainId',
      transitGatewayMulticastDomainId,
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
      'resourceOwnerId',
      resourceOwnerId,
    );
    helper.add(
      'subnets',
      subnets,
    );
    return helper.toString();
  }
}

class TransitGatewayMulticastDomainAssociationsEc2QuerySerializer extends _i5
    .StructuredSmithySerializer<TransitGatewayMulticastDomainAssociations> {
  const TransitGatewayMulticastDomainAssociationsEc2QuerySerializer()
      : super('TransitGatewayMulticastDomainAssociations');

  @override
  Iterable<Type> get types => const [
        TransitGatewayMulticastDomainAssociations,
        _$TransitGatewayMulticastDomainAssociations,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TransitGatewayMulticastDomainAssociations deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TransitGatewayMulticastDomainAssociationsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'transitGatewayMulticastDomainId':
          result.transitGatewayMulticastDomainId = (serializers.deserialize(
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
        case 'resourceOwnerId':
          result.resourceOwnerId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'subnets':
          result.subnets.replace((const _i5.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i5.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(_i3.SubnetAssociation)],
            ),
          ) as _i4.BuiltList<_i3.SubnetAssociation>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    TransitGatewayMulticastDomainAssociations object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i5.XmlElementName(
        'TransitGatewayMulticastDomainAssociationsResponse',
        _i5.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final TransitGatewayMulticastDomainAssociations(
      :transitGatewayMulticastDomainId,
      :transitGatewayAttachmentId,
      :resourceId,
      :resourceType,
      :resourceOwnerId,
      :subnets
    ) = object;
    if (transitGatewayMulticastDomainId != null) {
      result$
        ..add(const _i5.XmlElementName('TransitGatewayMulticastDomainId'))
        ..add(serializers.serialize(
          transitGatewayMulticastDomainId,
          specifiedType: const FullType(String),
        ));
    }
    if (transitGatewayAttachmentId != null) {
      result$
        ..add(const _i5.XmlElementName('TransitGatewayAttachmentId'))
        ..add(serializers.serialize(
          transitGatewayAttachmentId,
          specifiedType: const FullType(String),
        ));
    }
    if (resourceId != null) {
      result$
        ..add(const _i5.XmlElementName('ResourceId'))
        ..add(serializers.serialize(
          resourceId,
          specifiedType: const FullType(String),
        ));
    }
    if (resourceType != null) {
      result$
        ..add(const _i5.XmlElementName('ResourceType'))
        ..add(serializers.serialize(
          resourceType,
          specifiedType:
              const FullType.nullable(_i2.TransitGatewayAttachmentResourceType),
        ));
    }
    if (resourceOwnerId != null) {
      result$
        ..add(const _i5.XmlElementName('ResourceOwnerId'))
        ..add(serializers.serialize(
          resourceOwnerId,
          specifiedType: const FullType(String),
        ));
    }
    if (subnets != null) {
      result$
        ..add(const _i5.XmlElementName('Subnets'))
        ..add(const _i5.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i5.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          subnets,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i3.SubnetAssociation)],
          ),
        ));
    }
    return result$;
  }
}
