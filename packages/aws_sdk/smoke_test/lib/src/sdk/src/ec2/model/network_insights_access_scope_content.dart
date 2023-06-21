// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.network_insights_access_scope_content; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/access_scope_path.dart' as _i2;

part 'network_insights_access_scope_content.g.dart';

/// Describes the Network Access Scope content.
abstract class NetworkInsightsAccessScopeContent
    with
        _i1.AWSEquatable<NetworkInsightsAccessScopeContent>
    implements
        Built<NetworkInsightsAccessScopeContent,
            NetworkInsightsAccessScopeContentBuilder> {
  /// Describes the Network Access Scope content.
  factory NetworkInsightsAccessScopeContent({
    String? networkInsightsAccessScopeId,
    List<_i2.AccessScopePath>? matchPaths,
    List<_i2.AccessScopePath>? excludePaths,
  }) {
    return _$NetworkInsightsAccessScopeContent._(
      networkInsightsAccessScopeId: networkInsightsAccessScopeId,
      matchPaths: matchPaths == null ? null : _i3.BuiltList(matchPaths),
      excludePaths: excludePaths == null ? null : _i3.BuiltList(excludePaths),
    );
  }

  /// Describes the Network Access Scope content.
  factory NetworkInsightsAccessScopeContent.build(
          [void Function(NetworkInsightsAccessScopeContentBuilder) updates]) =
      _$NetworkInsightsAccessScopeContent;

  const NetworkInsightsAccessScopeContent._();

  static const List<_i4.SmithySerializer> serializers = [
    NetworkInsightsAccessScopeContentEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(NetworkInsightsAccessScopeContentBuilder b) {}

  /// The ID of the Network Access Scope.
  String? get networkInsightsAccessScopeId;

  /// The paths to match.
  _i3.BuiltList<_i2.AccessScopePath>? get matchPaths;

  /// The paths to exclude.
  _i3.BuiltList<_i2.AccessScopePath>? get excludePaths;
  @override
  List<Object?> get props => [
        networkInsightsAccessScopeId,
        matchPaths,
        excludePaths,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('NetworkInsightsAccessScopeContent');
    helper.add(
      'networkInsightsAccessScopeId',
      networkInsightsAccessScopeId,
    );
    helper.add(
      'matchPaths',
      matchPaths,
    );
    helper.add(
      'excludePaths',
      excludePaths,
    );
    return helper.toString();
  }
}

class NetworkInsightsAccessScopeContentEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<NetworkInsightsAccessScopeContent> {
  const NetworkInsightsAccessScopeContentEc2QuerySerializer()
      : super('NetworkInsightsAccessScopeContent');

  @override
  Iterable<Type> get types => const [
        NetworkInsightsAccessScopeContent,
        _$NetworkInsightsAccessScopeContent,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  NetworkInsightsAccessScopeContent deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NetworkInsightsAccessScopeContentBuilder();
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
        case 'matchPathSet':
          result.matchPaths.replace((const _i4.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i4.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(_i2.AccessScopePath)],
            ),
          ) as _i3.BuiltList<_i2.AccessScopePath>));
        case 'excludePathSet':
          result.excludePaths.replace((const _i4.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i4.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(_i2.AccessScopePath)],
            ),
          ) as _i3.BuiltList<_i2.AccessScopePath>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    NetworkInsightsAccessScopeContent object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i4.XmlElementName(
        'NetworkInsightsAccessScopeContentResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final NetworkInsightsAccessScopeContent(
      :networkInsightsAccessScopeId,
      :matchPaths,
      :excludePaths
    ) = object;
    if (networkInsightsAccessScopeId != null) {
      result$
        ..add(const _i4.XmlElementName('NetworkInsightsAccessScopeId'))
        ..add(serializers.serialize(
          networkInsightsAccessScopeId,
          specifiedType: const FullType(String),
        ));
    }
    if (matchPaths != null) {
      result$
        ..add(const _i4.XmlElementName('MatchPathSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          matchPaths,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.AccessScopePath)],
          ),
        ));
    }
    if (excludePaths != null) {
      result$
        ..add(const _i4.XmlElementName('ExcludePathSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          excludePaths,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.AccessScopePath)],
          ),
        ));
    }
    return result$;
  }
}
