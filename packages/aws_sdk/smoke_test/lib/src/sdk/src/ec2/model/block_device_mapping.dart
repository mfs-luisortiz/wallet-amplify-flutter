// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.block_device_mapping; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/ebs_block_device.dart' as _i2;

part 'block_device_mapping.g.dart';

/// Describes a block device mapping, which defines the EBS volumes and instance store volumes to attach to an instance at launch.
abstract class BlockDeviceMapping
    with _i1.AWSEquatable<BlockDeviceMapping>
    implements Built<BlockDeviceMapping, BlockDeviceMappingBuilder> {
  /// Describes a block device mapping, which defines the EBS volumes and instance store volumes to attach to an instance at launch.
  factory BlockDeviceMapping({
    String? deviceName,
    String? virtualName,
    _i2.EbsBlockDevice? ebs,
    String? noDevice,
  }) {
    return _$BlockDeviceMapping._(
      deviceName: deviceName,
      virtualName: virtualName,
      ebs: ebs,
      noDevice: noDevice,
    );
  }

  /// Describes a block device mapping, which defines the EBS volumes and instance store volumes to attach to an instance at launch.
  factory BlockDeviceMapping.build(
          [void Function(BlockDeviceMappingBuilder) updates]) =
      _$BlockDeviceMapping;

  const BlockDeviceMapping._();

  static const List<_i3.SmithySerializer> serializers = [
    BlockDeviceMappingEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(BlockDeviceMappingBuilder b) {}

  /// The device name (for example, `/dev/sdh` or `xvdh`).
  String? get deviceName;

  /// The virtual device name (`ephemeral`N). Instance store volumes are numbered starting from 0. An instance type with 2 available instance store volumes can specify mappings for `ephemeral0` and `ephemeral1`. The number of available instance store volumes depends on the instance type. After you connect to the instance, you must mount the volume.
  ///
  /// NVMe instance store volumes are automatically enumerated and assigned a device name. Including them in your block device mapping has no effect.
  ///
  /// Constraints: For M3 instances, you must specify instance store volumes in the block device mapping for the instance. When you launch an M3 instance, we ignore any instance store volumes specified in the block device mapping for the AMI.
  String? get virtualName;

  /// Parameters used to automatically set up EBS volumes when the instance is launched.
  _i2.EbsBlockDevice? get ebs;

  /// To omit the device from the block device mapping, specify an empty string. When this property is specified, the device is removed from the block device mapping regardless of the assigned value.
  String? get noDevice;
  @override
  List<Object?> get props => [
        deviceName,
        virtualName,
        ebs,
        noDevice,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('BlockDeviceMapping');
    helper.add(
      'deviceName',
      deviceName,
    );
    helper.add(
      'virtualName',
      virtualName,
    );
    helper.add(
      'ebs',
      ebs,
    );
    helper.add(
      'noDevice',
      noDevice,
    );
    return helper.toString();
  }
}

class BlockDeviceMappingEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<BlockDeviceMapping> {
  const BlockDeviceMappingEc2QuerySerializer() : super('BlockDeviceMapping');

  @override
  Iterable<Type> get types => const [
        BlockDeviceMapping,
        _$BlockDeviceMapping,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  BlockDeviceMapping deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BlockDeviceMappingBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'deviceName':
          result.deviceName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'virtualName':
          result.virtualName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ebs':
          result.ebs.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.EbsBlockDevice),
          ) as _i2.EbsBlockDevice));
        case 'noDevice':
          result.noDevice = (serializers.deserialize(
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
    BlockDeviceMapping object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'BlockDeviceMappingResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final BlockDeviceMapping(:deviceName, :virtualName, :ebs, :noDevice) =
        object;
    if (deviceName != null) {
      result$
        ..add(const _i3.XmlElementName('DeviceName'))
        ..add(serializers.serialize(
          deviceName,
          specifiedType: const FullType(String),
        ));
    }
    if (virtualName != null) {
      result$
        ..add(const _i3.XmlElementName('VirtualName'))
        ..add(serializers.serialize(
          virtualName,
          specifiedType: const FullType(String),
        ));
    }
    if (ebs != null) {
      result$
        ..add(const _i3.XmlElementName('Ebs'))
        ..add(serializers.serialize(
          ebs,
          specifiedType: const FullType(_i2.EbsBlockDevice),
        ));
    }
    if (noDevice != null) {
      result$
        ..add(const _i3.XmlElementName('NoDevice'))
        ..add(serializers.serialize(
          noDevice,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
