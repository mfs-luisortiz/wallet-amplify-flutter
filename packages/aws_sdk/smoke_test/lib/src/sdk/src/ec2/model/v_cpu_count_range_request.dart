// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.v_cpu_count_range_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'v_cpu_count_range_request.g.dart';

/// The minimum and maximum number of vCPUs.
abstract class VCpuCountRangeRequest
    with _i1.AWSEquatable<VCpuCountRangeRequest>
    implements Built<VCpuCountRangeRequest, VCpuCountRangeRequestBuilder> {
  /// The minimum and maximum number of vCPUs.
  factory VCpuCountRangeRequest({
    int? min,
    int? max,
  }) {
    min ??= 0;
    max ??= 0;
    return _$VCpuCountRangeRequest._(
      min: min,
      max: max,
    );
  }

  /// The minimum and maximum number of vCPUs.
  factory VCpuCountRangeRequest.build(
          [void Function(VCpuCountRangeRequestBuilder) updates]) =
      _$VCpuCountRangeRequest;

  const VCpuCountRangeRequest._();

  static const List<_i2.SmithySerializer> serializers = [
    VCpuCountRangeRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(VCpuCountRangeRequestBuilder b) {
    b.min = 0;
    b.max = 0;
  }

  /// The minimum number of vCPUs. To specify no minimum limit, specify `0`.
  int get min;

  /// The maximum number of vCPUs. To specify no maximum limit, omit this parameter.
  int get max;
  @override
  List<Object?> get props => [
        min,
        max,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('VCpuCountRangeRequest');
    helper.add(
      'min',
      min,
    );
    helper.add(
      'max',
      max,
    );
    return helper.toString();
  }
}

class VCpuCountRangeRequestEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<VCpuCountRangeRequest> {
  const VCpuCountRangeRequestEc2QuerySerializer()
      : super('VCpuCountRangeRequest');

  @override
  Iterable<Type> get types => const [
        VCpuCountRangeRequest,
        _$VCpuCountRangeRequest,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  VCpuCountRangeRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VCpuCountRangeRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Min':
          result.min = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'Max':
          result.max = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
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
    final payload = (object as VCpuCountRangeRequest);
    final result = <Object?>[
      const _i2.XmlElementName(
        'VCpuCountRangeRequestResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i2.XmlElementName('Min'))
      ..add(serializers.serialize(
        payload.min,
        specifiedType: const FullType(int),
      ));
    result
      ..add(const _i2.XmlElementName('Max'))
      ..add(serializers.serialize(
        payload.max,
        specifiedType: const FullType(int),
      ));
    return result;
  }
}
