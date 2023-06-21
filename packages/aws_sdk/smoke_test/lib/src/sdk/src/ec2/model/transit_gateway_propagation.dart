// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.transit_gateway_propagation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_attachment_resource_type.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_propagation_state.dart'
    as _i3;

part 'transit_gateway_propagation.g.dart';

/// Describes route propagation.
abstract class TransitGatewayPropagation
    with _i1.AWSEquatable<TransitGatewayPropagation>
    implements
        Built<TransitGatewayPropagation, TransitGatewayPropagationBuilder> {
  /// Describes route propagation.
  factory TransitGatewayPropagation({
    String? transitGatewayAttachmentId,
    String? resourceId,
    _i2.TransitGatewayAttachmentResourceType? resourceType,
    String? transitGatewayRouteTableId,
    _i3.TransitGatewayPropagationState? state,
    String? transitGatewayRouteTableAnnouncementId,
  }) {
    return _$TransitGatewayPropagation._(
      transitGatewayAttachmentId: transitGatewayAttachmentId,
      resourceId: resourceId,
      resourceType: resourceType,
      transitGatewayRouteTableId: transitGatewayRouteTableId,
      state: state,
      transitGatewayRouteTableAnnouncementId:
          transitGatewayRouteTableAnnouncementId,
    );
  }

  /// Describes route propagation.
  factory TransitGatewayPropagation.build(
          [void Function(TransitGatewayPropagationBuilder) updates]) =
      _$TransitGatewayPropagation;

  const TransitGatewayPropagation._();

  static const List<_i4.SmithySerializer> serializers = [
    TransitGatewayPropagationEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TransitGatewayPropagationBuilder b) {}

  /// The ID of the attachment.
  String? get transitGatewayAttachmentId;

  /// The ID of the resource.
  String? get resourceId;

  /// The resource type. Note that the `tgw-peering` resource type has been deprecated.
  _i2.TransitGatewayAttachmentResourceType? get resourceType;

  /// The ID of the transit gateway route table.
  String? get transitGatewayRouteTableId;

  /// The state.
  _i3.TransitGatewayPropagationState? get state;

  /// The ID of the transit gateway route table announcement.
  String? get transitGatewayRouteTableAnnouncementId;
  @override
  List<Object?> get props => [
        transitGatewayAttachmentId,
        resourceId,
        resourceType,
        transitGatewayRouteTableId,
        state,
        transitGatewayRouteTableAnnouncementId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TransitGatewayPropagation');
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
      'transitGatewayRouteTableId',
      transitGatewayRouteTableId,
    );
    helper.add(
      'state',
      state,
    );
    helper.add(
      'transitGatewayRouteTableAnnouncementId',
      transitGatewayRouteTableAnnouncementId,
    );
    return helper.toString();
  }
}

class TransitGatewayPropagationEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<TransitGatewayPropagation> {
  const TransitGatewayPropagationEc2QuerySerializer()
      : super('TransitGatewayPropagation');

  @override
  Iterable<Type> get types => const [
        TransitGatewayPropagation,
        _$TransitGatewayPropagation,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TransitGatewayPropagation deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TransitGatewayPropagationBuilder();
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
        case 'transitGatewayRouteTableId':
          result.transitGatewayRouteTableId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'state':
          result.state = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.TransitGatewayPropagationState),
          ) as _i3.TransitGatewayPropagationState);
        case 'transitGatewayRouteTableAnnouncementId':
          result.transitGatewayRouteTableAnnouncementId =
              (serializers.deserialize(
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
    TransitGatewayPropagation object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i4.XmlElementName(
        'TransitGatewayPropagationResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final TransitGatewayPropagation(
      :transitGatewayAttachmentId,
      :resourceId,
      :resourceType,
      :transitGatewayRouteTableId,
      :state,
      :transitGatewayRouteTableAnnouncementId
    ) = object;
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
    if (transitGatewayRouteTableId != null) {
      result$
        ..add(const _i4.XmlElementName('TransitGatewayRouteTableId'))
        ..add(serializers.serialize(
          transitGatewayRouteTableId,
          specifiedType: const FullType(String),
        ));
    }
    if (state != null) {
      result$
        ..add(const _i4.XmlElementName('State'))
        ..add(serializers.serialize(
          state,
          specifiedType:
              const FullType.nullable(_i3.TransitGatewayPropagationState),
        ));
    }
    if (transitGatewayRouteTableAnnouncementId != null) {
      result$
        ..add(
            const _i4.XmlElementName('TransitGatewayRouteTableAnnouncementId'))
        ..add(serializers.serialize(
          transitGatewayRouteTableAnnouncementId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
