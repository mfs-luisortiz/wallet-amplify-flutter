// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.network_insights_access_scope; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i2;

part 'network_insights_access_scope.g.dart';

/// Describes a Network Access Scope.
abstract class NetworkInsightsAccessScope
    with _i1.AWSEquatable<NetworkInsightsAccessScope>
    implements
        Built<NetworkInsightsAccessScope, NetworkInsightsAccessScopeBuilder> {
  /// Describes a Network Access Scope.
  factory NetworkInsightsAccessScope({
    String? networkInsightsAccessScopeId,
    String? networkInsightsAccessScopeArn,
    DateTime? createdDate,
    DateTime? updatedDate,
    List<_i2.Tag>? tags,
  }) {
    return _$NetworkInsightsAccessScope._(
      networkInsightsAccessScopeId: networkInsightsAccessScopeId,
      networkInsightsAccessScopeArn: networkInsightsAccessScopeArn,
      createdDate: createdDate,
      updatedDate: updatedDate,
      tags: tags == null ? null : _i3.BuiltList(tags),
    );
  }

  /// Describes a Network Access Scope.
  factory NetworkInsightsAccessScope.build(
          [void Function(NetworkInsightsAccessScopeBuilder) updates]) =
      _$NetworkInsightsAccessScope;

  const NetworkInsightsAccessScope._();

  static const List<_i4.SmithySerializer> serializers = [
    NetworkInsightsAccessScopeEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(NetworkInsightsAccessScopeBuilder b) {}

  /// The ID of the Network Access Scope.
  String? get networkInsightsAccessScopeId;

  /// The Amazon Resource Name (ARN) of the Network Access Scope.
  String? get networkInsightsAccessScopeArn;

  /// The creation date.
  DateTime? get createdDate;

  /// The last updated date.
  DateTime? get updatedDate;

  /// The tags.
  _i3.BuiltList<_i2.Tag>? get tags;
  @override
  List<Object?> get props => [
        networkInsightsAccessScopeId,
        networkInsightsAccessScopeArn,
        createdDate,
        updatedDate,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('NetworkInsightsAccessScope');
    helper.add(
      'networkInsightsAccessScopeId',
      networkInsightsAccessScopeId,
    );
    helper.add(
      'networkInsightsAccessScopeArn',
      networkInsightsAccessScopeArn,
    );
    helper.add(
      'createdDate',
      createdDate,
    );
    helper.add(
      'updatedDate',
      updatedDate,
    );
    helper.add(
      'tags',
      tags,
    );
    return helper.toString();
  }
}

class NetworkInsightsAccessScopeEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<NetworkInsightsAccessScope> {
  const NetworkInsightsAccessScopeEc2QuerySerializer()
      : super('NetworkInsightsAccessScope');

  @override
  Iterable<Type> get types => const [
        NetworkInsightsAccessScope,
        _$NetworkInsightsAccessScope,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  NetworkInsightsAccessScope deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NetworkInsightsAccessScopeBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'networkInsightsAccessScopeId':
          result.networkInsightsAccessScopeId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'networkInsightsAccessScopeArn':
          result.networkInsightsAccessScopeArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'createdDate':
          result.createdDate = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'updatedDate':
          result.updatedDate = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'tagSet':
          result.tags.replace((const _i4.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i4.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(_i2.Tag)],
            ),
          ) as _i3.BuiltList<_i2.Tag>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    NetworkInsightsAccessScope object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i4.XmlElementName(
        'NetworkInsightsAccessScopeResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final NetworkInsightsAccessScope(
      :networkInsightsAccessScopeId,
      :networkInsightsAccessScopeArn,
      :createdDate,
      :updatedDate,
      :tags
    ) = object;
    if (networkInsightsAccessScopeId != null) {
      result$
        ..add(const _i4.XmlElementName('NetworkInsightsAccessScopeId'))
        ..add(serializers.serialize(
          networkInsightsAccessScopeId,
          specifiedType: const FullType(String),
        ));
    }
    if (networkInsightsAccessScopeArn != null) {
      result$
        ..add(const _i4.XmlElementName('NetworkInsightsAccessScopeArn'))
        ..add(serializers.serialize(
          networkInsightsAccessScopeArn,
          specifiedType: const FullType(String),
        ));
    }
    if (createdDate != null) {
      result$
        ..add(const _i4.XmlElementName('CreatedDate'))
        ..add(serializers.serialize(
          createdDate,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (updatedDate != null) {
      result$
        ..add(const _i4.XmlElementName('UpdatedDate'))
        ..add(serializers.serialize(
          updatedDate,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (tags != null) {
      result$
        ..add(const _i4.XmlElementName('TagSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          tags,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.Tag)],
          ),
        ));
    }
    return result$;
  }
}
