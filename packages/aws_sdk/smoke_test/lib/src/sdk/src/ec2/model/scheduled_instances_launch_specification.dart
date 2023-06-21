// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.scheduled_instances_launch_specification; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i7;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i8;
import 'package:smoke_test/src/sdk/src/ec2/model/scheduled_instances_block_device_mapping.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/scheduled_instances_iam_instance_profile.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/scheduled_instances_monitoring.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/scheduled_instances_network_interface.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/scheduled_instances_placement.dart'
    as _i6;

part 'scheduled_instances_launch_specification.g.dart';

/// Describes the launch specification for a Scheduled Instance.
///
/// If you are launching the Scheduled Instance in EC2-VPC, you must specify the ID of the subnet. You can specify the subnet using either `SubnetId` or `NetworkInterface`.
abstract class ScheduledInstancesLaunchSpecification
    with
        _i1.AWSEquatable<ScheduledInstancesLaunchSpecification>
    implements
        Built<ScheduledInstancesLaunchSpecification,
            ScheduledInstancesLaunchSpecificationBuilder> {
  /// Describes the launch specification for a Scheduled Instance.
  ///
  /// If you are launching the Scheduled Instance in EC2-VPC, you must specify the ID of the subnet. You can specify the subnet using either `SubnetId` or `NetworkInterface`.
  factory ScheduledInstancesLaunchSpecification({
    List<_i2.ScheduledInstancesBlockDeviceMapping>? blockDeviceMappings,
    bool? ebsOptimized,
    _i3.ScheduledInstancesIamInstanceProfile? iamInstanceProfile,
    required String imageId,
    String? instanceType,
    String? kernelId,
    String? keyName,
    _i4.ScheduledInstancesMonitoring? monitoring,
    List<_i5.ScheduledInstancesNetworkInterface>? networkInterfaces,
    _i6.ScheduledInstancesPlacement? placement,
    String? ramdiskId,
    List<String>? securityGroupIds,
    String? subnetId,
    String? userData,
  }) {
    ebsOptimized ??= false;
    return _$ScheduledInstancesLaunchSpecification._(
      blockDeviceMappings: blockDeviceMappings == null
          ? null
          : _i7.BuiltList(blockDeviceMappings),
      ebsOptimized: ebsOptimized,
      iamInstanceProfile: iamInstanceProfile,
      imageId: imageId,
      instanceType: instanceType,
      kernelId: kernelId,
      keyName: keyName,
      monitoring: monitoring,
      networkInterfaces:
          networkInterfaces == null ? null : _i7.BuiltList(networkInterfaces),
      placement: placement,
      ramdiskId: ramdiskId,
      securityGroupIds:
          securityGroupIds == null ? null : _i7.BuiltList(securityGroupIds),
      subnetId: subnetId,
      userData: userData,
    );
  }

  /// Describes the launch specification for a Scheduled Instance.
  ///
  /// If you are launching the Scheduled Instance in EC2-VPC, you must specify the ID of the subnet. You can specify the subnet using either `SubnetId` or `NetworkInterface`.
  factory ScheduledInstancesLaunchSpecification.build(
      [void Function(ScheduledInstancesLaunchSpecificationBuilder)
          updates]) = _$ScheduledInstancesLaunchSpecification;

  const ScheduledInstancesLaunchSpecification._();

  static const List<_i8.SmithySerializer> serializers = [
    ScheduledInstancesLaunchSpecificationEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ScheduledInstancesLaunchSpecificationBuilder b) {
    b.ebsOptimized = false;
  }

  /// The block device mapping entries.
  _i7.BuiltList<_i2.ScheduledInstancesBlockDeviceMapping>?
      get blockDeviceMappings;

  /// Indicates whether the instances are optimized for EBS I/O. This optimization provides dedicated throughput to Amazon EBS and an optimized configuration stack to provide optimal EBS I/O performance. This optimization isn't available with all instance types. Additional usage charges apply when using an EBS-optimized instance.
  ///
  /// Default: `false`
  bool get ebsOptimized;

  /// The IAM instance profile.
  _i3.ScheduledInstancesIamInstanceProfile? get iamInstanceProfile;

  /// The ID of the Amazon Machine Image (AMI).
  String get imageId;

  /// The instance type.
  String? get instanceType;

  /// The ID of the kernel.
  String? get kernelId;

  /// The name of the key pair.
  String? get keyName;

  /// Enable or disable monitoring for the instances.
  _i4.ScheduledInstancesMonitoring? get monitoring;

  /// The network interfaces.
  _i7.BuiltList<_i5.ScheduledInstancesNetworkInterface>? get networkInterfaces;

  /// The placement information.
  _i6.ScheduledInstancesPlacement? get placement;

  /// The ID of the RAM disk.
  String? get ramdiskId;

  /// The IDs of the security groups.
  _i7.BuiltList<String>? get securityGroupIds;

  /// The ID of the subnet in which to launch the instances.
  String? get subnetId;

  /// The base64-encoded MIME user data.
  String? get userData;
  @override
  List<Object?> get props => [
        blockDeviceMappings,
        ebsOptimized,
        iamInstanceProfile,
        imageId,
        instanceType,
        kernelId,
        keyName,
        monitoring,
        networkInterfaces,
        placement,
        ramdiskId,
        securityGroupIds,
        subnetId,
        userData,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ScheduledInstancesLaunchSpecification');
    helper.add(
      'blockDeviceMappings',
      blockDeviceMappings,
    );
    helper.add(
      'ebsOptimized',
      ebsOptimized,
    );
    helper.add(
      'iamInstanceProfile',
      iamInstanceProfile,
    );
    helper.add(
      'imageId',
      imageId,
    );
    helper.add(
      'instanceType',
      instanceType,
    );
    helper.add(
      'kernelId',
      kernelId,
    );
    helper.add(
      'keyName',
      keyName,
    );
    helper.add(
      'monitoring',
      monitoring,
    );
    helper.add(
      'networkInterfaces',
      networkInterfaces,
    );
    helper.add(
      'placement',
      placement,
    );
    helper.add(
      'ramdiskId',
      ramdiskId,
    );
    helper.add(
      'securityGroupIds',
      securityGroupIds,
    );
    helper.add(
      'subnetId',
      subnetId,
    );
    helper.add(
      'userData',
      userData,
    );
    return helper.toString();
  }
}

class ScheduledInstancesLaunchSpecificationEc2QuerySerializer extends _i8
    .StructuredSmithySerializer<ScheduledInstancesLaunchSpecification> {
  const ScheduledInstancesLaunchSpecificationEc2QuerySerializer()
      : super('ScheduledInstancesLaunchSpecification');

  @override
  Iterable<Type> get types => const [
        ScheduledInstancesLaunchSpecification,
        _$ScheduledInstancesLaunchSpecification,
      ];
  @override
  Iterable<_i8.ShapeId> get supportedProtocols => const [
        _i8.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ScheduledInstancesLaunchSpecification deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ScheduledInstancesLaunchSpecificationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'BlockDeviceMapping':
          result.blockDeviceMappings.replace((const _i8.XmlBuiltListSerializer(
            memberName: 'BlockDeviceMapping',
            indexer: _i8.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i7.BuiltList,
              [FullType(_i2.ScheduledInstancesBlockDeviceMapping)],
            ),
          ) as _i7.BuiltList<_i2.ScheduledInstancesBlockDeviceMapping>));
        case 'EbsOptimized':
          result.ebsOptimized = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'IamInstanceProfile':
          result.iamInstanceProfile.replace((serializers.deserialize(
            value,
            specifiedType:
                const FullType(_i3.ScheduledInstancesIamInstanceProfile),
          ) as _i3.ScheduledInstancesIamInstanceProfile));
        case 'ImageId':
          result.imageId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'InstanceType':
          result.instanceType = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'KernelId':
          result.kernelId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'KeyName':
          result.keyName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Monitoring':
          result.monitoring.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.ScheduledInstancesMonitoring),
          ) as _i4.ScheduledInstancesMonitoring));
        case 'NetworkInterface':
          result.networkInterfaces.replace((const _i8.XmlBuiltListSerializer(
            memberName: 'NetworkInterface',
            indexer: _i8.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i7.BuiltList,
              [FullType(_i5.ScheduledInstancesNetworkInterface)],
            ),
          ) as _i7.BuiltList<_i5.ScheduledInstancesNetworkInterface>));
        case 'Placement':
          result.placement.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i6.ScheduledInstancesPlacement),
          ) as _i6.ScheduledInstancesPlacement));
        case 'RamdiskId':
          result.ramdiskId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'SecurityGroupId':
          result.securityGroupIds.replace((const _i8.XmlBuiltListSerializer(
            memberName: 'SecurityGroupId',
            indexer: _i8.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i7.BuiltList,
              [FullType(String)],
            ),
          ) as _i7.BuiltList<String>));
        case 'SubnetId':
          result.subnetId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'UserData':
          result.userData = (serializers.deserialize(
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
    ScheduledInstancesLaunchSpecification object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i8.XmlElementName(
        'ScheduledInstancesLaunchSpecificationResponse',
        _i8.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ScheduledInstancesLaunchSpecification(
      :blockDeviceMappings,
      :ebsOptimized,
      :iamInstanceProfile,
      :imageId,
      :instanceType,
      :kernelId,
      :keyName,
      :monitoring,
      :networkInterfaces,
      :placement,
      :ramdiskId,
      :securityGroupIds,
      :subnetId,
      :userData
    ) = object;
    if (blockDeviceMappings != null) {
      result$
        ..add(const _i8.XmlElementName('BlockDeviceMapping'))
        ..add(const _i8.XmlBuiltListSerializer(
          memberName: 'BlockDeviceMapping',
          indexer: _i8.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          blockDeviceMappings,
          specifiedType: const FullType.nullable(
            _i7.BuiltList,
            [FullType(_i2.ScheduledInstancesBlockDeviceMapping)],
          ),
        ));
    }
    result$
      ..add(const _i8.XmlElementName('EbsOptimized'))
      ..add(serializers.serialize(
        ebsOptimized,
        specifiedType: const FullType(bool),
      ));
    if (iamInstanceProfile != null) {
      result$
        ..add(const _i8.XmlElementName('IamInstanceProfile'))
        ..add(serializers.serialize(
          iamInstanceProfile,
          specifiedType:
              const FullType(_i3.ScheduledInstancesIamInstanceProfile),
        ));
    }
    result$
      ..add(const _i8.XmlElementName('ImageId'))
      ..add(serializers.serialize(
        imageId,
        specifiedType: const FullType(String),
      ));
    if (instanceType != null) {
      result$
        ..add(const _i8.XmlElementName('InstanceType'))
        ..add(serializers.serialize(
          instanceType,
          specifiedType: const FullType(String),
        ));
    }
    if (kernelId != null) {
      result$
        ..add(const _i8.XmlElementName('KernelId'))
        ..add(serializers.serialize(
          kernelId,
          specifiedType: const FullType(String),
        ));
    }
    if (keyName != null) {
      result$
        ..add(const _i8.XmlElementName('KeyName'))
        ..add(serializers.serialize(
          keyName,
          specifiedType: const FullType(String),
        ));
    }
    if (monitoring != null) {
      result$
        ..add(const _i8.XmlElementName('Monitoring'))
        ..add(serializers.serialize(
          monitoring,
          specifiedType: const FullType(_i4.ScheduledInstancesMonitoring),
        ));
    }
    if (networkInterfaces != null) {
      result$
        ..add(const _i8.XmlElementName('NetworkInterface'))
        ..add(const _i8.XmlBuiltListSerializer(
          memberName: 'NetworkInterface',
          indexer: _i8.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          networkInterfaces,
          specifiedType: const FullType.nullable(
            _i7.BuiltList,
            [FullType(_i5.ScheduledInstancesNetworkInterface)],
          ),
        ));
    }
    if (placement != null) {
      result$
        ..add(const _i8.XmlElementName('Placement'))
        ..add(serializers.serialize(
          placement,
          specifiedType: const FullType(_i6.ScheduledInstancesPlacement),
        ));
    }
    if (ramdiskId != null) {
      result$
        ..add(const _i8.XmlElementName('RamdiskId'))
        ..add(serializers.serialize(
          ramdiskId,
          specifiedType: const FullType(String),
        ));
    }
    if (securityGroupIds != null) {
      result$
        ..add(const _i8.XmlElementName('SecurityGroupId'))
        ..add(const _i8.XmlBuiltListSerializer(
          memberName: 'SecurityGroupId',
          indexer: _i8.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          securityGroupIds,
          specifiedType: const FullType.nullable(
            _i7.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (subnetId != null) {
      result$
        ..add(const _i8.XmlElementName('SubnetId'))
        ..add(serializers.serialize(
          subnetId,
          specifiedType: const FullType(String),
        ));
    }
    if (userData != null) {
      result$
        ..add(const _i8.XmlElementName('UserData'))
        ..add(serializers.serialize(
          userData,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
