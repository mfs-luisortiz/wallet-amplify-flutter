// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.snapshot_tier_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i7;
import 'package:smoke_test/src/sdk/src/ec2/model/snapshot_state.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/storage_tier.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/tiering_operation_status.dart'
    as _i5;

part 'snapshot_tier_status.g.dart';

/// Provides information about a snapshot's storage tier.
abstract class SnapshotTierStatus
    with _i1.AWSEquatable<SnapshotTierStatus>
    implements Built<SnapshotTierStatus, SnapshotTierStatusBuilder> {
  /// Provides information about a snapshot's storage tier.
  factory SnapshotTierStatus({
    String? snapshotId,
    String? volumeId,
    _i2.SnapshotState? status,
    String? ownerId,
    List<_i3.Tag>? tags,
    _i4.StorageTier? storageTier,
    DateTime? lastTieringStartTime,
    int? lastTieringProgress,
    _i5.TieringOperationStatus? lastTieringOperationStatus,
    String? lastTieringOperationStatusDetail,
    DateTime? archivalCompleteTime,
    DateTime? restoreExpiryTime,
  }) {
    lastTieringProgress ??= 0;
    return _$SnapshotTierStatus._(
      snapshotId: snapshotId,
      volumeId: volumeId,
      status: status,
      ownerId: ownerId,
      tags: tags == null ? null : _i6.BuiltList(tags),
      storageTier: storageTier,
      lastTieringStartTime: lastTieringStartTime,
      lastTieringProgress: lastTieringProgress,
      lastTieringOperationStatus: lastTieringOperationStatus,
      lastTieringOperationStatusDetail: lastTieringOperationStatusDetail,
      archivalCompleteTime: archivalCompleteTime,
      restoreExpiryTime: restoreExpiryTime,
    );
  }

  /// Provides information about a snapshot's storage tier.
  factory SnapshotTierStatus.build(
          [void Function(SnapshotTierStatusBuilder) updates]) =
      _$SnapshotTierStatus;

  const SnapshotTierStatus._();

  static const List<_i7.SmithySerializer> serializers = [
    SnapshotTierStatusEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SnapshotTierStatusBuilder b) {
    b.lastTieringProgress = 0;
  }

  /// The ID of the snapshot.
  String? get snapshotId;

  /// The ID of the volume from which the snapshot was created.
  String? get volumeId;

  /// The state of the snapshot.
  _i2.SnapshotState? get status;

  /// The ID of the Amazon Web Services account that owns the snapshot.
  String? get ownerId;

  /// The tags that are assigned to the snapshot.
  _i6.BuiltList<_i3.Tag>? get tags;

  /// The storage tier in which the snapshot is stored. `standard` indicates that the snapshot is stored in the standard snapshot storage tier and that it is ready for use. `archive` indicates that the snapshot is currently archived and that it must be restored before it can be used.
  _i4.StorageTier? get storageTier;

  /// The date and time when the last archive or restore process was started.
  DateTime? get lastTieringStartTime;

  /// The progress of the last archive or restore process, as a percentage.
  int get lastTieringProgress;

  /// The status of the last archive or restore process.
  _i5.TieringOperationStatus? get lastTieringOperationStatus;

  /// A message describing the status of the last archive or restore process.
  String? get lastTieringOperationStatusDetail;

  /// The date and time when the last archive process was completed.
  DateTime? get archivalCompleteTime;

  /// Only for archived snapshots that are temporarily restored. Indicates the date and time when a temporarily restored snapshot will be automatically re-archived.
  DateTime? get restoreExpiryTime;
  @override
  List<Object?> get props => [
        snapshotId,
        volumeId,
        status,
        ownerId,
        tags,
        storageTier,
        lastTieringStartTime,
        lastTieringProgress,
        lastTieringOperationStatus,
        lastTieringOperationStatusDetail,
        archivalCompleteTime,
        restoreExpiryTime,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SnapshotTierStatus');
    helper.add(
      'snapshotId',
      snapshotId,
    );
    helper.add(
      'volumeId',
      volumeId,
    );
    helper.add(
      'status',
      status,
    );
    helper.add(
      'ownerId',
      ownerId,
    );
    helper.add(
      'tags',
      tags,
    );
    helper.add(
      'storageTier',
      storageTier,
    );
    helper.add(
      'lastTieringStartTime',
      lastTieringStartTime,
    );
    helper.add(
      'lastTieringProgress',
      lastTieringProgress,
    );
    helper.add(
      'lastTieringOperationStatus',
      lastTieringOperationStatus,
    );
    helper.add(
      'lastTieringOperationStatusDetail',
      lastTieringOperationStatusDetail,
    );
    helper.add(
      'archivalCompleteTime',
      archivalCompleteTime,
    );
    helper.add(
      'restoreExpiryTime',
      restoreExpiryTime,
    );
    return helper.toString();
  }
}

class SnapshotTierStatusEc2QuerySerializer
    extends _i7.StructuredSmithySerializer<SnapshotTierStatus> {
  const SnapshotTierStatusEc2QuerySerializer() : super('SnapshotTierStatus');

  @override
  Iterable<Type> get types => const [
        SnapshotTierStatus,
        _$SnapshotTierStatus,
      ];
  @override
  Iterable<_i7.ShapeId> get supportedProtocols => const [
        _i7.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  SnapshotTierStatus deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SnapshotTierStatusBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'snapshotId':
          result.snapshotId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'volumeId':
          result.volumeId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'status':
          result.status = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.SnapshotState),
          ) as _i2.SnapshotState);
        case 'ownerId':
          result.ownerId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'tagSet':
          result.tags.replace((const _i7.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i7.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i6.BuiltList,
              [FullType(_i3.Tag)],
            ),
          ) as _i6.BuiltList<_i3.Tag>));
        case 'storageTier':
          result.storageTier = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.StorageTier),
          ) as _i4.StorageTier);
        case 'lastTieringStartTime':
          result.lastTieringStartTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'lastTieringProgress':
          result.lastTieringProgress = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'lastTieringOperationStatus':
          result.lastTieringOperationStatus = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i5.TieringOperationStatus),
          ) as _i5.TieringOperationStatus);
        case 'lastTieringOperationStatusDetail':
          result.lastTieringOperationStatusDetail = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'archivalCompleteTime':
          result.archivalCompleteTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'restoreExpiryTime':
          result.restoreExpiryTime = (serializers.deserialize(
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
    SnapshotTierStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i7.XmlElementName(
        'SnapshotTierStatusResponse',
        _i7.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final SnapshotTierStatus(
      :snapshotId,
      :volumeId,
      :status,
      :ownerId,
      :tags,
      :storageTier,
      :lastTieringStartTime,
      :lastTieringProgress,
      :lastTieringOperationStatus,
      :lastTieringOperationStatusDetail,
      :archivalCompleteTime,
      :restoreExpiryTime
    ) = object;
    if (snapshotId != null) {
      result$
        ..add(const _i7.XmlElementName('SnapshotId'))
        ..add(serializers.serialize(
          snapshotId,
          specifiedType: const FullType(String),
        ));
    }
    if (volumeId != null) {
      result$
        ..add(const _i7.XmlElementName('VolumeId'))
        ..add(serializers.serialize(
          volumeId,
          specifiedType: const FullType(String),
        ));
    }
    if (status != null) {
      result$
        ..add(const _i7.XmlElementName('Status'))
        ..add(serializers.serialize(
          status,
          specifiedType: const FullType.nullable(_i2.SnapshotState),
        ));
    }
    if (ownerId != null) {
      result$
        ..add(const _i7.XmlElementName('OwnerId'))
        ..add(serializers.serialize(
          ownerId,
          specifiedType: const FullType(String),
        ));
    }
    if (tags != null) {
      result$
        ..add(const _i7.XmlElementName('TagSet'))
        ..add(const _i7.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i7.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          tags,
          specifiedType: const FullType.nullable(
            _i6.BuiltList,
            [FullType(_i3.Tag)],
          ),
        ));
    }
    if (storageTier != null) {
      result$
        ..add(const _i7.XmlElementName('StorageTier'))
        ..add(serializers.serialize(
          storageTier,
          specifiedType: const FullType.nullable(_i4.StorageTier),
        ));
    }
    if (lastTieringStartTime != null) {
      result$
        ..add(const _i7.XmlElementName('LastTieringStartTime'))
        ..add(serializers.serialize(
          lastTieringStartTime,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    result$
      ..add(const _i7.XmlElementName('LastTieringProgress'))
      ..add(serializers.serialize(
        lastTieringProgress,
        specifiedType: const FullType(int),
      ));
    if (lastTieringOperationStatus != null) {
      result$
        ..add(const _i7.XmlElementName('LastTieringOperationStatus'))
        ..add(serializers.serialize(
          lastTieringOperationStatus,
          specifiedType: const FullType.nullable(_i5.TieringOperationStatus),
        ));
    }
    if (lastTieringOperationStatusDetail != null) {
      result$
        ..add(const _i7.XmlElementName('LastTieringOperationStatusDetail'))
        ..add(serializers.serialize(
          lastTieringOperationStatusDetail,
          specifiedType: const FullType(String),
        ));
    }
    if (archivalCompleteTime != null) {
      result$
        ..add(const _i7.XmlElementName('ArchivalCompleteTime'))
        ..add(serializers.serialize(
          archivalCompleteTime,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (restoreExpiryTime != null) {
      result$
        ..add(const _i7.XmlElementName('RestoreExpiryTime'))
        ..add(serializers.serialize(
          restoreExpiryTime,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    return result$;
  }
}
