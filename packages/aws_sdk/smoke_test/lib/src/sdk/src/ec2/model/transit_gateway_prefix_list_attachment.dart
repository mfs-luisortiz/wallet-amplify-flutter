// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.transit_gateway_prefix_list_attachment; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_attachment_resource_type.dart'
    as _i2;

part 'transit_gateway_prefix_list_attachment.g.dart';

/// Describes a transit gateway prefix list attachment.
abstract class TransitGatewayPrefixListAttachment
    with
        _i1.AWSEquatable<TransitGatewayPrefixListAttachment>
    implements
        Built<TransitGatewayPrefixListAttachment,
            TransitGatewayPrefixListAttachmentBuilder> {
  /// Describes a transit gateway prefix list attachment.
  factory TransitGatewayPrefixListAttachment({
    String? transitGatewayAttachmentId,
    _i2.TransitGatewayAttachmentResourceType? resourceType,
    String? resourceId,
  }) {
    return _$TransitGatewayPrefixListAttachment._(
      transitGatewayAttachmentId: transitGatewayAttachmentId,
      resourceType: resourceType,
      resourceId: resourceId,
    );
  }

  /// Describes a transit gateway prefix list attachment.
  factory TransitGatewayPrefixListAttachment.build(
          [void Function(TransitGatewayPrefixListAttachmentBuilder) updates]) =
      _$TransitGatewayPrefixListAttachment;

  const TransitGatewayPrefixListAttachment._();

  static const List<_i3.SmithySerializer> serializers = [
    TransitGatewayPrefixListAttachmentEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TransitGatewayPrefixListAttachmentBuilder b) {}

  /// The ID of the attachment.
  String? get transitGatewayAttachmentId;

  /// The resource type. Note that the `tgw-peering` resource type has been deprecated.
  _i2.TransitGatewayAttachmentResourceType? get resourceType;

  /// The ID of the resource.
  String? get resourceId;
  @override
  List<Object?> get props => [
        transitGatewayAttachmentId,
        resourceType,
        resourceId,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('TransitGatewayPrefixListAttachment');
    helper.add(
      'transitGatewayAttachmentId',
      transitGatewayAttachmentId,
    );
    helper.add(
      'resourceType',
      resourceType,
    );
    helper.add(
      'resourceId',
      resourceId,
    );
    return helper.toString();
  }
}

class TransitGatewayPrefixListAttachmentEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<TransitGatewayPrefixListAttachment> {
  const TransitGatewayPrefixListAttachmentEc2QuerySerializer()
      : super('TransitGatewayPrefixListAttachment');

  @override
  Iterable<Type> get types => const [
        TransitGatewayPrefixListAttachment,
        _$TransitGatewayPrefixListAttachment,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TransitGatewayPrefixListAttachment deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TransitGatewayPrefixListAttachmentBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'transitGatewayAttachmentId':
          result.transitGatewayAttachmentId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'resourceType':
          result.resourceType = (serializers.deserialize(
            value,
            specifiedType:
                const FullType(_i2.TransitGatewayAttachmentResourceType),
          ) as _i2.TransitGatewayAttachmentResourceType);
        case 'resourceId':
          result.resourceId = (serializers.deserialize(
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
    TransitGatewayPrefixListAttachment object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'TransitGatewayPrefixListAttachmentResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final TransitGatewayPrefixListAttachment(
      :transitGatewayAttachmentId,
      :resourceType,
      :resourceId
    ) = object;
    if (transitGatewayAttachmentId != null) {
      result$
        ..add(const _i3.XmlElementName('TransitGatewayAttachmentId'))
        ..add(serializers.serialize(
          transitGatewayAttachmentId,
          specifiedType: const FullType(String),
        ));
    }
    if (resourceType != null) {
      result$
        ..add(const _i3.XmlElementName('ResourceType'))
        ..add(serializers.serialize(
          resourceType,
          specifiedType:
              const FullType.nullable(_i2.TransitGatewayAttachmentResourceType),
        ));
    }
    if (resourceId != null) {
      result$
        ..add(const _i3.XmlElementName('ResourceId'))
        ..add(serializers.serialize(
          resourceId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
