// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.describe_vpc_attribute_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/attribute_boolean_value.dart'
    as _i2;

part 'describe_vpc_attribute_result.g.dart';

abstract class DescribeVpcAttributeResult
    with _i1.AWSEquatable<DescribeVpcAttributeResult>
    implements
        Built<DescribeVpcAttributeResult, DescribeVpcAttributeResultBuilder> {
  factory DescribeVpcAttributeResult({
    String? vpcId,
    _i2.AttributeBooleanValue? enableDnsHostnames,
    _i2.AttributeBooleanValue? enableDnsSupport,
    _i2.AttributeBooleanValue? enableNetworkAddressUsageMetrics,
  }) {
    return _$DescribeVpcAttributeResult._(
      vpcId: vpcId,
      enableDnsHostnames: enableDnsHostnames,
      enableDnsSupport: enableDnsSupport,
      enableNetworkAddressUsageMetrics: enableNetworkAddressUsageMetrics,
    );
  }

  factory DescribeVpcAttributeResult.build(
          [void Function(DescribeVpcAttributeResultBuilder) updates]) =
      _$DescribeVpcAttributeResult;

  const DescribeVpcAttributeResult._();

  /// Constructs a [DescribeVpcAttributeResult] from a [payload] and [response].
  factory DescribeVpcAttributeResult.fromResponse(
    DescribeVpcAttributeResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    DescribeVpcAttributeResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeVpcAttributeResultBuilder b) {}

  /// The ID of the VPC.
  String? get vpcId;

  /// Indicates whether the instances launched in the VPC get DNS hostnames. If this attribute is `true`, instances in the VPC get DNS hostnames; otherwise, they do not.
  _i2.AttributeBooleanValue? get enableDnsHostnames;

  /// Indicates whether DNS resolution is enabled for the VPC. If this attribute is `true`, the Amazon DNS server resolves DNS hostnames for your instances to their corresponding IP addresses; otherwise, it does not.
  _i2.AttributeBooleanValue? get enableDnsSupport;

  /// Indicates whether Network Address Usage metrics are enabled for your VPC.
  _i2.AttributeBooleanValue? get enableNetworkAddressUsageMetrics;
  @override
  List<Object?> get props => [
        vpcId,
        enableDnsHostnames,
        enableDnsSupport,
        enableNetworkAddressUsageMetrics,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeVpcAttributeResult');
    helper.add(
      'vpcId',
      vpcId,
    );
    helper.add(
      'enableDnsHostnames',
      enableDnsHostnames,
    );
    helper.add(
      'enableDnsSupport',
      enableDnsSupport,
    );
    helper.add(
      'enableNetworkAddressUsageMetrics',
      enableNetworkAddressUsageMetrics,
    );
    return helper.toString();
  }
}

class DescribeVpcAttributeResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DescribeVpcAttributeResult> {
  const DescribeVpcAttributeResultEc2QuerySerializer()
      : super('DescribeVpcAttributeResult');

  @override
  Iterable<Type> get types => const [
        DescribeVpcAttributeResult,
        _$DescribeVpcAttributeResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeVpcAttributeResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeVpcAttributeResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'vpcId':
          result.vpcId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'enableDnsHostnames':
          result.enableDnsHostnames.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.AttributeBooleanValue),
          ) as _i2.AttributeBooleanValue));
        case 'enableDnsSupport':
          result.enableDnsSupport.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.AttributeBooleanValue),
          ) as _i2.AttributeBooleanValue));
        case 'enableNetworkAddressUsageMetrics':
          result.enableNetworkAddressUsageMetrics
              .replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.AttributeBooleanValue),
          ) as _i2.AttributeBooleanValue));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeVpcAttributeResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeVpcAttributeResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeVpcAttributeResult(
      :vpcId,
      :enableDnsHostnames,
      :enableDnsSupport,
      :enableNetworkAddressUsageMetrics
    ) = object;
    if (vpcId != null) {
      result$
        ..add(const _i3.XmlElementName('VpcId'))
        ..add(serializers.serialize(
          vpcId,
          specifiedType: const FullType(String),
        ));
    }
    if (enableDnsHostnames != null) {
      result$
        ..add(const _i3.XmlElementName('EnableDnsHostnames'))
        ..add(serializers.serialize(
          enableDnsHostnames,
          specifiedType: const FullType(_i2.AttributeBooleanValue),
        ));
    }
    if (enableDnsSupport != null) {
      result$
        ..add(const _i3.XmlElementName('EnableDnsSupport'))
        ..add(serializers.serialize(
          enableDnsSupport,
          specifiedType: const FullType(_i2.AttributeBooleanValue),
        ));
    }
    if (enableNetworkAddressUsageMetrics != null) {
      result$
        ..add(const _i3.XmlElementName('EnableNetworkAddressUsageMetrics'))
        ..add(serializers.serialize(
          enableNetworkAddressUsageMetrics,
          specifiedType: const FullType(_i2.AttributeBooleanValue),
        ));
    }
    return result$;
  }
}
