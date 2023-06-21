// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.launch_template_block_device_mapping; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_ebs_block_device.dart'
    as _i2;

part 'launch_template_block_device_mapping.g.dart';

/// Describes a block device mapping.
abstract class LaunchTemplateBlockDeviceMapping
    with
        _i1.AWSEquatable<LaunchTemplateBlockDeviceMapping>
    implements
        Built<LaunchTemplateBlockDeviceMapping,
            LaunchTemplateBlockDeviceMappingBuilder> {
  /// Describes a block device mapping.
  factory LaunchTemplateBlockDeviceMapping({
    String? deviceName,
    String? virtualName,
    _i2.LaunchTemplateEbsBlockDevice? ebs,
    String? noDevice,
  }) {
    return _$LaunchTemplateBlockDeviceMapping._(
      deviceName: deviceName,
      virtualName: virtualName,
      ebs: ebs,
      noDevice: noDevice,
    );
  }

  /// Describes a block device mapping.
  factory LaunchTemplateBlockDeviceMapping.build(
          [void Function(LaunchTemplateBlockDeviceMappingBuilder) updates]) =
      _$LaunchTemplateBlockDeviceMapping;

  const LaunchTemplateBlockDeviceMapping._();

  static const List<_i3.SmithySerializer> serializers = [
    LaunchTemplateBlockDeviceMappingEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(LaunchTemplateBlockDeviceMappingBuilder b) {}

  /// The device name.
  String? get deviceName;

  /// The virtual device name (ephemeralN).
  String? get virtualName;

  /// Information about the block device for an EBS volume.
  _i2.LaunchTemplateEbsBlockDevice? get ebs;

  /// To omit the device from the block device mapping, specify an empty string.
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
    final helper =
        newBuiltValueToStringHelper('LaunchTemplateBlockDeviceMapping');
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

class LaunchTemplateBlockDeviceMappingEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<LaunchTemplateBlockDeviceMapping> {
  const LaunchTemplateBlockDeviceMappingEc2QuerySerializer()
      : super('LaunchTemplateBlockDeviceMapping');

  @override
  Iterable<Type> get types => const [
        LaunchTemplateBlockDeviceMapping,
        _$LaunchTemplateBlockDeviceMapping,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  LaunchTemplateBlockDeviceMapping deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LaunchTemplateBlockDeviceMappingBuilder();
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
            specifiedType: const FullType(_i2.LaunchTemplateEbsBlockDevice),
          ) as _i2.LaunchTemplateEbsBlockDevice));
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
    LaunchTemplateBlockDeviceMapping object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'LaunchTemplateBlockDeviceMappingResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final LaunchTemplateBlockDeviceMapping(
      :deviceName,
      :virtualName,
      :ebs,
      :noDevice
    ) = object;
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
          specifiedType: const FullType(_i2.LaunchTemplateEbsBlockDevice),
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
