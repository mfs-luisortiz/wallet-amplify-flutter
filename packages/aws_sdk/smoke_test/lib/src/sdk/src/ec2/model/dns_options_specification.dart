// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.dns_options_specification; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/dns_record_ip_type.dart'
    as _i2;

part 'dns_options_specification.g.dart';

/// Describes the DNS options for an endpoint.
abstract class DnsOptionsSpecification
    with _i1.AWSEquatable<DnsOptionsSpecification>
    implements Built<DnsOptionsSpecification, DnsOptionsSpecificationBuilder> {
  /// Describes the DNS options for an endpoint.
  factory DnsOptionsSpecification({_i2.DnsRecordIpType? dnsRecordIpType}) {
    return _$DnsOptionsSpecification._(dnsRecordIpType: dnsRecordIpType);
  }

  /// Describes the DNS options for an endpoint.
  factory DnsOptionsSpecification.build(
          [void Function(DnsOptionsSpecificationBuilder) updates]) =
      _$DnsOptionsSpecification;

  const DnsOptionsSpecification._();

  static const List<_i3.SmithySerializer> serializers = [
    DnsOptionsSpecificationEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DnsOptionsSpecificationBuilder b) {}

  /// The DNS records created for the endpoint.
  _i2.DnsRecordIpType? get dnsRecordIpType;
  @override
  List<Object?> get props => [dnsRecordIpType];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DnsOptionsSpecification');
    helper.add(
      'dnsRecordIpType',
      dnsRecordIpType,
    );
    return helper.toString();
  }
}

class DnsOptionsSpecificationEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DnsOptionsSpecification> {
  const DnsOptionsSpecificationEc2QuerySerializer()
      : super('DnsOptionsSpecification');

  @override
  Iterable<Type> get types => const [
        DnsOptionsSpecification,
        _$DnsOptionsSpecification,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DnsOptionsSpecification deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DnsOptionsSpecificationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'DnsRecordIpType':
          result.dnsRecordIpType = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.DnsRecordIpType),
          ) as _i2.DnsRecordIpType);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DnsOptionsSpecification object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DnsOptionsSpecificationResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DnsOptionsSpecification(:dnsRecordIpType) = object;
    if (dnsRecordIpType != null) {
      result$
        ..add(const _i3.XmlElementName('DnsRecordIpType'))
        ..add(serializers.serialize(
          dnsRecordIpType,
          specifiedType: const FullType.nullable(_i2.DnsRecordIpType),
        ));
    }
    return result$;
  }
}
