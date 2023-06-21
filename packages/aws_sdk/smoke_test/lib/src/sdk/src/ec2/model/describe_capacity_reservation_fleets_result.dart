// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.describe_capacity_reservation_fleets_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/capacity_reservation_fleet.dart'
    as _i2;

part 'describe_capacity_reservation_fleets_result.g.dart';

abstract class DescribeCapacityReservationFleetsResult
    with
        _i1.AWSEquatable<DescribeCapacityReservationFleetsResult>
    implements
        Built<DescribeCapacityReservationFleetsResult,
            DescribeCapacityReservationFleetsResultBuilder> {
  factory DescribeCapacityReservationFleetsResult({
    List<_i2.CapacityReservationFleet>? capacityReservationFleets,
    String? nextToken,
  }) {
    return _$DescribeCapacityReservationFleetsResult._(
      capacityReservationFleets: capacityReservationFleets == null
          ? null
          : _i3.BuiltList(capacityReservationFleets),
      nextToken: nextToken,
    );
  }

  factory DescribeCapacityReservationFleetsResult.build(
      [void Function(DescribeCapacityReservationFleetsResultBuilder)
          updates]) = _$DescribeCapacityReservationFleetsResult;

  const DescribeCapacityReservationFleetsResult._();

  /// Constructs a [DescribeCapacityReservationFleetsResult] from a [payload] and [response].
  factory DescribeCapacityReservationFleetsResult.fromResponse(
    DescribeCapacityReservationFleetsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeCapacityReservationFleetsResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeCapacityReservationFleetsResultBuilder b) {}

  /// Information about the Capacity Reservation Fleets.
  _i3.BuiltList<_i2.CapacityReservationFleet>? get capacityReservationFleets;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        capacityReservationFleets,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeCapacityReservationFleetsResult');
    helper.add(
      'capacityReservationFleets',
      capacityReservationFleets,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeCapacityReservationFleetsResultEc2QuerySerializer extends _i4
    .StructuredSmithySerializer<DescribeCapacityReservationFleetsResult> {
  const DescribeCapacityReservationFleetsResultEc2QuerySerializer()
      : super('DescribeCapacityReservationFleetsResult');

  @override
  Iterable<Type> get types => const [
        DescribeCapacityReservationFleetsResult,
        _$DescribeCapacityReservationFleetsResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeCapacityReservationFleetsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeCapacityReservationFleetsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'capacityReservationFleetSet':
          result.capacityReservationFleets
              .replace((const _i4.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i4.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(_i2.CapacityReservationFleet)],
            ),
          ) as _i3.BuiltList<_i2.CapacityReservationFleet>));
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
    DescribeCapacityReservationFleetsResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i4.XmlElementName(
        'DescribeCapacityReservationFleetsResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeCapacityReservationFleetsResult(
      :capacityReservationFleets,
      :nextToken
    ) = object;
    if (capacityReservationFleets != null) {
      result$
        ..add(const _i4.XmlElementName('CapacityReservationFleetSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          capacityReservationFleets,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.CapacityReservationFleet)],
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
