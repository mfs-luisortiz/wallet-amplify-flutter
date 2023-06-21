// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.create_transit_gateway_peering_attachment_request_options; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/dynamic_routing_value.dart'
    as _i2;

part 'create_transit_gateway_peering_attachment_request_options.g.dart';

/// Describes whether dynamic routing is enabled or disabled for the transit gateway peering request.
abstract class CreateTransitGatewayPeeringAttachmentRequestOptions
    with
        _i1.AWSEquatable<CreateTransitGatewayPeeringAttachmentRequestOptions>
    implements
        Built<CreateTransitGatewayPeeringAttachmentRequestOptions,
            CreateTransitGatewayPeeringAttachmentRequestOptionsBuilder> {
  /// Describes whether dynamic routing is enabled or disabled for the transit gateway peering request.
  factory CreateTransitGatewayPeeringAttachmentRequestOptions(
      {_i2.DynamicRoutingValue? dynamicRouting}) {
    return _$CreateTransitGatewayPeeringAttachmentRequestOptions._(
        dynamicRouting: dynamicRouting);
  }

  /// Describes whether dynamic routing is enabled or disabled for the transit gateway peering request.
  factory CreateTransitGatewayPeeringAttachmentRequestOptions.build(
      [void Function(CreateTransitGatewayPeeringAttachmentRequestOptionsBuilder)
          updates]) = _$CreateTransitGatewayPeeringAttachmentRequestOptions;

  const CreateTransitGatewayPeeringAttachmentRequestOptions._();

  static const List<_i3.SmithySerializer> serializers = [
    CreateTransitGatewayPeeringAttachmentRequestOptionsEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      CreateTransitGatewayPeeringAttachmentRequestOptionsBuilder b) {}

  /// Indicates whether dynamic routing is enabled or disabled.
  _i2.DynamicRoutingValue? get dynamicRouting;
  @override
  List<Object?> get props => [dynamicRouting];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'CreateTransitGatewayPeeringAttachmentRequestOptions');
    helper.add(
      'dynamicRouting',
      dynamicRouting,
    );
    return helper.toString();
  }
}

class CreateTransitGatewayPeeringAttachmentRequestOptionsEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<
        CreateTransitGatewayPeeringAttachmentRequestOptions> {
  const CreateTransitGatewayPeeringAttachmentRequestOptionsEc2QuerySerializer()
      : super('CreateTransitGatewayPeeringAttachmentRequestOptions');

  @override
  Iterable<Type> get types => const [
        CreateTransitGatewayPeeringAttachmentRequestOptions,
        _$CreateTransitGatewayPeeringAttachmentRequestOptions,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateTransitGatewayPeeringAttachmentRequestOptions deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateTransitGatewayPeeringAttachmentRequestOptionsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'DynamicRouting':
          result.dynamicRouting = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.DynamicRoutingValue),
          ) as _i2.DynamicRoutingValue);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CreateTransitGatewayPeeringAttachmentRequestOptions object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'CreateTransitGatewayPeeringAttachmentRequestOptionsResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateTransitGatewayPeeringAttachmentRequestOptions(:dynamicRouting) =
        object;
    if (dynamicRouting != null) {
      result$
        ..add(const _i3.XmlElementName('DynamicRouting'))
        ..add(serializers.serialize(
          dynamicRouting,
          specifiedType: const FullType.nullable(_i2.DynamicRoutingValue),
        ));
    }
    return result$;
  }
}
