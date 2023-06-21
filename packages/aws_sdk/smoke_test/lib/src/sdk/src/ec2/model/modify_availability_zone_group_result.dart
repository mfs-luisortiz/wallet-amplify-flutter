// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.modify_availability_zone_group_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'modify_availability_zone_group_result.g.dart';

abstract class ModifyAvailabilityZoneGroupResult
    with
        _i1.AWSEquatable<ModifyAvailabilityZoneGroupResult>
    implements
        Built<ModifyAvailabilityZoneGroupResult,
            ModifyAvailabilityZoneGroupResultBuilder> {
  factory ModifyAvailabilityZoneGroupResult({bool? return_}) {
    return_ ??= false;
    return _$ModifyAvailabilityZoneGroupResult._(return_: return_);
  }

  factory ModifyAvailabilityZoneGroupResult.build(
          [void Function(ModifyAvailabilityZoneGroupResultBuilder) updates]) =
      _$ModifyAvailabilityZoneGroupResult;

  const ModifyAvailabilityZoneGroupResult._();

  /// Constructs a [ModifyAvailabilityZoneGroupResult] from a [payload] and [response].
  factory ModifyAvailabilityZoneGroupResult.fromResponse(
    ModifyAvailabilityZoneGroupResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer> serializers = [
    ModifyAvailabilityZoneGroupResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyAvailabilityZoneGroupResultBuilder b) {
    b.return_ = false;
  }

  /// Is `true` if the request succeeds, and an error otherwise.
  bool get return_;
  @override
  List<Object?> get props => [return_];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ModifyAvailabilityZoneGroupResult');
    helper.add(
      'return_',
      return_,
    );
    return helper.toString();
  }
}

class ModifyAvailabilityZoneGroupResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<ModifyAvailabilityZoneGroupResult> {
  const ModifyAvailabilityZoneGroupResultEc2QuerySerializer()
      : super('ModifyAvailabilityZoneGroupResult');

  @override
  Iterable<Type> get types => const [
        ModifyAvailabilityZoneGroupResult,
        _$ModifyAvailabilityZoneGroupResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyAvailabilityZoneGroupResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyAvailabilityZoneGroupResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'return':
          result.return_ = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ModifyAvailabilityZoneGroupResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ModifyAvailabilityZoneGroupResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ModifyAvailabilityZoneGroupResult(:return_) = object;
    result$
      ..add(const _i2.XmlElementName('Return'))
      ..add(serializers.serialize(
        return_,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
