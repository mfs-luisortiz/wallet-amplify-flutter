// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.get_transit_gateway_policy_table_associations_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_policy_table_association.dart'
    as _i2;

part 'get_transit_gateway_policy_table_associations_result.g.dart';

abstract class GetTransitGatewayPolicyTableAssociationsResult
    with
        _i1.AWSEquatable<GetTransitGatewayPolicyTableAssociationsResult>
    implements
        Built<GetTransitGatewayPolicyTableAssociationsResult,
            GetTransitGatewayPolicyTableAssociationsResultBuilder> {
  factory GetTransitGatewayPolicyTableAssociationsResult({
    List<_i2.TransitGatewayPolicyTableAssociation>? associations,
    String? nextToken,
  }) {
    return _$GetTransitGatewayPolicyTableAssociationsResult._(
      associations: associations == null ? null : _i3.BuiltList(associations),
      nextToken: nextToken,
    );
  }

  factory GetTransitGatewayPolicyTableAssociationsResult.build(
      [void Function(GetTransitGatewayPolicyTableAssociationsResultBuilder)
          updates]) = _$GetTransitGatewayPolicyTableAssociationsResult;

  const GetTransitGatewayPolicyTableAssociationsResult._();

  /// Constructs a [GetTransitGatewayPolicyTableAssociationsResult] from a [payload] and [response].
  factory GetTransitGatewayPolicyTableAssociationsResult.fromResponse(
    GetTransitGatewayPolicyTableAssociationsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    GetTransitGatewayPolicyTableAssociationsResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetTransitGatewayPolicyTableAssociationsResultBuilder b) {}

  /// Returns details about the transit gateway policy table association.
  _i3.BuiltList<_i2.TransitGatewayPolicyTableAssociation>? get associations;

  /// The token for the next page of results.
  String? get nextToken;
  @override
  List<Object?> get props => [
        associations,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'GetTransitGatewayPolicyTableAssociationsResult');
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

class GetTransitGatewayPolicyTableAssociationsResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<
        GetTransitGatewayPolicyTableAssociationsResult> {
  const GetTransitGatewayPolicyTableAssociationsResultEc2QuerySerializer()
      : super('GetTransitGatewayPolicyTableAssociationsResult');

  @override
  Iterable<Type> get types => const [
        GetTransitGatewayPolicyTableAssociationsResult,
        _$GetTransitGatewayPolicyTableAssociationsResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetTransitGatewayPolicyTableAssociationsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetTransitGatewayPolicyTableAssociationsResultBuilder();
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
              [FullType(_i2.TransitGatewayPolicyTableAssociation)],
            ),
          ) as _i3.BuiltList<_i2.TransitGatewayPolicyTableAssociation>));
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
    GetTransitGatewayPolicyTableAssociationsResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i4.XmlElementName(
        'GetTransitGatewayPolicyTableAssociationsResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final GetTransitGatewayPolicyTableAssociationsResult(
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
            [FullType(_i2.TransitGatewayPolicyTableAssociation)],
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
