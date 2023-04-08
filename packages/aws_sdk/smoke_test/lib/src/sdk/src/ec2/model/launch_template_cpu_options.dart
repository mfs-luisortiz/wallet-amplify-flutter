// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.launch_template_cpu_options; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'launch_template_cpu_options.g.dart';

/// The CPU options for the instance.
abstract class LaunchTemplateCpuOptions
    with _i1.AWSEquatable<LaunchTemplateCpuOptions>
    implements
        Built<LaunchTemplateCpuOptions, LaunchTemplateCpuOptionsBuilder> {
  /// The CPU options for the instance.
  factory LaunchTemplateCpuOptions({
    int? coreCount,
    int? threadsPerCore,
  }) {
    coreCount ??= 0;
    threadsPerCore ??= 0;
    return _$LaunchTemplateCpuOptions._(
      coreCount: coreCount,
      threadsPerCore: threadsPerCore,
    );
  }

  /// The CPU options for the instance.
  factory LaunchTemplateCpuOptions.build(
          [void Function(LaunchTemplateCpuOptionsBuilder) updates]) =
      _$LaunchTemplateCpuOptions;

  const LaunchTemplateCpuOptions._();

  static const List<_i2.SmithySerializer> serializers = [
    LaunchTemplateCpuOptionsEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(LaunchTemplateCpuOptionsBuilder b) {
    b.coreCount = 0;
    b.threadsPerCore = 0;
  }

  /// The number of CPU cores for the instance.
  int get coreCount;

  /// The number of threads per CPU core.
  int get threadsPerCore;
  @override
  List<Object?> get props => [
        coreCount,
        threadsPerCore,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('LaunchTemplateCpuOptions');
    helper.add(
      'coreCount',
      coreCount,
    );
    helper.add(
      'threadsPerCore',
      threadsPerCore,
    );
    return helper.toString();
  }
}

class LaunchTemplateCpuOptionsEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<LaunchTemplateCpuOptions> {
  const LaunchTemplateCpuOptionsEc2QuerySerializer()
      : super('LaunchTemplateCpuOptions');

  @override
  Iterable<Type> get types => const [
        LaunchTemplateCpuOptions,
        _$LaunchTemplateCpuOptions,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  LaunchTemplateCpuOptions deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LaunchTemplateCpuOptionsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'coreCount':
          result.coreCount = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'threadsPerCore':
          result.threadsPerCore = (serializers.deserialize(
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
    final payload = (object as LaunchTemplateCpuOptions);
    final result = <Object?>[
      const _i2.XmlElementName(
        'LaunchTemplateCpuOptionsResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i2.XmlElementName('CoreCount'))
      ..add(serializers.serialize(
        payload.coreCount,
        specifiedType: const FullType(int),
      ));
    result
      ..add(const _i2.XmlElementName('ThreadsPerCore'))
      ..add(serializers.serialize(
        payload.threadsPerCore,
        specifiedType: const FullType(int),
      ));
    return result;
  }
}
