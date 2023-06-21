// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.snapshot_info; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/snapshot_state.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i2;

part 'snapshot_info.g.dart';

/// Information about a snapshot.
abstract class SnapshotInfo
    with _i1.AWSEquatable<SnapshotInfo>
    implements Built<SnapshotInfo, SnapshotInfoBuilder> {
  /// Information about a snapshot.
  factory SnapshotInfo({
    String? description,
    List<_i2.Tag>? tags,
    bool? encrypted,
    String? volumeId,
    _i3.SnapshotState? state,
    int? volumeSize,
    DateTime? startTime,
    String? progress,
    String? ownerId,
    String? snapshotId,
    String? outpostArn,
  }) {
    encrypted ??= false;
    volumeSize ??= 0;
    return _$SnapshotInfo._(
      description: description,
      tags: tags == null ? null : _i4.BuiltList(tags),
      encrypted: encrypted,
      volumeId: volumeId,
      state: state,
      volumeSize: volumeSize,
      startTime: startTime,
      progress: progress,
      ownerId: ownerId,
      snapshotId: snapshotId,
      outpostArn: outpostArn,
    );
  }

  /// Information about a snapshot.
  factory SnapshotInfo.build([void Function(SnapshotInfoBuilder) updates]) =
      _$SnapshotInfo;

  const SnapshotInfo._();

  static const List<_i5.SmithySerializer> serializers = [
    SnapshotInfoEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SnapshotInfoBuilder b) {
    b.encrypted = false;
    b.volumeSize = 0;
  }

  /// Description specified by the CreateSnapshotRequest that has been applied to all snapshots.
  String? get description;

  /// Tags associated with this snapshot.
  _i4.BuiltList<_i2.Tag>? get tags;

  /// Indicates whether the snapshot is encrypted.
  bool get encrypted;

  /// Source volume from which this snapshot was created.
  String? get volumeId;

  /// Current state of the snapshot.
  _i3.SnapshotState? get state;

  /// Size of the volume from which this snapshot was created.
  int get volumeSize;

  /// Time this snapshot was started. This is the same for all snapshots initiated by the same request.
  DateTime? get startTime;

  /// Progress this snapshot has made towards completing.
  String? get progress;

  /// Account id used when creating this snapshot.
  String? get ownerId;

  /// Snapshot id that can be used to describe this snapshot.
  String? get snapshotId;

  /// The ARN of the Outpost on which the snapshot is stored. For more information, see [Amazon EBS local snapshots on Outposts](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/snapshots-outposts.html) in the _Amazon Elastic Compute Cloud User Guide_.
  String? get outpostArn;
  @override
  List<Object?> get props => [
        description,
        tags,
        encrypted,
        volumeId,
        state,
        volumeSize,
        startTime,
        progress,
        ownerId,
        snapshotId,
        outpostArn,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SnapshotInfo');
    helper.add(
      'description',
      description,
    );
    helper.add(
      'tags',
      tags,
    );
    helper.add(
      'encrypted',
      encrypted,
    );
    helper.add(
      'volumeId',
      volumeId,
    );
    helper.add(
      'state',
      state,
    );
    helper.add(
      'volumeSize',
      volumeSize,
    );
    helper.add(
      'startTime',
      startTime,
    );
    helper.add(
      'progress',
      progress,
    );
    helper.add(
      'ownerId',
      ownerId,
    );
    helper.add(
      'snapshotId',
      snapshotId,
    );
    helper.add(
      'outpostArn',
      outpostArn,
    );
    return helper.toString();
  }
}

class SnapshotInfoEc2QuerySerializer
    extends _i5.StructuredSmithySerializer<SnapshotInfo> {
  const SnapshotInfoEc2QuerySerializer() : super('SnapshotInfo');

  @override
  Iterable<Type> get types => const [
        SnapshotInfo,
        _$SnapshotInfo,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  SnapshotInfo deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SnapshotInfoBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'description':
          result.description = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'tagSet':
          result.tags.replace((const _i5.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i5.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(_i2.Tag)],
            ),
          ) as _i4.BuiltList<_i2.Tag>));
        case 'encrypted':
          result.encrypted = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'volumeId':
          result.volumeId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'state':
          result.state = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.SnapshotState),
          ) as _i3.SnapshotState);
        case 'volumeSize':
          result.volumeSize = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'startTime':
          result.startTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'progress':
          result.progress = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ownerId':
          result.ownerId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'snapshotId':
          result.snapshotId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'outpostArn':
          result.outpostArn = (serializers.deserialize(
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
    SnapshotInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i5.XmlElementName(
        'SnapshotInfoResponse',
        _i5.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final SnapshotInfo(
      :description,
      :tags,
      :encrypted,
      :volumeId,
      :state,
      :volumeSize,
      :startTime,
      :progress,
      :ownerId,
      :snapshotId,
      :outpostArn
    ) = object;
    if (description != null) {
      result$
        ..add(const _i5.XmlElementName('Description'))
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(String),
        ));
    }
    if (tags != null) {
      result$
        ..add(const _i5.XmlElementName('TagSet'))
        ..add(const _i5.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i5.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          tags,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i2.Tag)],
          ),
        ));
    }
    result$
      ..add(const _i5.XmlElementName('Encrypted'))
      ..add(serializers.serialize(
        encrypted,
        specifiedType: const FullType(bool),
      ));
    if (volumeId != null) {
      result$
        ..add(const _i5.XmlElementName('VolumeId'))
        ..add(serializers.serialize(
          volumeId,
          specifiedType: const FullType(String),
        ));
    }
    if (state != null) {
      result$
        ..add(const _i5.XmlElementName('State'))
        ..add(serializers.serialize(
          state,
          specifiedType: const FullType.nullable(_i3.SnapshotState),
        ));
    }
    result$
      ..add(const _i5.XmlElementName('VolumeSize'))
      ..add(serializers.serialize(
        volumeSize,
        specifiedType: const FullType(int),
      ));
    if (startTime != null) {
      result$
        ..add(const _i5.XmlElementName('StartTime'))
        ..add(serializers.serialize(
          startTime,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (progress != null) {
      result$
        ..add(const _i5.XmlElementName('Progress'))
        ..add(serializers.serialize(
          progress,
          specifiedType: const FullType(String),
        ));
    }
    if (ownerId != null) {
      result$
        ..add(const _i5.XmlElementName('OwnerId'))
        ..add(serializers.serialize(
          ownerId,
          specifiedType: const FullType(String),
        ));
    }
    if (snapshotId != null) {
      result$
        ..add(const _i5.XmlElementName('SnapshotId'))
        ..add(serializers.serialize(
          snapshotId,
          specifiedType: const FullType(String),
        ));
    }
    if (outpostArn != null) {
      result$
        ..add(const _i5.XmlElementName('OutpostArn'))
        ..add(serializers.serialize(
          outpostArn,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
