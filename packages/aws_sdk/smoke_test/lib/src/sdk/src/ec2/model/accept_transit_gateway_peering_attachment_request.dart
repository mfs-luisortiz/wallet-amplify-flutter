// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.accept_transit_gateway_peering_attachment_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'accept_transit_gateway_peering_attachment_request.g.dart';

abstract class AcceptTransitGatewayPeeringAttachmentRequest
    with
        _i1.HttpInput<AcceptTransitGatewayPeeringAttachmentRequest>,
        _i2.AWSEquatable<AcceptTransitGatewayPeeringAttachmentRequest>
    implements
        Built<AcceptTransitGatewayPeeringAttachmentRequest,
            AcceptTransitGatewayPeeringAttachmentRequestBuilder> {
  factory AcceptTransitGatewayPeeringAttachmentRequest({
    required String transitGatewayAttachmentId,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$AcceptTransitGatewayPeeringAttachmentRequest._(
      transitGatewayAttachmentId: transitGatewayAttachmentId,
      dryRun: dryRun,
    );
  }

  factory AcceptTransitGatewayPeeringAttachmentRequest.build(
      [void Function(AcceptTransitGatewayPeeringAttachmentRequestBuilder)
          updates]) = _$AcceptTransitGatewayPeeringAttachmentRequest;

  const AcceptTransitGatewayPeeringAttachmentRequest._();

  factory AcceptTransitGatewayPeeringAttachmentRequest.fromRequest(
    AcceptTransitGatewayPeeringAttachmentRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    AcceptTransitGatewayPeeringAttachmentRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AcceptTransitGatewayPeeringAttachmentRequestBuilder b) {
    b.dryRun = false;
  }

  /// The ID of the transit gateway attachment.
  String get transitGatewayAttachmentId;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  AcceptTransitGatewayPeeringAttachmentRequest getPayload() => this;
  @override
  List<Object?> get props => [
        transitGatewayAttachmentId,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'AcceptTransitGatewayPeeringAttachmentRequest');
    helper.add(
      'transitGatewayAttachmentId',
      transitGatewayAttachmentId,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    return helper.toString();
  }
}

class AcceptTransitGatewayPeeringAttachmentRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<AcceptTransitGatewayPeeringAttachmentRequest> {
  const AcceptTransitGatewayPeeringAttachmentRequestEc2QuerySerializer()
      : super('AcceptTransitGatewayPeeringAttachmentRequest');

  @override
  Iterable<Type> get types => const [
        AcceptTransitGatewayPeeringAttachmentRequest,
        _$AcceptTransitGatewayPeeringAttachmentRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AcceptTransitGatewayPeeringAttachmentRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AcceptTransitGatewayPeeringAttachmentRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'TransitGatewayAttachmentId':
          result.transitGatewayAttachmentId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as AcceptTransitGatewayPeeringAttachmentRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'AcceptTransitGatewayPeeringAttachmentRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('TransitGatewayAttachmentId'))
      ..add(serializers.serialize(
        payload.transitGatewayAttachmentId,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    return result;
  }
}
