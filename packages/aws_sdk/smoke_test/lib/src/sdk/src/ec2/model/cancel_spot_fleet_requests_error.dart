// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.cancel_spot_fleet_requests_error; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/cancel_batch_error_code.dart'
    as _i2;

part 'cancel_spot_fleet_requests_error.g.dart';

/// Describes a Spot Fleet error.
abstract class CancelSpotFleetRequestsError
    with
        _i1.AWSEquatable<CancelSpotFleetRequestsError>
    implements
        Built<CancelSpotFleetRequestsError,
            CancelSpotFleetRequestsErrorBuilder> {
  /// Describes a Spot Fleet error.
  factory CancelSpotFleetRequestsError({
    _i2.CancelBatchErrorCode? code,
    String? message,
  }) {
    return _$CancelSpotFleetRequestsError._(
      code: code,
      message: message,
    );
  }

  /// Describes a Spot Fleet error.
  factory CancelSpotFleetRequestsError.build(
          [void Function(CancelSpotFleetRequestsErrorBuilder) updates]) =
      _$CancelSpotFleetRequestsError;

  const CancelSpotFleetRequestsError._();

  static const List<_i3.SmithySerializer> serializers = [
    CancelSpotFleetRequestsErrorEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CancelSpotFleetRequestsErrorBuilder b) {}

  /// The error code.
  _i2.CancelBatchErrorCode? get code;

  /// The description for the error code.
  String? get message;
  @override
  List<Object?> get props => [
        code,
        message,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CancelSpotFleetRequestsError');
    helper.add(
      'code',
      code,
    );
    helper.add(
      'message',
      message,
    );
    return helper.toString();
  }
}

class CancelSpotFleetRequestsErrorEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<CancelSpotFleetRequestsError> {
  const CancelSpotFleetRequestsErrorEc2QuerySerializer()
      : super('CancelSpotFleetRequestsError');

  @override
  Iterable<Type> get types => const [
        CancelSpotFleetRequestsError,
        _$CancelSpotFleetRequestsError,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CancelSpotFleetRequestsError deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CancelSpotFleetRequestsErrorBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'code':
          result.code = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.CancelBatchErrorCode),
          ) as _i2.CancelBatchErrorCode);
        case 'message':
          result.message = (serializers.deserialize(
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
    CancelSpotFleetRequestsError object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'CancelSpotFleetRequestsErrorResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CancelSpotFleetRequestsError(:code, :message) = object;
    if (code != null) {
      result$
        ..add(const _i3.XmlElementName('Code'))
        ..add(serializers.serialize(
          code,
          specifiedType: const FullType.nullable(_i2.CancelBatchErrorCode),
        ));
    }
    if (message != null) {
      result$
        ..add(const _i3.XmlElementName('Message'))
        ..add(serializers.serialize(
          message,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
