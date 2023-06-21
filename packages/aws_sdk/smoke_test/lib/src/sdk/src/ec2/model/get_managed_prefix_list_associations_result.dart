// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.get_managed_prefix_list_associations_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/prefix_list_association.dart'
    as _i2;

part 'get_managed_prefix_list_associations_result.g.dart';

abstract class GetManagedPrefixListAssociationsResult
    with
        _i1.AWSEquatable<GetManagedPrefixListAssociationsResult>
    implements
        Built<GetManagedPrefixListAssociationsResult,
            GetManagedPrefixListAssociationsResultBuilder> {
  factory GetManagedPrefixListAssociationsResult({
    List<_i2.PrefixListAssociation>? prefixListAssociations,
    String? nextToken,
  }) {
    return _$GetManagedPrefixListAssociationsResult._(
      prefixListAssociations: prefixListAssociations == null
          ? null
          : _i3.BuiltList(prefixListAssociations),
      nextToken: nextToken,
    );
  }

  factory GetManagedPrefixListAssociationsResult.build(
      [void Function(GetManagedPrefixListAssociationsResultBuilder)
          updates]) = _$GetManagedPrefixListAssociationsResult;

  const GetManagedPrefixListAssociationsResult._();

  /// Constructs a [GetManagedPrefixListAssociationsResult] from a [payload] and [response].
  factory GetManagedPrefixListAssociationsResult.fromResponse(
    GetManagedPrefixListAssociationsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    GetManagedPrefixListAssociationsResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetManagedPrefixListAssociationsResultBuilder b) {}

  /// Information about the associations.
  _i3.BuiltList<_i2.PrefixListAssociation>? get prefixListAssociations;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        prefixListAssociations,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetManagedPrefixListAssociationsResult');
    helper.add(
      'prefixListAssociations',
      prefixListAssociations,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class GetManagedPrefixListAssociationsResultEc2QuerySerializer extends _i4
    .StructuredSmithySerializer<GetManagedPrefixListAssociationsResult> {
  const GetManagedPrefixListAssociationsResultEc2QuerySerializer()
      : super('GetManagedPrefixListAssociationsResult');

  @override
  Iterable<Type> get types => const [
        GetManagedPrefixListAssociationsResult,
        _$GetManagedPrefixListAssociationsResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetManagedPrefixListAssociationsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetManagedPrefixListAssociationsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'prefixListAssociationSet':
          result.prefixListAssociations
              .replace((const _i4.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i4.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(_i2.PrefixListAssociation)],
            ),
          ) as _i3.BuiltList<_i2.PrefixListAssociation>));
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
    GetManagedPrefixListAssociationsResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i4.XmlElementName(
        'GetManagedPrefixListAssociationsResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final GetManagedPrefixListAssociationsResult(
      :prefixListAssociations,
      :nextToken
    ) = object;
    if (prefixListAssociations != null) {
      result$
        ..add(const _i4.XmlElementName('PrefixListAssociationSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          prefixListAssociations,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.PrefixListAssociation)],
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
