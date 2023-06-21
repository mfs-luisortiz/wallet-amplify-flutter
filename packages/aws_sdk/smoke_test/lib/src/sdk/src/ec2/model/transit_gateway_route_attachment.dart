// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.transit_gateway_route_attachment; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_attachment_resource_type.dart'
    as _i2;

part 'transit_gateway_route_attachment.g.dart';

/// Describes a route attachment.
abstract class TransitGatewayRouteAttachment
    with
        _i1.AWSEquatable<TransitGatewayRouteAttachment>
    implements
        Built<TransitGatewayRouteAttachment,
            TransitGatewayRouteAttachmentBuilder> {
  /// Describes a route attachment.
  factory TransitGatewayRouteAttachment({
    String? resourceId,
    String? transitGatewayAttachmentId,
    _i2.TransitGatewayAttachmentResourceType? resourceType,
  }) {
    return _$TransitGatewayRouteAttachment._(
      resourceId: resourceId,
      transitGatewayAttachmentId: transitGatewayAttachmentId,
      resourceType: resourceType,
    );
  }

  /// Describes a route attachment.
  factory TransitGatewayRouteAttachment.build(
          [void Function(TransitGatewayRouteAttachmentBuilder) updates]) =
      _$TransitGatewayRouteAttachment;

  const TransitGatewayRouteAttachment._();

  static const List<_i3.SmithySerializer> serializers = [
    TransitGatewayRouteAttachmentEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TransitGatewayRouteAttachmentBuilder b) {}

  /// The ID of the resource.
  String? get resourceId;

  /// The ID of the attachment.
  String? get transitGatewayAttachmentId;

  /// The resource type. Note that the `tgw-peering` resource type has been deprecated.
  _i2.TransitGatewayAttachmentResourceType? get resourceType;
  @override
  List<Object?> get props => [
        resourceId,
        transitGatewayAttachmentId,
        resourceType,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TransitGatewayRouteAttachment');
    helper.add(
      'resourceId',
      resourceId,
    );
    helper.add(
      'transitGatewayAttachmentId',
      transitGatewayAttachmentId,
    );
    helper.add(
      'resourceType',
      resourceType,
    );
    return helper.toString();
  }
}

class TransitGatewayRouteAttachmentEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<TransitGatewayRouteAttachment> {
  const TransitGatewayRouteAttachmentEc2QuerySerializer()
      : super('TransitGatewayRouteAttachment');

  @override
  Iterable<Type> get types => const [
        TransitGatewayRouteAttachment,
        _$TransitGatewayRouteAttachment,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TransitGatewayRouteAttachment deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TransitGatewayRouteAttachmentBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'resourceId':
          result.resourceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
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
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    TransitGatewayRouteAttachment object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'TransitGatewayRouteAttachmentResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final TransitGatewayRouteAttachment(
      :resourceId,
      :transitGatewayAttachmentId,
      :resourceType
    ) = object;
    if (resourceId != null) {
      result$
        ..add(const _i3.XmlElementName('ResourceId'))
        ..add(serializers.serialize(
          resourceId,
          specifiedType: const FullType(String),
        ));
    }
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
    return result$;
  }
}
