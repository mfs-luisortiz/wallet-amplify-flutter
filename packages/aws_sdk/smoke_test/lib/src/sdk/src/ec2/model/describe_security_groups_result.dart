// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.describe_security_groups_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/security_group.dart' as _i2;

part 'describe_security_groups_result.g.dart';

abstract class DescribeSecurityGroupsResult
    with
        _i1.AWSEquatable<DescribeSecurityGroupsResult>
    implements
        Built<DescribeSecurityGroupsResult,
            DescribeSecurityGroupsResultBuilder> {
  factory DescribeSecurityGroupsResult({
    List<_i2.SecurityGroup>? securityGroups,
    String? nextToken,
  }) {
    return _$DescribeSecurityGroupsResult._(
      securityGroups:
          securityGroups == null ? null : _i3.BuiltList(securityGroups),
      nextToken: nextToken,
    );
  }

  factory DescribeSecurityGroupsResult.build(
          [void Function(DescribeSecurityGroupsResultBuilder) updates]) =
      _$DescribeSecurityGroupsResult;

  const DescribeSecurityGroupsResult._();

  /// Constructs a [DescribeSecurityGroupsResult] from a [payload] and [response].
  factory DescribeSecurityGroupsResult.fromResponse(
    DescribeSecurityGroupsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeSecurityGroupsResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeSecurityGroupsResultBuilder b) {}

  /// Information about the security groups.
  _i3.BuiltList<_i2.SecurityGroup>? get securityGroups;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        securityGroups,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeSecurityGroupsResult');
    helper.add(
      'securityGroups',
      securityGroups,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeSecurityGroupsResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<DescribeSecurityGroupsResult> {
  const DescribeSecurityGroupsResultEc2QuerySerializer()
      : super('DescribeSecurityGroupsResult');

  @override
  Iterable<Type> get types => const [
        DescribeSecurityGroupsResult,
        _$DescribeSecurityGroupsResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeSecurityGroupsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeSecurityGroupsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'securityGroupInfo':
          result.securityGroups.replace((const _i4.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i4.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(_i2.SecurityGroup)],
            ),
          ) as _i3.BuiltList<_i2.SecurityGroup>));
        case 'nextToken':
          result.nextToken = (serializers.deserialize(
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
    DescribeSecurityGroupsResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i4.XmlElementName(
        'DescribeSecurityGroupsResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeSecurityGroupsResult(:securityGroups, :nextToken) = object;
    if (securityGroups != null) {
      result$
        ..add(const _i4.XmlElementName('SecurityGroupInfo'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          securityGroups,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.SecurityGroup)],
          ),
        ));
    }
    if (nextToken != null) {
      result$
        ..add(const _i4.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
