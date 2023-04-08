// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.delete_transit_gateway_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_transit_gateway_request.g.dart';

abstract class DeleteTransitGatewayRequest
    with
        _i1.HttpInput<DeleteTransitGatewayRequest>,
        _i2.AWSEquatable<DeleteTransitGatewayRequest>
    implements
        Built<DeleteTransitGatewayRequest, DeleteTransitGatewayRequestBuilder> {
  factory DeleteTransitGatewayRequest({
    required String transitGatewayId,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$DeleteTransitGatewayRequest._(
      transitGatewayId: transitGatewayId,
      dryRun: dryRun,
    );
  }

  factory DeleteTransitGatewayRequest.build(
          [void Function(DeleteTransitGatewayRequestBuilder) updates]) =
      _$DeleteTransitGatewayRequest;

  const DeleteTransitGatewayRequest._();

  factory DeleteTransitGatewayRequest.fromRequest(
    DeleteTransitGatewayRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DeleteTransitGatewayRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteTransitGatewayRequestBuilder b) {
    b.dryRun = false;
  }

  /// The ID of the transit gateway.
  String get transitGatewayId;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  DeleteTransitGatewayRequest getPayload() => this;
  @override
  List<Object?> get props => [
        transitGatewayId,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteTransitGatewayRequest');
    helper.add(
      'transitGatewayId',
      transitGatewayId,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    return helper.toString();
  }
}

class DeleteTransitGatewayRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DeleteTransitGatewayRequest> {
  const DeleteTransitGatewayRequestEc2QuerySerializer()
      : super('DeleteTransitGatewayRequest');

  @override
  Iterable<Type> get types => const [
        DeleteTransitGatewayRequest,
        _$DeleteTransitGatewayRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteTransitGatewayRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteTransitGatewayRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'TransitGatewayId':
          result.transitGatewayId = (serializers.deserialize(
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
    final payload = (object as DeleteTransitGatewayRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DeleteTransitGatewayRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('TransitGatewayId'))
      ..add(serializers.serialize(
        payload.transitGatewayId,
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
