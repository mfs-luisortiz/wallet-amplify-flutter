// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.instance_block_device_mapping; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/ebs_instance_block_device.dart'
    as _i2;

part 'instance_block_device_mapping.g.dart';

/// Describes a block device mapping.
abstract class InstanceBlockDeviceMapping
    with _i1.AWSEquatable<InstanceBlockDeviceMapping>
    implements
        Built<InstanceBlockDeviceMapping, InstanceBlockDeviceMappingBuilder> {
  /// Describes a block device mapping.
  factory InstanceBlockDeviceMapping({
    String? deviceName,
    _i2.EbsInstanceBlockDevice? ebs,
  }) {
    return _$InstanceBlockDeviceMapping._(
      deviceName: deviceName,
      ebs: ebs,
    );
  }

  /// Describes a block device mapping.
  factory InstanceBlockDeviceMapping.build(
          [void Function(InstanceBlockDeviceMappingBuilder) updates]) =
      _$InstanceBlockDeviceMapping;

  const InstanceBlockDeviceMapping._();

  static const List<_i3.SmithySerializer> serializers = [
    InstanceBlockDeviceMappingEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InstanceBlockDeviceMappingBuilder b) {}

  /// The device name (for example, `/dev/sdh` or `xvdh`).
  String? get deviceName;

  /// Parameters used to automatically set up EBS volumes when the instance is launched.
  _i2.EbsInstanceBlockDevice? get ebs;
  @override
  List<Object?> get props => [
        deviceName,
        ebs,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InstanceBlockDeviceMapping');
    helper.add(
      'deviceName',
      deviceName,
    );
    helper.add(
      'ebs',
      ebs,
    );
    return helper.toString();
  }
}

class InstanceBlockDeviceMappingEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<InstanceBlockDeviceMapping> {
  const InstanceBlockDeviceMappingEc2QuerySerializer()
      : super('InstanceBlockDeviceMapping');

  @override
  Iterable<Type> get types => const [
        InstanceBlockDeviceMapping,
        _$InstanceBlockDeviceMapping,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  InstanceBlockDeviceMapping deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InstanceBlockDeviceMappingBuilder();
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
        case 'ebs':
          result.ebs.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.EbsInstanceBlockDevice),
          ) as _i2.EbsInstanceBlockDevice));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    InstanceBlockDeviceMapping object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'InstanceBlockDeviceMappingResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final InstanceBlockDeviceMapping(:deviceName, :ebs) = object;
    if (deviceName != null) {
      result$
        ..add(const _i3.XmlElementName('DeviceName'))
        ..add(serializers.serialize(
          deviceName,
          specifiedType: const FullType(String),
        ));
    }
    if (ebs != null) {
      result$
        ..add(const _i3.XmlElementName('Ebs'))
        ..add(serializers.serialize(
          ebs,
          specifiedType: const FullType(_i2.EbsInstanceBlockDevice),
        ));
    }
    return result$;
  }
}
