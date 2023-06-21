// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.describe_snapshots_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/snapshot.dart' as _i2;

part 'describe_snapshots_result.g.dart';

abstract class DescribeSnapshotsResult
    with _i1.AWSEquatable<DescribeSnapshotsResult>
    implements Built<DescribeSnapshotsResult, DescribeSnapshotsResultBuilder> {
  factory DescribeSnapshotsResult({
    List<_i2.Snapshot>? snapshots,
    String? nextToken,
  }) {
    return _$DescribeSnapshotsResult._(
      snapshots: snapshots == null ? null : _i3.BuiltList(snapshots),
      nextToken: nextToken,
    );
  }

  factory DescribeSnapshotsResult.build(
          [void Function(DescribeSnapshotsResultBuilder) updates]) =
      _$DescribeSnapshotsResult;

  const DescribeSnapshotsResult._();

  /// Constructs a [DescribeSnapshotsResult] from a [payload] and [response].
  factory DescribeSnapshotsResult.fromResponse(
    DescribeSnapshotsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeSnapshotsResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeSnapshotsResultBuilder b) {}

  /// Information about the snapshots.
  _i3.BuiltList<_i2.Snapshot>? get snapshots;

  /// The `NextToken` value to include in a future `DescribeSnapshots` request. When the results of a `DescribeSnapshots` request exceed `MaxResults`, this value can be used to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        snapshots,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeSnapshotsResult');
    helper.add(
      'snapshots',
      snapshots,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeSnapshotsResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<DescribeSnapshotsResult> {
  const DescribeSnapshotsResultEc2QuerySerializer()
      : super('DescribeSnapshotsResult');

  @override
  Iterable<Type> get types => const [
        DescribeSnapshotsResult,
        _$DescribeSnapshotsResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeSnapshotsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeSnapshotsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'snapshotSet':
          result.snapshots.replace((const _i4.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i4.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(_i2.Snapshot)],
            ),
          ) as _i3.BuiltList<_i2.Snapshot>));
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
    DescribeSnapshotsResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i4.XmlElementName(
        'DescribeSnapshotsResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeSnapshotsResult(:snapshots, :nextToken) = object;
    if (snapshots != null) {
      result$
        ..add(const _i4.XmlElementName('SnapshotSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          snapshots,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.Snapshot)],
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
