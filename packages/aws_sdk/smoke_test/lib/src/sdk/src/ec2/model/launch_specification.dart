// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.launch_specification; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i9;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i10;
import 'package:smoke_test/src/sdk/src/ec2/model/block_device_mapping.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/group_identifier.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/iam_instance_profile_specification.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_network_interface_specification.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_type.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/run_instances_monitoring_enabled.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/ec2/model/spot_placement.dart' as _i7;

part 'launch_specification.g.dart';

/// Describes the launch specification for an instance.
abstract class LaunchSpecification
    with _i1.AWSEquatable<LaunchSpecification>
    implements Built<LaunchSpecification, LaunchSpecificationBuilder> {
  /// Describes the launch specification for an instance.
  factory LaunchSpecification({
    String? userData,
    List<_i2.GroupIdentifier>? securityGroups,
    String? addressingType,
    List<_i3.BlockDeviceMapping>? blockDeviceMappings,
    bool? ebsOptimized,
    _i4.IamInstanceProfileSpecification? iamInstanceProfile,
    String? imageId,
    _i5.InstanceType? instanceType,
    String? kernelId,
    String? keyName,
    List<_i6.InstanceNetworkInterfaceSpecification>? networkInterfaces,
    _i7.SpotPlacement? placement,
    String? ramdiskId,
    String? subnetId,
    _i8.RunInstancesMonitoringEnabled? monitoring,
  }) {
    ebsOptimized ??= false;
    return _$LaunchSpecification._(
      userData: userData,
      securityGroups:
          securityGroups == null ? null : _i9.BuiltList(securityGroups),
      addressingType: addressingType,
      blockDeviceMappings: blockDeviceMappings == null
          ? null
          : _i9.BuiltList(blockDeviceMappings),
      ebsOptimized: ebsOptimized,
      iamInstanceProfile: iamInstanceProfile,
      imageId: imageId,
      instanceType: instanceType,
      kernelId: kernelId,
      keyName: keyName,
      networkInterfaces:
          networkInterfaces == null ? null : _i9.BuiltList(networkInterfaces),
      placement: placement,
      ramdiskId: ramdiskId,
      subnetId: subnetId,
      monitoring: monitoring,
    );
  }

  /// Describes the launch specification for an instance.
  factory LaunchSpecification.build(
          [void Function(LaunchSpecificationBuilder) updates]) =
      _$LaunchSpecification;

  const LaunchSpecification._();

  static const List<_i10.SmithySerializer> serializers = [
    LaunchSpecificationEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(LaunchSpecificationBuilder b) {
    b.ebsOptimized = false;
  }

  /// The Base64-encoded user data for the instance.
  String? get userData;

  /// One or more security groups. When requesting instances in a VPC, you must specify the IDs of the security groups. When requesting instances in EC2-Classic, you can specify the names or the IDs of the security groups.
  _i9.BuiltList<_i2.GroupIdentifier>? get securityGroups;

  /// Deprecated.
  String? get addressingType;

  /// One or more block device mapping entries.
  _i9.BuiltList<_i3.BlockDeviceMapping>? get blockDeviceMappings;

  /// Indicates whether the instance is optimized for EBS I/O. This optimization provides dedicated throughput to Amazon EBS and an optimized configuration stack to provide optimal EBS I/O performance. This optimization isn't available with all instance types. Additional usage charges apply when using an EBS Optimized instance.
  ///
  /// Default: `false`
  bool get ebsOptimized;

  /// The IAM instance profile.
  _i4.IamInstanceProfileSpecification? get iamInstanceProfile;

  /// The ID of the AMI.
  String? get imageId;

  /// The instance type. Only one instance type can be specified.
  _i5.InstanceType? get instanceType;

  /// The ID of the kernel.
  String? get kernelId;

  /// The name of the key pair.
  String? get keyName;

  /// One or more network interfaces. If you specify a network interface, you must specify subnet IDs and security group IDs using the network interface.
  _i9.BuiltList<_i6.InstanceNetworkInterfaceSpecification>?
      get networkInterfaces;

  /// The placement information for the instance.
  _i7.SpotPlacement? get placement;

  /// The ID of the RAM disk.
  String? get ramdiskId;

  /// The ID of the subnet in which to launch the instance.
  String? get subnetId;

  /// Describes the monitoring of an instance.
  _i8.RunInstancesMonitoringEnabled? get monitoring;
  @override
  List<Object?> get props => [
        userData,
        securityGroups,
        addressingType,
        blockDeviceMappings,
        ebsOptimized,
        iamInstanceProfile,
        imageId,
        instanceType,
        kernelId,
        keyName,
        networkInterfaces,
        placement,
        ramdiskId,
        subnetId,
        monitoring,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('LaunchSpecification');
    helper.add(
      'userData',
      userData,
    );
    helper.add(
      'securityGroups',
      securityGroups,
    );
    helper.add(
      'addressingType',
      addressingType,
    );
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
      'subnetId',
      subnetId,
    );
    helper.add(
      'monitoring',
      monitoring,
    );
    return helper.toString();
  }
}

class LaunchSpecificationEc2QuerySerializer
    extends _i10.StructuredSmithySerializer<LaunchSpecification> {
  const LaunchSpecificationEc2QuerySerializer() : super('LaunchSpecification');

  @override
  Iterable<Type> get types => const [
        LaunchSpecification,
        _$LaunchSpecification,
      ];
  @override
  Iterable<_i10.ShapeId> get supportedProtocols => const [
        _i10.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  LaunchSpecification deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LaunchSpecificationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'userData':
          result.userData = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'groupSet':
          result.securityGroups.replace((const _i10.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i10.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i9.BuiltList,
              [FullType(_i2.GroupIdentifier)],
            ),
          ) as _i9.BuiltList<_i2.GroupIdentifier>));
        case 'addressingType':
          result.addressingType = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'blockDeviceMapping':
          result.blockDeviceMappings.replace((const _i10.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i10.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i9.BuiltList,
              [FullType(_i3.BlockDeviceMapping)],
            ),
          ) as _i9.BuiltList<_i3.BlockDeviceMapping>));
        case 'ebsOptimized':
          result.ebsOptimized = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'iamInstanceProfile':
          result.iamInstanceProfile.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.IamInstanceProfileSpecification),
          ) as _i4.IamInstanceProfileSpecification));
        case 'imageId':
          result.imageId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'instanceType':
          result.instanceType = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i5.InstanceType),
          ) as _i5.InstanceType);
        case 'kernelId':
          result.kernelId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'keyName':
          result.keyName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'networkInterfaceSet':
          result.networkInterfaces.replace((const _i10.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i10.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i9.BuiltList,
              [FullType(_i6.InstanceNetworkInterfaceSpecification)],
            ),
          ) as _i9.BuiltList<_i6.InstanceNetworkInterfaceSpecification>));
        case 'placement':
          result.placement.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i7.SpotPlacement),
          ) as _i7.SpotPlacement));
        case 'ramdiskId':
          result.ramdiskId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'subnetId':
          result.subnetId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'monitoring':
          result.monitoring.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i8.RunInstancesMonitoringEnabled),
          ) as _i8.RunInstancesMonitoringEnabled));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    LaunchSpecification object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i10.XmlElementName(
        'LaunchSpecificationResponse',
        _i10.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final LaunchSpecification(
      :userData,
      :securityGroups,
      :addressingType,
      :blockDeviceMappings,
      :ebsOptimized,
      :iamInstanceProfile,
      :imageId,
      :instanceType,
      :kernelId,
      :keyName,
      :networkInterfaces,
      :placement,
      :ramdiskId,
      :subnetId,
      :monitoring
    ) = object;
    if (userData != null) {
      result$
        ..add(const _i10.XmlElementName('UserData'))
        ..add(serializers.serialize(
          userData,
          specifiedType: const FullType(String),
        ));
    }
    if (securityGroups != null) {
      result$
        ..add(const _i10.XmlElementName('GroupSet'))
        ..add(const _i10.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i10.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          securityGroups,
          specifiedType: const FullType.nullable(
            _i9.BuiltList,
            [FullType(_i2.GroupIdentifier)],
          ),
        ));
    }
    if (addressingType != null) {
      result$
        ..add(const _i10.XmlElementName('AddressingType'))
        ..add(serializers.serialize(
          addressingType,
          specifiedType: const FullType(String),
        ));
    }
    if (blockDeviceMappings != null) {
      result$
        ..add(const _i10.XmlElementName('BlockDeviceMapping'))
        ..add(const _i10.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i10.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          blockDeviceMappings,
          specifiedType: const FullType.nullable(
            _i9.BuiltList,
            [FullType(_i3.BlockDeviceMapping)],
          ),
        ));
    }
    result$
      ..add(const _i10.XmlElementName('EbsOptimized'))
      ..add(serializers.serialize(
        ebsOptimized,
        specifiedType: const FullType(bool),
      ));
    if (iamInstanceProfile != null) {
      result$
        ..add(const _i10.XmlElementName('IamInstanceProfile'))
        ..add(serializers.serialize(
          iamInstanceProfile,
          specifiedType: const FullType(_i4.IamInstanceProfileSpecification),
        ));
    }
    if (imageId != null) {
      result$
        ..add(const _i10.XmlElementName('ImageId'))
        ..add(serializers.serialize(
          imageId,
          specifiedType: const FullType(String),
        ));
    }
    if (instanceType != null) {
      result$
        ..add(const _i10.XmlElementName('InstanceType'))
        ..add(serializers.serialize(
          instanceType,
          specifiedType: const FullType.nullable(_i5.InstanceType),
        ));
    }
    if (kernelId != null) {
      result$
        ..add(const _i10.XmlElementName('KernelId'))
        ..add(serializers.serialize(
          kernelId,
          specifiedType: const FullType(String),
        ));
    }
    if (keyName != null) {
      result$
        ..add(const _i10.XmlElementName('KeyName'))
        ..add(serializers.serialize(
          keyName,
          specifiedType: const FullType(String),
        ));
    }
    if (networkInterfaces != null) {
      result$
        ..add(const _i10.XmlElementName('NetworkInterfaceSet'))
        ..add(const _i10.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i10.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          networkInterfaces,
          specifiedType: const FullType.nullable(
            _i9.BuiltList,
            [FullType(_i6.InstanceNetworkInterfaceSpecification)],
          ),
        ));
    }
    if (placement != null) {
      result$
        ..add(const _i10.XmlElementName('Placement'))
        ..add(serializers.serialize(
          placement,
          specifiedType: const FullType(_i7.SpotPlacement),
        ));
    }
    if (ramdiskId != null) {
      result$
        ..add(const _i10.XmlElementName('RamdiskId'))
        ..add(serializers.serialize(
          ramdiskId,
          specifiedType: const FullType(String),
        ));
    }
    if (subnetId != null) {
      result$
        ..add(const _i10.XmlElementName('SubnetId'))
        ..add(serializers.serialize(
          subnetId,
          specifiedType: const FullType(String),
        ));
    }
    if (monitoring != null) {
      result$
        ..add(const _i10.XmlElementName('Monitoring'))
        ..add(serializers.serialize(
          monitoring,
          specifiedType: const FullType(_i8.RunInstancesMonitoringEnabled),
        ));
    }
    return result$;
  }
}
