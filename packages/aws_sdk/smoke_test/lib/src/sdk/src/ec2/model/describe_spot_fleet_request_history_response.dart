// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.describe_spot_fleet_request_history_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/history_record.dart' as _i2;

part 'describe_spot_fleet_request_history_response.g.dart';

/// Contains the output of DescribeSpotFleetRequestHistory.
abstract class DescribeSpotFleetRequestHistoryResponse
    with
        _i1.AWSEquatable<DescribeSpotFleetRequestHistoryResponse>
    implements
        Built<DescribeSpotFleetRequestHistoryResponse,
            DescribeSpotFleetRequestHistoryResponseBuilder> {
  /// Contains the output of DescribeSpotFleetRequestHistory.
  factory DescribeSpotFleetRequestHistoryResponse({
    List<_i2.HistoryRecord>? historyRecords,
    DateTime? lastEvaluatedTime,
    String? nextToken,
    String? spotFleetRequestId,
    DateTime? startTime,
  }) {
    return _$DescribeSpotFleetRequestHistoryResponse._(
      historyRecords:
          historyRecords == null ? null : _i3.BuiltList(historyRecords),
      lastEvaluatedTime: lastEvaluatedTime,
      nextToken: nextToken,
      spotFleetRequestId: spotFleetRequestId,
      startTime: startTime,
    );
  }

  /// Contains the output of DescribeSpotFleetRequestHistory.
  factory DescribeSpotFleetRequestHistoryResponse.build(
      [void Function(DescribeSpotFleetRequestHistoryResponseBuilder)
          updates]) = _$DescribeSpotFleetRequestHistoryResponse;

  const DescribeSpotFleetRequestHistoryResponse._();

  /// Constructs a [DescribeSpotFleetRequestHistoryResponse] from a [payload] and [response].
  factory DescribeSpotFleetRequestHistoryResponse.fromResponse(
    DescribeSpotFleetRequestHistoryResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeSpotFleetRequestHistoryResponseEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeSpotFleetRequestHistoryResponseBuilder b) {}

  /// Information about the events in the history of the Spot Fleet request.
  _i3.BuiltList<_i2.HistoryRecord>? get historyRecords;

  /// The last date and time for the events, in UTC format (for example, _YYYY_-_MM_-_DD_T_HH_:_MM_:_SS_Z). All records up to this time were retrieved.
  ///
  /// If `nextToken` indicates that there are more results, this value is not present.
  DateTime? get lastEvaluatedTime;

  /// The token required to retrieve the next set of results. This value is `null` when there are no more results to return.
  String? get nextToken;

  /// The ID of the Spot Fleet request.
  String? get spotFleetRequestId;

  /// The starting date and time for the events, in UTC format (for example, _YYYY_-_MM_-_DD_T_HH_:_MM_:_SS_Z).
  DateTime? get startTime;
  @override
  List<Object?> get props => [
        historyRecords,
        lastEvaluatedTime,
        nextToken,
        spotFleetRequestId,
        startTime,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeSpotFleetRequestHistoryResponse');
    helper.add(
      'historyRecords',
      historyRecords,
    );
    helper.add(
      'lastEvaluatedTime',
      lastEvaluatedTime,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    helper.add(
      'spotFleetRequestId',
      spotFleetRequestId,
    );
    helper.add(
      'startTime',
      startTime,
    );
    return helper.toString();
  }
}

class DescribeSpotFleetRequestHistoryResponseEc2QuerySerializer extends _i4
    .StructuredSmithySerializer<DescribeSpotFleetRequestHistoryResponse> {
  const DescribeSpotFleetRequestHistoryResponseEc2QuerySerializer()
      : super('DescribeSpotFleetRequestHistoryResponse');

  @override
  Iterable<Type> get types => const [
        DescribeSpotFleetRequestHistoryResponse,
        _$DescribeSpotFleetRequestHistoryResponse,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeSpotFleetRequestHistoryResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeSpotFleetRequestHistoryResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'historyRecordSet':
          result.historyRecords.replace((const _i4.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i4.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(_i2.HistoryRecord)],
            ),
          ) as _i3.BuiltList<_i2.HistoryRecord>));
        case 'lastEvaluatedTime':
          result.lastEvaluatedTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'nextToken':
          result.nextToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'spotFleetRequestId':
          result.spotFleetRequestId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'startTime':
          result.startTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeSpotFleetRequestHistoryResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i4.XmlElementName(
        'DescribeSpotFleetRequestHistoryResponseResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeSpotFleetRequestHistoryResponse(
      :historyRecords,
      :lastEvaluatedTime,
      :nextToken,
      :spotFleetRequestId,
      :startTime
    ) = object;
    if (historyRecords != null) {
      result$
        ..add(const _i4.XmlElementName('HistoryRecordSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          historyRecords,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.HistoryRecord)],
          ),
        ));
    }
    if (lastEvaluatedTime != null) {
      result$
        ..add(const _i4.XmlElementName('LastEvaluatedTime'))
        ..add(serializers.serialize(
          lastEvaluatedTime,
          specifiedType: const FullType.nullable(DateTime),
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
    if (spotFleetRequestId != null) {
      result$
        ..add(const _i4.XmlElementName('SpotFleetRequestId'))
        ..add(serializers.serialize(
          spotFleetRequestId,
          specifiedType: const FullType(String),
        ));
    }
    if (startTime != null) {
      result$
        ..add(const _i4.XmlElementName('StartTime'))
        ..add(serializers.serialize(
          startTime,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    return result$;
  }
}
