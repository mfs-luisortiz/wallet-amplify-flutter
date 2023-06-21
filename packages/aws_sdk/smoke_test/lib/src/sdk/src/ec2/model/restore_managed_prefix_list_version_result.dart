// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.restore_managed_prefix_list_version_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/managed_prefix_list.dart'
    as _i2;

part 'restore_managed_prefix_list_version_result.g.dart';

abstract class RestoreManagedPrefixListVersionResult
    with
        _i1.AWSEquatable<RestoreManagedPrefixListVersionResult>
    implements
        Built<RestoreManagedPrefixListVersionResult,
            RestoreManagedPrefixListVersionResultBuilder> {
  factory RestoreManagedPrefixListVersionResult(
      {_i2.ManagedPrefixList? prefixList}) {
    return _$RestoreManagedPrefixListVersionResult._(prefixList: prefixList);
  }

  factory RestoreManagedPrefixListVersionResult.build(
      [void Function(RestoreManagedPrefixListVersionResultBuilder)
          updates]) = _$RestoreManagedPrefixListVersionResult;

  const RestoreManagedPrefixListVersionResult._();

  /// Constructs a [RestoreManagedPrefixListVersionResult] from a [payload] and [response].
  factory RestoreManagedPrefixListVersionResult.fromResponse(
    RestoreManagedPrefixListVersionResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    RestoreManagedPrefixListVersionResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RestoreManagedPrefixListVersionResultBuilder b) {}

  /// Information about the prefix list.
  _i2.ManagedPrefixList? get prefixList;
  @override
  List<Object?> get props => [prefixList];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('RestoreManagedPrefixListVersionResult');
    helper.add(
      'prefixList',
      prefixList,
    );
    return helper.toString();
  }
}

class RestoreManagedPrefixListVersionResultEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<RestoreManagedPrefixListVersionResult> {
  const RestoreManagedPrefixListVersionResultEc2QuerySerializer()
      : super('RestoreManagedPrefixListVersionResult');

  @override
  Iterable<Type> get types => const [
        RestoreManagedPrefixListVersionResult,
        _$RestoreManagedPrefixListVersionResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  RestoreManagedPrefixListVersionResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RestoreManagedPrefixListVersionResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'prefixList':
          result.prefixList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.ManagedPrefixList),
          ) as _i2.ManagedPrefixList));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    RestoreManagedPrefixListVersionResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'RestoreManagedPrefixListVersionResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final RestoreManagedPrefixListVersionResult(:prefixList) = object;
    if (prefixList != null) {
      result$
        ..add(const _i3.XmlElementName('PrefixList'))
        ..add(serializers.serialize(
          prefixList,
          specifiedType: const FullType(_i2.ManagedPrefixList),
        ));
    }
    return result$;
  }
}
