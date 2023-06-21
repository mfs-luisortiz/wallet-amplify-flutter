// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.import_instance_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/conversion_task.dart' as _i2;

part 'import_instance_result.g.dart';

abstract class ImportInstanceResult
    with _i1.AWSEquatable<ImportInstanceResult>
    implements Built<ImportInstanceResult, ImportInstanceResultBuilder> {
  factory ImportInstanceResult({_i2.ConversionTask? conversionTask}) {
    return _$ImportInstanceResult._(conversionTask: conversionTask);
  }

  factory ImportInstanceResult.build(
          [void Function(ImportInstanceResultBuilder) updates]) =
      _$ImportInstanceResult;

  const ImportInstanceResult._();

  /// Constructs a [ImportInstanceResult] from a [payload] and [response].
  factory ImportInstanceResult.fromResponse(
    ImportInstanceResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    ImportInstanceResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ImportInstanceResultBuilder b) {}

  /// Information about the conversion task.
  _i2.ConversionTask? get conversionTask;
  @override
  List<Object?> get props => [conversionTask];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ImportInstanceResult');
    helper.add(
      'conversionTask',
      conversionTask,
    );
    return helper.toString();
  }
}

class ImportInstanceResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<ImportInstanceResult> {
  const ImportInstanceResultEc2QuerySerializer()
      : super('ImportInstanceResult');

  @override
  Iterable<Type> get types => const [
        ImportInstanceResult,
        _$ImportInstanceResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ImportInstanceResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ImportInstanceResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'conversionTask':
          result.conversionTask.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.ConversionTask),
          ) as _i2.ConversionTask));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ImportInstanceResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'ImportInstanceResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ImportInstanceResult(:conversionTask) = object;
    if (conversionTask != null) {
      result$
        ..add(const _i3.XmlElementName('ConversionTask'))
        ..add(serializers.serialize(
          conversionTask,
          specifiedType: const FullType(_i2.ConversionTask),
        ));
    }
    return result$;
  }
}
