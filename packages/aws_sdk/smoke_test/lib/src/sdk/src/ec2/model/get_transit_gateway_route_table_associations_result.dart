// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.get_transit_gateway_route_table_associations_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_route_table_association.dart'
    as _i2;

part 'get_transit_gateway_route_table_associations_result.g.dart';

abstract class GetTransitGatewayRouteTableAssociationsResult
    with
        _i1.AWSEquatable<GetTransitGatewayRouteTableAssociationsResult>
    implements
        Built<GetTransitGatewayRouteTableAssociationsResult,
            GetTransitGatewayRouteTableAssociationsResultBuilder> {
  factory GetTransitGatewayRouteTableAssociationsResult({
    List<_i2.TransitGatewayRouteTableAssociation>? associations,
    String? nextToken,
  }) {
    return _$GetTransitGatewayRouteTableAssociationsResult._(
      associations: associations == null ? null : _i3.BuiltList(associations),
      nextToken: nextToken,
    );
  }

  factory GetTransitGatewayRouteTableAssociationsResult.build(
      [void Function(GetTransitGatewayRouteTableAssociationsResultBuilder)
          updates]) = _$GetTransitGatewayRouteTableAssociationsResult;

  const GetTransitGatewayRouteTableAssociationsResult._();

  /// Constructs a [GetTransitGatewayRouteTableAssociationsResult] from a [payload] and [response].
  factory GetTransitGatewayRouteTableAssociationsResult.fromResponse(
    GetTransitGatewayRouteTableAssociationsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    GetTransitGatewayRouteTableAssociationsResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetTransitGatewayRouteTableAssociationsResultBuilder b) {}

  /// Information about the associations.
  _i3.BuiltList<_i2.TransitGatewayRouteTableAssociation>? get associations;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        associations,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'GetTransitGatewayRouteTableAssociationsResult');
    helper.add(
      'associations',
      associations,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class GetTransitGatewayRouteTableAssociationsResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<
        GetTransitGatewayRouteTableAssociationsResult> {
  const GetTransitGatewayRouteTableAssociationsResultEc2QuerySerializer()
      : super('GetTransitGatewayRouteTableAssociationsResult');

  @override
  Iterable<Type> get types => const [
        GetTransitGatewayRouteTableAssociationsResult,
        _$GetTransitGatewayRouteTableAssociationsResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetTransitGatewayRouteTableAssociationsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetTransitGatewayRouteTableAssociationsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'associations':
          result.associations.replace((const _i4.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i4.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(_i2.TransitGatewayRouteTableAssociation)],
            ),
          ) as _i3.BuiltList<_i2.TransitGatewayRouteTableAssociation>));
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
    GetTransitGatewayRouteTableAssociationsResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i4.XmlElementName(
        'GetTransitGatewayRouteTableAssociationsResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final GetTransitGatewayRouteTableAssociationsResult(
      :associations,
      :nextToken
    ) = object;
    if (associations != null) {
      result$
        ..add(const _i4.XmlElementName('Associations'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          associations,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.TransitGatewayRouteTableAssociation)],
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
