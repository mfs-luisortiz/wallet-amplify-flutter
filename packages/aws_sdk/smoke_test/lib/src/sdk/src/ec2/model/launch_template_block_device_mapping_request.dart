// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.launch_template_block_device_mapping_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_ebs_block_device_request.dart'
    as _i2;

part 'launch_template_block_device_mapping_request.g.dart';

/// Describes a block device mapping.
abstract class LaunchTemplateBlockDeviceMappingRequest
    with
        _i1.AWSEquatable<LaunchTemplateBlockDeviceMappingRequest>
    implements
        Built<LaunchTemplateBlockDeviceMappingRequest,
            LaunchTemplateBlockDeviceMappingRequestBuilder> {
  /// Describes a block device mapping.
  factory LaunchTemplateBlockDeviceMappingRequest({
    String? deviceName,
    String? virtualName,
    _i2.LaunchTemplateEbsBlockDeviceRequest? ebs,
    String? noDevice,
  }) {
    return _$LaunchTemplateBlockDeviceMappingRequest._(
      deviceName: deviceName,
      virtualName: virtualName,
      ebs: ebs,
      noDevice: noDevice,
    );
  }

  /// Describes a block device mapping.
  factory LaunchTemplateBlockDeviceMappingRequest.build(
      [void Function(LaunchTemplateBlockDeviceMappingRequestBuilder)
          updates]) = _$LaunchTemplateBlockDeviceMappingRequest;

  const LaunchTemplateBlockDeviceMappingRequest._();

  static const List<_i3.SmithySerializer> serializers = [
    LaunchTemplateBlockDeviceMappingRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(LaunchTemplateBlockDeviceMappingRequestBuilder b) {}

  /// The device name (for example, /dev/sdh or xvdh).
  String? get deviceName;

  /// The virtual device name (ephemeralN). Instance store volumes are numbered starting from 0. An instance type with 2 available instance store volumes can specify mappings for ephemeral0 and ephemeral1. The number of available instance store volumes depends on the instance type. After you connect to the instance, you must mount the volume.
  String? get virtualName;

  /// Parameters used to automatically set up EBS volumes when the instance is launched.
  _i2.LaunchTemplateEbsBlockDeviceRequest? get ebs;

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
        newBuiltValueToStringHelper('LaunchTemplateBlockDeviceMappingRequest');
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

class LaunchTemplateBlockDeviceMappingRequestEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<LaunchTemplateBlockDeviceMappingRequest> {
  const LaunchTemplateBlockDeviceMappingRequestEc2QuerySerializer()
      : super('LaunchTemplateBlockDeviceMappingRequest');

  @override
  Iterable<Type> get types => const [
        LaunchTemplateBlockDeviceMappingRequest,
        _$LaunchTemplateBlockDeviceMappingRequest,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  LaunchTemplateBlockDeviceMappingRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LaunchTemplateBlockDeviceMappingRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'DeviceName':
          result.deviceName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'VirtualName':
          result.virtualName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Ebs':
          result.ebs.replace((serializers.deserialize(
            value,
            specifiedType:
                const FullType(_i2.LaunchTemplateEbsBlockDeviceRequest),
          ) as _i2.LaunchTemplateEbsBlockDeviceRequest));
        case 'NoDevice':
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
    LaunchTemplateBlockDeviceMappingRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'LaunchTemplateBlockDeviceMappingRequestResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final LaunchTemplateBlockDeviceMappingRequest(
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
          specifiedType:
              const FullType(_i2.LaunchTemplateEbsBlockDeviceRequest),
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
