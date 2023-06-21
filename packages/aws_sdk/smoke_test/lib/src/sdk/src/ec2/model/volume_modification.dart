// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.volume_modification; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i4;
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/volume_modification_state.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/volume_type.dart' as _i3;

part 'volume_modification.g.dart';

/// Describes the modification status of an EBS volume.
///
/// If the volume has never been modified, some element values will be null.
abstract class VolumeModification
    with _i1.AWSEquatable<VolumeModification>
    implements Built<VolumeModification, VolumeModificationBuilder> {
  /// Describes the modification status of an EBS volume.
  ///
  /// If the volume has never been modified, some element values will be null.
  factory VolumeModification({
    String? volumeId,
    _i2.VolumeModificationState? modificationState,
    String? statusMessage,
    int? targetSize,
    int? targetIops,
    _i3.VolumeType? targetVolumeType,
    int? targetThroughput,
    bool? targetMultiAttachEnabled,
    int? originalSize,
    int? originalIops,
    _i3.VolumeType? originalVolumeType,
    int? originalThroughput,
    bool? originalMultiAttachEnabled,
    _i4.Int64? progress,
    DateTime? startTime,
    DateTime? endTime,
  }) {
    targetSize ??= 0;
    targetIops ??= 0;
    targetThroughput ??= 0;
    targetMultiAttachEnabled ??= false;
    originalSize ??= 0;
    originalIops ??= 0;
    originalThroughput ??= 0;
    originalMultiAttachEnabled ??= false;
    progress ??= _i4.Int64.ZERO;
    return _$VolumeModification._(
      volumeId: volumeId,
      modificationState: modificationState,
      statusMessage: statusMessage,
      targetSize: targetSize,
      targetIops: targetIops,
      targetVolumeType: targetVolumeType,
      targetThroughput: targetThroughput,
      targetMultiAttachEnabled: targetMultiAttachEnabled,
      originalSize: originalSize,
      originalIops: originalIops,
      originalVolumeType: originalVolumeType,
      originalThroughput: originalThroughput,
      originalMultiAttachEnabled: originalMultiAttachEnabled,
      progress: progress,
      startTime: startTime,
      endTime: endTime,
    );
  }

  /// Describes the modification status of an EBS volume.
  ///
  /// If the volume has never been modified, some element values will be null.
  factory VolumeModification.build(
          [void Function(VolumeModificationBuilder) updates]) =
      _$VolumeModification;

  const VolumeModification._();

  static const List<_i5.SmithySerializer> serializers = [
    VolumeModificationEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(VolumeModificationBuilder b) {
    b.targetSize = 0;
    b.targetIops = 0;
    b.targetThroughput = 0;
    b.targetMultiAttachEnabled = false;
    b.originalSize = 0;
    b.originalIops = 0;
    b.originalThroughput = 0;
    b.originalMultiAttachEnabled = false;
    b.progress = _i4.Int64.ZERO;
  }

  /// The ID of the volume.
  String? get volumeId;

  /// The current modification state. The modification state is null for unmodified volumes.
  _i2.VolumeModificationState? get modificationState;

  /// A status message about the modification progress or failure.
  String? get statusMessage;

  /// The target size of the volume, in GiB.
  int get targetSize;

  /// The target IOPS rate of the volume.
  int get targetIops;

  /// The target EBS volume type of the volume.
  _i3.VolumeType? get targetVolumeType;

  /// The target throughput of the volume, in MiB/s.
  int get targetThroughput;

  /// The target setting for Amazon EBS Multi-Attach.
  bool get targetMultiAttachEnabled;

  /// The original size of the volume, in GiB.
  int get originalSize;

  /// The original IOPS rate of the volume.
  int get originalIops;

  /// The original EBS volume type of the volume.
  _i3.VolumeType? get originalVolumeType;

  /// The original throughput of the volume, in MiB/s.
  int get originalThroughput;

  /// The original setting for Amazon EBS Multi-Attach.
  bool get originalMultiAttachEnabled;

  /// The modification progress, from 0 to 100 percent complete.
  _i4.Int64 get progress;

  /// The modification start time.
  DateTime? get startTime;

  /// The modification completion or failure time.
  DateTime? get endTime;
  @override
  List<Object?> get props => [
        volumeId,
        modificationState,
        statusMessage,
        targetSize,
        targetIops,
        targetVolumeType,
        targetThroughput,
        targetMultiAttachEnabled,
        originalSize,
        originalIops,
        originalVolumeType,
        originalThroughput,
        originalMultiAttachEnabled,
        progress,
        startTime,
        endTime,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('VolumeModification');
    helper.add(
      'volumeId',
      volumeId,
    );
    helper.add(
      'modificationState',
      modificationState,
    );
    helper.add(
      'statusMessage',
      statusMessage,
    );
    helper.add(
      'targetSize',
      targetSize,
    );
    helper.add(
      'targetIops',
      targetIops,
    );
    helper.add(
      'targetVolumeType',
      targetVolumeType,
    );
    helper.add(
      'targetThroughput',
      targetThroughput,
    );
    helper.add(
      'targetMultiAttachEnabled',
      targetMultiAttachEnabled,
    );
    helper.add(
      'originalSize',
      originalSize,
    );
    helper.add(
      'originalIops',
      originalIops,
    );
    helper.add(
      'originalVolumeType',
      originalVolumeType,
    );
    helper.add(
      'originalThroughput',
      originalThroughput,
    );
    helper.add(
      'originalMultiAttachEnabled',
      originalMultiAttachEnabled,
    );
    helper.add(
      'progress',
      progress,
    );
    helper.add(
      'startTime',
      startTime,
    );
    helper.add(
      'endTime',
      endTime,
    );
    return helper.toString();
  }
}

class VolumeModificationEc2QuerySerializer
    extends _i5.StructuredSmithySerializer<VolumeModification> {
  const VolumeModificationEc2QuerySerializer() : super('VolumeModification');

  @override
  Iterable<Type> get types => const [
        VolumeModification,
        _$VolumeModification,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  VolumeModification deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VolumeModificationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'volumeId':
          result.volumeId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'modificationState':
          result.modificationState = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.VolumeModificationState),
          ) as _i2.VolumeModificationState);
        case 'statusMessage':
          result.statusMessage = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'targetSize':
          result.targetSize = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'targetIops':
          result.targetIops = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'targetVolumeType':
          result.targetVolumeType = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.VolumeType),
          ) as _i3.VolumeType);
        case 'targetThroughput':
          result.targetThroughput = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'targetMultiAttachEnabled':
          result.targetMultiAttachEnabled = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'originalSize':
          result.originalSize = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'originalIops':
          result.originalIops = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'originalVolumeType':
          result.originalVolumeType = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.VolumeType),
          ) as _i3.VolumeType);
        case 'originalThroughput':
          result.originalThroughput = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'originalMultiAttachEnabled':
          result.originalMultiAttachEnabled = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'progress':
          result.progress = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.Int64),
          ) as _i4.Int64);
        case 'startTime':
          result.startTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'endTime':
          result.endTime = (serializers.deserialize(
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
    VolumeModification object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i5.XmlElementName(
        'VolumeModificationResponse',
        _i5.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final VolumeModification(
      :volumeId,
      :modificationState,
      :statusMessage,
      :targetSize,
      :targetIops,
      :targetVolumeType,
      :targetThroughput,
      :targetMultiAttachEnabled,
      :originalSize,
      :originalIops,
      :originalVolumeType,
      :originalThroughput,
      :originalMultiAttachEnabled,
      :progress,
      :startTime,
      :endTime
    ) = object;
    if (volumeId != null) {
      result$
        ..add(const _i5.XmlElementName('VolumeId'))
        ..add(serializers.serialize(
          volumeId,
          specifiedType: const FullType(String),
        ));
    }
    if (modificationState != null) {
      result$
        ..add(const _i5.XmlElementName('ModificationState'))
        ..add(serializers.serialize(
          modificationState,
          specifiedType: const FullType.nullable(_i2.VolumeModificationState),
        ));
    }
    if (statusMessage != null) {
      result$
        ..add(const _i5.XmlElementName('StatusMessage'))
        ..add(serializers.serialize(
          statusMessage,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i5.XmlElementName('TargetSize'))
      ..add(serializers.serialize(
        targetSize,
        specifiedType: const FullType(int),
      ));
    result$
      ..add(const _i5.XmlElementName('TargetIops'))
      ..add(serializers.serialize(
        targetIops,
        specifiedType: const FullType(int),
      ));
    if (targetVolumeType != null) {
      result$
        ..add(const _i5.XmlElementName('TargetVolumeType'))
        ..add(serializers.serialize(
          targetVolumeType,
          specifiedType: const FullType.nullable(_i3.VolumeType),
        ));
    }
    result$
      ..add(const _i5.XmlElementName('TargetThroughput'))
      ..add(serializers.serialize(
        targetThroughput,
        specifiedType: const FullType(int),
      ));
    result$
      ..add(const _i5.XmlElementName('TargetMultiAttachEnabled'))
      ..add(serializers.serialize(
        targetMultiAttachEnabled,
        specifiedType: const FullType(bool),
      ));
    result$
      ..add(const _i5.XmlElementName('OriginalSize'))
      ..add(serializers.serialize(
        originalSize,
        specifiedType: const FullType(int),
      ));
    result$
      ..add(const _i5.XmlElementName('OriginalIops'))
      ..add(serializers.serialize(
        originalIops,
        specifiedType: const FullType(int),
      ));
    if (originalVolumeType != null) {
      result$
        ..add(const _i5.XmlElementName('OriginalVolumeType'))
        ..add(serializers.serialize(
          originalVolumeType,
          specifiedType: const FullType.nullable(_i3.VolumeType),
        ));
    }
    result$
      ..add(const _i5.XmlElementName('OriginalThroughput'))
      ..add(serializers.serialize(
        originalThroughput,
        specifiedType: const FullType(int),
      ));
    result$
      ..add(const _i5.XmlElementName('OriginalMultiAttachEnabled'))
      ..add(serializers.serialize(
        originalMultiAttachEnabled,
        specifiedType: const FullType(bool),
      ));
    result$
      ..add(const _i5.XmlElementName('Progress'))
      ..add(serializers.serialize(
        progress,
        specifiedType: const FullType(_i4.Int64),
      ));
    if (startTime != null) {
      result$
        ..add(const _i5.XmlElementName('StartTime'))
        ..add(serializers.serialize(
          startTime,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (endTime != null) {
      result$
        ..add(const _i5.XmlElementName('EndTime'))
        ..add(serializers.serialize(
          endTime,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    return result$;
  }
}
