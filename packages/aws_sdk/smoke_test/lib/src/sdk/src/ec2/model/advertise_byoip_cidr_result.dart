// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.advertise_byoip_cidr_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/byoip_cidr.dart' as _i2;

part 'advertise_byoip_cidr_result.g.dart';

abstract class AdvertiseByoipCidrResult
    with _i1.AWSEquatable<AdvertiseByoipCidrResult>
    implements
        Built<AdvertiseByoipCidrResult, AdvertiseByoipCidrResultBuilder> {
  factory AdvertiseByoipCidrResult({_i2.ByoipCidr? byoipCidr}) {
    return _$AdvertiseByoipCidrResult._(byoipCidr: byoipCidr);
  }

  factory AdvertiseByoipCidrResult.build(
          [void Function(AdvertiseByoipCidrResultBuilder) updates]) =
      _$AdvertiseByoipCidrResult;

  const AdvertiseByoipCidrResult._();

  /// Constructs a [AdvertiseByoipCidrResult] from a [payload] and [response].
  factory AdvertiseByoipCidrResult.fromResponse(
    AdvertiseByoipCidrResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    AdvertiseByoipCidrResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AdvertiseByoipCidrResultBuilder b) {}

  /// Information about the address range.
  _i2.ByoipCidr? get byoipCidr;
  @override
  List<Object?> get props => [byoipCidr];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AdvertiseByoipCidrResult');
    helper.add(
      'byoipCidr',
      byoipCidr,
    );
    return helper.toString();
  }
}

class AdvertiseByoipCidrResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<AdvertiseByoipCidrResult> {
  const AdvertiseByoipCidrResultEc2QuerySerializer()
      : super('AdvertiseByoipCidrResult');

  @override
  Iterable<Type> get types => const [
        AdvertiseByoipCidrResult,
        _$AdvertiseByoipCidrResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AdvertiseByoipCidrResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AdvertiseByoipCidrResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'byoipCidr':
          result.byoipCidr.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.ByoipCidr),
          ) as _i2.ByoipCidr));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    AdvertiseByoipCidrResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'AdvertiseByoipCidrResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final AdvertiseByoipCidrResult(:byoipCidr) = object;
    if (byoipCidr != null) {
      result$
        ..add(const _i3.XmlElementName('ByoipCidr'))
        ..add(serializers.serialize(
          byoipCidr,
          specifiedType: const FullType(_i2.ByoipCidr),
        ));
    }
    return result$;
  }
}
