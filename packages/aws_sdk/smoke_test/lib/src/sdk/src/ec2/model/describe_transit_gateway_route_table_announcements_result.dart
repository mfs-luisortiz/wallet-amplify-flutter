// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.describe_transit_gateway_route_table_announcements_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_route_table_announcement.dart'
    as _i2;

part 'describe_transit_gateway_route_table_announcements_result.g.dart';

abstract class DescribeTransitGatewayRouteTableAnnouncementsResult
    with
        _i1.AWSEquatable<DescribeTransitGatewayRouteTableAnnouncementsResult>
    implements
        Built<DescribeTransitGatewayRouteTableAnnouncementsResult,
            DescribeTransitGatewayRouteTableAnnouncementsResultBuilder> {
  factory DescribeTransitGatewayRouteTableAnnouncementsResult({
    List<_i2.TransitGatewayRouteTableAnnouncement>?
        transitGatewayRouteTableAnnouncements,
    String? nextToken,
  }) {
    return _$DescribeTransitGatewayRouteTableAnnouncementsResult._(
      transitGatewayRouteTableAnnouncements:
          transitGatewayRouteTableAnnouncements == null
              ? null
              : _i3.BuiltList(transitGatewayRouteTableAnnouncements),
      nextToken: nextToken,
    );
  }

  factory DescribeTransitGatewayRouteTableAnnouncementsResult.build(
      [void Function(DescribeTransitGatewayRouteTableAnnouncementsResultBuilder)
          updates]) = _$DescribeTransitGatewayRouteTableAnnouncementsResult;

  const DescribeTransitGatewayRouteTableAnnouncementsResult._();

  /// Constructs a [DescribeTransitGatewayRouteTableAnnouncementsResult] from a [payload] and [response].
  factory DescribeTransitGatewayRouteTableAnnouncementsResult.fromResponse(
    DescribeTransitGatewayRouteTableAnnouncementsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeTransitGatewayRouteTableAnnouncementsResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      DescribeTransitGatewayRouteTableAnnouncementsResultBuilder b) {}

  /// Describes the transit gateway route table announcement.
  _i3.BuiltList<_i2.TransitGatewayRouteTableAnnouncement>?
      get transitGatewayRouteTableAnnouncements;

  /// The token for the next page of results.
  String? get nextToken;
  @override
  List<Object?> get props => [
        transitGatewayRouteTableAnnouncements,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DescribeTransitGatewayRouteTableAnnouncementsResult');
    helper.add(
      'transitGatewayRouteTableAnnouncements',
      transitGatewayRouteTableAnnouncements,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeTransitGatewayRouteTableAnnouncementsResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<
        DescribeTransitGatewayRouteTableAnnouncementsResult> {
  const DescribeTransitGatewayRouteTableAnnouncementsResultEc2QuerySerializer()
      : super('DescribeTransitGatewayRouteTableAnnouncementsResult');

  @override
  Iterable<Type> get types => const [
        DescribeTransitGatewayRouteTableAnnouncementsResult,
        _$DescribeTransitGatewayRouteTableAnnouncementsResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeTransitGatewayRouteTableAnnouncementsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeTransitGatewayRouteTableAnnouncementsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'transitGatewayRouteTableAnnouncements':
          result.transitGatewayRouteTableAnnouncements
              .replace((const _i4.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i4.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(_i2.TransitGatewayRouteTableAnnouncement)],
            ),
          ) as _i3.BuiltList<_i2.TransitGatewayRouteTableAnnouncement>));
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
    DescribeTransitGatewayRouteTableAnnouncementsResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i4.XmlElementName(
        'DescribeTransitGatewayRouteTableAnnouncementsResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeTransitGatewayRouteTableAnnouncementsResult(
      :transitGatewayRouteTableAnnouncements,
      :nextToken
    ) = object;
    if (transitGatewayRouteTableAnnouncements != null) {
      result$
        ..add(const _i4.XmlElementName('TransitGatewayRouteTableAnnouncements'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          transitGatewayRouteTableAnnouncements,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.TransitGatewayRouteTableAnnouncement)],
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
