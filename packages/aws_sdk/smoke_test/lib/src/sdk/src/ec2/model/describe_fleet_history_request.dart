// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.describe_fleet_history_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_event_type.dart' as _i3;

part 'describe_fleet_history_request.g.dart';

abstract class DescribeFleetHistoryRequest
    with
        _i1.HttpInput<DescribeFleetHistoryRequest>,
        _i2.AWSEquatable<DescribeFleetHistoryRequest>
    implements
        Built<DescribeFleetHistoryRequest, DescribeFleetHistoryRequestBuilder> {
  factory DescribeFleetHistoryRequest({
    bool? dryRun,
    _i3.FleetEventType? eventType,
    int? maxResults,
    String? nextToken,
    required String fleetId,
    required DateTime startTime,
  }) {
    dryRun ??= false;
    maxResults ??= 0;
    return _$DescribeFleetHistoryRequest._(
      dryRun: dryRun,
      eventType: eventType,
      maxResults: maxResults,
      nextToken: nextToken,
      fleetId: fleetId,
      startTime: startTime,
    );
  }

  factory DescribeFleetHistoryRequest.build(
          [void Function(DescribeFleetHistoryRequestBuilder) updates]) =
      _$DescribeFleetHistoryRequest;

  const DescribeFleetHistoryRequest._();

  factory DescribeFleetHistoryRequest.fromRequest(
    DescribeFleetHistoryRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DescribeFleetHistoryRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeFleetHistoryRequestBuilder b) {
    b.dryRun = false;
    b.maxResults = 0;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The type of events to describe. By default, all events are described.
  _i3.FleetEventType? get eventType;

  /// The maximum number of results to return in a single call. Specify a value between 1 and 1000. The default value is 1000. To retrieve the remaining results, make another call with the returned `NextToken` value.
  int get maxResults;

  /// The token for the next set of results.
  String? get nextToken;

  /// The ID of the EC2 Fleet.
  String get fleetId;

  /// The start date and time for the events, in UTC format (for example, _YYYY_-_MM_-_DD_T_HH_:_MM_:_SS_Z).
  DateTime get startTime;
  @override
  DescribeFleetHistoryRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        eventType,
        maxResults,
        nextToken,
        fleetId,
        startTime,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeFleetHistoryRequest');
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'eventType',
      eventType,
    );
    helper.add(
      'maxResults',
      maxResults,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    helper.add(
      'fleetId',
      fleetId,
    );
    helper.add(
      'startTime',
      startTime,
    );
    return helper.toString();
  }
}

class DescribeFleetHistoryRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DescribeFleetHistoryRequest> {
  const DescribeFleetHistoryRequestEc2QuerySerializer()
      : super('DescribeFleetHistoryRequest');

  @override
  Iterable<Type> get types => const [
        DescribeFleetHistoryRequest,
        _$DescribeFleetHistoryRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeFleetHistoryRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeFleetHistoryRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'EventType':
          result.eventType = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.FleetEventType),
          ) as _i3.FleetEventType);
        case 'MaxResults':
          result.maxResults = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'NextToken':
          result.nextToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'FleetId':
          result.fleetId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'StartTime':
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
    DescribeFleetHistoryRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DescribeFleetHistoryRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeFleetHistoryRequest(
      :dryRun,
      :eventType,
      :maxResults,
      :nextToken,
      :fleetId,
      :startTime
    ) = object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (eventType != null) {
      result$
        ..add(const _i1.XmlElementName('EventType'))
        ..add(serializers.serialize(
          eventType,
          specifiedType: const FullType.nullable(_i3.FleetEventType),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('MaxResults'))
      ..add(serializers.serialize(
        maxResults,
        specifiedType: const FullType(int),
      ));
    if (nextToken != null) {
      result$
        ..add(const _i1.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('FleetId'))
      ..add(serializers.serialize(
        fleetId,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i1.XmlElementName('StartTime'))
      ..add(serializers.serialize(
        startTime,
        specifiedType: const FullType.nullable(DateTime),
      ));
    return result$;
  }
}
