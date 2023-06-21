// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.delete_transit_gateway_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway.dart' as _i2;

part 'delete_transit_gateway_result.g.dart';

abstract class DeleteTransitGatewayResult
    with _i1.AWSEquatable<DeleteTransitGatewayResult>
    implements
        Built<DeleteTransitGatewayResult, DeleteTransitGatewayResultBuilder> {
  factory DeleteTransitGatewayResult({_i2.TransitGateway? transitGateway}) {
    return _$DeleteTransitGatewayResult._(transitGateway: transitGateway);
  }

  factory DeleteTransitGatewayResult.build(
          [void Function(DeleteTransitGatewayResultBuilder) updates]) =
      _$DeleteTransitGatewayResult;

  const DeleteTransitGatewayResult._();

  /// Constructs a [DeleteTransitGatewayResult] from a [payload] and [response].
  factory DeleteTransitGatewayResult.fromResponse(
    DeleteTransitGatewayResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    DeleteTransitGatewayResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteTransitGatewayResultBuilder b) {}

  /// Information about the deleted transit gateway.
  _i2.TransitGateway? get transitGateway;
  @override
  List<Object?> get props => [transitGateway];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteTransitGatewayResult');
    helper.add(
      'transitGateway',
      transitGateway,
    );
    return helper.toString();
  }
}

class DeleteTransitGatewayResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DeleteTransitGatewayResult> {
  const DeleteTransitGatewayResultEc2QuerySerializer()
      : super('DeleteTransitGatewayResult');

  @override
  Iterable<Type> get types => const [
        DeleteTransitGatewayResult,
        _$DeleteTransitGatewayResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteTransitGatewayResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteTransitGatewayResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'transitGateway':
          result.transitGateway.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.TransitGateway),
          ) as _i2.TransitGateway));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DeleteTransitGatewayResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DeleteTransitGatewayResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DeleteTransitGatewayResult(:transitGateway) = object;
    if (transitGateway != null) {
      result$
        ..add(const _i3.XmlElementName('TransitGateway'))
        ..add(serializers.serialize(
          transitGateway,
          specifiedType: const FullType(_i2.TransitGateway),
        ));
    }
    return result$;
  }
}
