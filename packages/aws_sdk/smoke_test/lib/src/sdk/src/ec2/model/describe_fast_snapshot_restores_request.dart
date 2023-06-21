// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.describe_fast_snapshot_restores_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart' as _i3;

part 'describe_fast_snapshot_restores_request.g.dart';

abstract class DescribeFastSnapshotRestoresRequest
    with
        _i1.HttpInput<DescribeFastSnapshotRestoresRequest>,
        _i2.AWSEquatable<DescribeFastSnapshotRestoresRequest>
    implements
        Built<DescribeFastSnapshotRestoresRequest,
            DescribeFastSnapshotRestoresRequestBuilder> {
  factory DescribeFastSnapshotRestoresRequest({
    List<_i3.Filter>? filters,
    int? maxResults,
    String? nextToken,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$DescribeFastSnapshotRestoresRequest._(
      filters: filters == null ? null : _i4.BuiltList(filters),
      maxResults: maxResults,
      nextToken: nextToken,
      dryRun: dryRun,
    );
  }

  factory DescribeFastSnapshotRestoresRequest.build(
          [void Function(DescribeFastSnapshotRestoresRequestBuilder) updates]) =
      _$DescribeFastSnapshotRestoresRequest;

  const DescribeFastSnapshotRestoresRequest._();

  factory DescribeFastSnapshotRestoresRequest.fromRequest(
    DescribeFastSnapshotRestoresRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DescribeFastSnapshotRestoresRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeFastSnapshotRestoresRequestBuilder b) {
    b.dryRun = false;
  }

  /// The filters. The possible values are:
  ///
  /// *   `availability-zone`: The Availability Zone of the snapshot.
  ///
  /// *   `owner-id`: The ID of the Amazon Web Services account that enabled fast snapshot restore on the snapshot.
  ///
  /// *   `snapshot-id`: The ID of the snapshot.
  ///
  /// *   `state`: The state of fast snapshot restores for the snapshot (`enabling` | `optimizing` | `enabled` | `disabling` | `disabled`).
  _i4.BuiltList<_i3.Filter>? get filters;

  /// The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned `nextToken` value.
  int? get maxResults;

  /// The token for the next page of results.
  String? get nextToken;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  DescribeFastSnapshotRestoresRequest getPayload() => this;
  @override
  List<Object?> get props => [
        filters,
        maxResults,
        nextToken,
        dryRun,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeFastSnapshotRestoresRequest');
    helper.add(
      'filters',
      filters,
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
      'dryRun',
      dryRun,
    );
    return helper.toString();
  }
}

class DescribeFastSnapshotRestoresRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<DescribeFastSnapshotRestoresRequest> {
  const DescribeFastSnapshotRestoresRequestEc2QuerySerializer()
      : super('DescribeFastSnapshotRestoresRequest');

  @override
  Iterable<Type> get types => const [
        DescribeFastSnapshotRestoresRequest,
        _$DescribeFastSnapshotRestoresRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeFastSnapshotRestoresRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeFastSnapshotRestoresRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Filter':
          result.filters.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'Filter',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(_i3.Filter)],
            ),
          ) as _i4.BuiltList<_i3.Filter>));
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
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeFastSnapshotRestoresRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DescribeFastSnapshotRestoresRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeFastSnapshotRestoresRequest(
      :filters,
      :maxResults,
      :nextToken,
      :dryRun
    ) = object;
    if (filters != null) {
      result$
        ..add(const _i1.XmlElementName('Filter'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'Filter',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          filters,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i3.Filter)],
          ),
        ));
    }
    if (maxResults != null) {
      result$
        ..add(const _i1.XmlElementName('MaxResults'))
        ..add(serializers.serialize(
          maxResults,
          specifiedType: const FullType.nullable(int),
        ));
    }
    if (nextToken != null) {
      result$
        ..add(const _i1.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
