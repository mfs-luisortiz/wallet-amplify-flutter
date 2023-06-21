// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.describe_network_insights_paths_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/network_insights_path.dart'
    as _i2;

part 'describe_network_insights_paths_result.g.dart';

abstract class DescribeNetworkInsightsPathsResult
    with
        _i1.AWSEquatable<DescribeNetworkInsightsPathsResult>
    implements
        Built<DescribeNetworkInsightsPathsResult,
            DescribeNetworkInsightsPathsResultBuilder> {
  factory DescribeNetworkInsightsPathsResult({
    List<_i2.NetworkInsightsPath>? networkInsightsPaths,
    String? nextToken,
  }) {
    return _$DescribeNetworkInsightsPathsResult._(
      networkInsightsPaths: networkInsightsPaths == null
          ? null
          : _i3.BuiltList(networkInsightsPaths),
      nextToken: nextToken,
    );
  }

  factory DescribeNetworkInsightsPathsResult.build(
          [void Function(DescribeNetworkInsightsPathsResultBuilder) updates]) =
      _$DescribeNetworkInsightsPathsResult;

  const DescribeNetworkInsightsPathsResult._();

  /// Constructs a [DescribeNetworkInsightsPathsResult] from a [payload] and [response].
  factory DescribeNetworkInsightsPathsResult.fromResponse(
    DescribeNetworkInsightsPathsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeNetworkInsightsPathsResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeNetworkInsightsPathsResultBuilder b) {}

  /// Information about the paths.
  _i3.BuiltList<_i2.NetworkInsightsPath>? get networkInsightsPaths;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        networkInsightsPaths,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeNetworkInsightsPathsResult');
    helper.add(
      'networkInsightsPaths',
      networkInsightsPaths,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeNetworkInsightsPathsResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<DescribeNetworkInsightsPathsResult> {
  const DescribeNetworkInsightsPathsResultEc2QuerySerializer()
      : super('DescribeNetworkInsightsPathsResult');

  @override
  Iterable<Type> get types => const [
        DescribeNetworkInsightsPathsResult,
        _$DescribeNetworkInsightsPathsResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeNetworkInsightsPathsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeNetworkInsightsPathsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'networkInsightsPathSet':
          result.networkInsightsPaths.replace((const _i4.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i4.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(_i2.NetworkInsightsPath)],
            ),
          ) as _i3.BuiltList<_i2.NetworkInsightsPath>));
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
    DescribeNetworkInsightsPathsResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i4.XmlElementName(
        'DescribeNetworkInsightsPathsResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeNetworkInsightsPathsResult(
      :networkInsightsPaths,
      :nextToken
    ) = object;
    if (networkInsightsPaths != null) {
      result$
        ..add(const _i4.XmlElementName('NetworkInsightsPathSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          networkInsightsPaths,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.NetworkInsightsPath)],
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
