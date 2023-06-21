// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.instance; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i30;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i31;
import 'package:smoke_test/src/sdk/src/ec2/model/architecture_values.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/ec2/model/boot_mode_values.dart' as _i27;
import 'package:smoke_test/src/sdk/src/ec2/model/capacity_reservation_specification_response.dart'
    as _i22;
import 'package:smoke_test/src/sdk/src/ec2/model/cpu_options.dart' as _i21;
import 'package:smoke_test/src/sdk/src/ec2/model/device_type.dart' as _i16;
import 'package:smoke_test/src/sdk/src/ec2/model/elastic_gpu_association.dart'
    as _i13;
import 'package:smoke_test/src/sdk/src/ec2/model/elastic_inference_accelerator_association.dart'
    as _i14;
import 'package:smoke_test/src/sdk/src/ec2/model/enclave_options.dart' as _i26;
import 'package:smoke_test/src/sdk/src/ec2/model/group_identifier.dart' as _i17;
import 'package:smoke_test/src/sdk/src/ec2/model/hibernation_options.dart'
    as _i23;
import 'package:smoke_test/src/sdk/src/ec2/model/hypervisor_type.dart' as _i10;
import 'package:smoke_test/src/sdk/src/ec2/model/iam_instance_profile.dart'
    as _i11;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_block_device_mapping.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_lifecycle_type.dart'
    as _i12;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_maintenance_options.dart'
    as _i29;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_metadata_options_response.dart'
    as _i25;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_network_interface.dart'
    as _i15;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_state.dart' as _i7;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_type.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/license_configuration.dart'
    as _i24;
import 'package:smoke_test/src/sdk/src/ec2/model/monitoring.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/placement.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/platform_values.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/private_dns_name_options_response.dart'
    as _i28;
import 'package:smoke_test/src/sdk/src/ec2/model/product_code.dart' as _i6;
import 'package:smoke_test/src/sdk/src/ec2/model/state_reason.dart' as _i18;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i19;
import 'package:smoke_test/src/sdk/src/ec2/model/virtualization_type.dart'
    as _i20;

part 'instance.g.dart';

/// Describes an instance.
abstract class Instance
    with _i1.AWSEquatable<Instance>
    implements Built<Instance, InstanceBuilder> {
  /// Describes an instance.
  factory Instance({
    int? amiLaunchIndex,
    String? imageId,
    String? instanceId,
    _i2.InstanceType? instanceType,
    String? kernelId,
    String? keyName,
    DateTime? launchTime,
    _i3.Monitoring? monitoring,
    _i4.Placement? placement,
    _i5.PlatformValues? platform,
    String? privateDnsName,
    String? privateIpAddress,
    List<_i6.ProductCode>? productCodes,
    String? publicDnsName,
    String? publicIpAddress,
    String? ramdiskId,
    _i7.InstanceState? state,
    String? stateTransitionReason,
    String? subnetId,
    String? vpcId,
    _i8.ArchitectureValues? architecture,
    List<_i9.InstanceBlockDeviceMapping>? blockDeviceMappings,
    String? clientToken,
    bool? ebsOptimized,
    bool? enaSupport,
    _i10.HypervisorType? hypervisor,
    _i11.IamInstanceProfile? iamInstanceProfile,
    _i12.InstanceLifecycleType? instanceLifecycle,
    List<_i13.ElasticGpuAssociation>? elasticGpuAssociations,
    List<_i14.ElasticInferenceAcceleratorAssociation>?
        elasticInferenceAcceleratorAssociations,
    List<_i15.InstanceNetworkInterface>? networkInterfaces,
    String? outpostArn,
    String? rootDeviceName,
    _i16.DeviceType? rootDeviceType,
    List<_i17.GroupIdentifier>? securityGroups,
    bool? sourceDestCheck,
    String? spotInstanceRequestId,
    String? sriovNetSupport,
    _i18.StateReason? stateReason,
    List<_i19.Tag>? tags,
    _i20.VirtualizationType? virtualizationType,
    _i21.CpuOptions? cpuOptions,
    String? capacityReservationId,
    _i22.CapacityReservationSpecificationResponse?
        capacityReservationSpecification,
    _i23.HibernationOptions? hibernationOptions,
    List<_i24.LicenseConfiguration>? licenses,
    _i25.InstanceMetadataOptionsResponse? metadataOptions,
    _i26.EnclaveOptions? enclaveOptions,
    _i27.BootModeValues? bootMode,
    String? platformDetails,
    String? usageOperation,
    DateTime? usageOperationUpdateTime,
    _i28.PrivateDnsNameOptionsResponse? privateDnsNameOptions,
    String? ipv6Address,
    String? tpmSupport,
    _i29.InstanceMaintenanceOptions? maintenanceOptions,
  }) {
    amiLaunchIndex ??= 0;
    ebsOptimized ??= false;
    enaSupport ??= false;
    sourceDestCheck ??= false;
    return _$Instance._(
      amiLaunchIndex: amiLaunchIndex,
      imageId: imageId,
      instanceId: instanceId,
      instanceType: instanceType,
      kernelId: kernelId,
      keyName: keyName,
      launchTime: launchTime,
      monitoring: monitoring,
      placement: placement,
      platform: platform,
      privateDnsName: privateDnsName,
      privateIpAddress: privateIpAddress,
      productCodes: productCodes == null ? null : _i30.BuiltList(productCodes),
      publicDnsName: publicDnsName,
      publicIpAddress: publicIpAddress,
      ramdiskId: ramdiskId,
      state: state,
      stateTransitionReason: stateTransitionReason,
      subnetId: subnetId,
      vpcId: vpcId,
      architecture: architecture,
      blockDeviceMappings: blockDeviceMappings == null
          ? null
          : _i30.BuiltList(blockDeviceMappings),
      clientToken: clientToken,
      ebsOptimized: ebsOptimized,
      enaSupport: enaSupport,
      hypervisor: hypervisor,
      iamInstanceProfile: iamInstanceProfile,
      instanceLifecycle: instanceLifecycle,
      elasticGpuAssociations: elasticGpuAssociations == null
          ? null
          : _i30.BuiltList(elasticGpuAssociations),
      elasticInferenceAcceleratorAssociations:
          elasticInferenceAcceleratorAssociations == null
              ? null
              : _i30.BuiltList(elasticInferenceAcceleratorAssociations),
      networkInterfaces:
          networkInterfaces == null ? null : _i30.BuiltList(networkInterfaces),
      outpostArn: outpostArn,
      rootDeviceName: rootDeviceName,
      rootDeviceType: rootDeviceType,
      securityGroups:
          securityGroups == null ? null : _i30.BuiltList(securityGroups),
      sourceDestCheck: sourceDestCheck,
      spotInstanceRequestId: spotInstanceRequestId,
      sriovNetSupport: sriovNetSupport,
      stateReason: stateReason,
      tags: tags == null ? null : _i30.BuiltList(tags),
      virtualizationType: virtualizationType,
      cpuOptions: cpuOptions,
      capacityReservationId: capacityReservationId,
      capacityReservationSpecification: capacityReservationSpecification,
      hibernationOptions: hibernationOptions,
      licenses: licenses == null ? null : _i30.BuiltList(licenses),
      metadataOptions: metadataOptions,
      enclaveOptions: enclaveOptions,
      bootMode: bootMode,
      platformDetails: platformDetails,
      usageOperation: usageOperation,
      usageOperationUpdateTime: usageOperationUpdateTime,
      privateDnsNameOptions: privateDnsNameOptions,
      ipv6Address: ipv6Address,
      tpmSupport: tpmSupport,
      maintenanceOptions: maintenanceOptions,
    );
  }

  /// Describes an instance.
  factory Instance.build([void Function(InstanceBuilder) updates]) = _$Instance;

  const Instance._();

  static const List<_i31.SmithySerializer> serializers = [
    InstanceEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InstanceBuilder b) {
    b.amiLaunchIndex = 0;
    b.ebsOptimized = false;
    b.enaSupport = false;
    b.sourceDestCheck = false;
  }

  /// The AMI launch index, which can be used to find this instance in the launch group.
  int get amiLaunchIndex;

  /// The ID of the AMI used to launch the instance.
  String? get imageId;

  /// The ID of the instance.
  String? get instanceId;

  /// The instance type.
  _i2.InstanceType? get instanceType;

  /// The kernel associated with this instance, if applicable.
  String? get kernelId;

  /// The name of the key pair, if this instance was launched with an associated key pair.
  String? get keyName;

  /// The time the instance was launched.
  DateTime? get launchTime;

  /// The monitoring for the instance.
  _i3.Monitoring? get monitoring;

  /// The location where the instance launched, if applicable.
  _i4.Placement? get placement;

  /// The value is `Windows` for Windows instances; otherwise blank.
  _i5.PlatformValues? get platform;

  /// (IPv4 only) The private DNS hostname name assigned to the instance. This DNS hostname can only be used inside the Amazon EC2 network. This name is not available until the instance enters the `running` state.
  ///
  /// \[EC2-VPC\] The Amazon-provided DNS server resolves Amazon-provided private DNS hostnames if you've enabled DNS resolution and DNS hostnames in your VPC. If you are not using the Amazon-provided DNS server in your VPC, your custom domain name servers must resolve the hostname as appropriate.
  String? get privateDnsName;

  /// The private IPv4 address assigned to the instance.
  String? get privateIpAddress;

  /// The product codes attached to this instance, if applicable.
  _i30.BuiltList<_i6.ProductCode>? get productCodes;

  /// (IPv4 only) The public DNS name assigned to the instance. This name is not available until the instance enters the `running` state. For EC2-VPC, this name is only available if you've enabled DNS hostnames for your VPC.
  String? get publicDnsName;

  /// The public IPv4 address, or the Carrier IP address assigned to the instance, if applicable.
  ///
  /// A Carrier IP address only applies to an instance launched in a subnet associated with a Wavelength Zone.
  String? get publicIpAddress;

  /// The RAM disk associated with this instance, if applicable.
  String? get ramdiskId;

  /// The current state of the instance.
  _i7.InstanceState? get state;

  /// The reason for the most recent state transition. This might be an empty string.
  String? get stateTransitionReason;

  /// \[EC2-VPC\] The ID of the subnet in which the instance is running.
  String? get subnetId;

  /// \[EC2-VPC\] The ID of the VPC in which the instance is running.
  String? get vpcId;

  /// The architecture of the image.
  _i8.ArchitectureValues? get architecture;

  /// Any block device mapping entries for the instance.
  _i30.BuiltList<_i9.InstanceBlockDeviceMapping>? get blockDeviceMappings;

  /// The idempotency token you provided when you launched the instance, if applicable.
  String? get clientToken;

  /// Indicates whether the instance is optimized for Amazon EBS I/O. This optimization provides dedicated throughput to Amazon EBS and an optimized configuration stack to provide optimal I/O performance. This optimization isn't available with all instance types. Additional usage charges apply when using an EBS Optimized instance.
  bool get ebsOptimized;

  /// Specifies whether enhanced networking with ENA is enabled.
  bool get enaSupport;

  /// The hypervisor type of the instance. The value `xen` is used for both Xen and Nitro hypervisors.
  _i10.HypervisorType? get hypervisor;

  /// The IAM instance profile associated with the instance, if applicable.
  _i11.IamInstanceProfile? get iamInstanceProfile;

  /// Indicates whether this is a Spot Instance or a Scheduled Instance.
  _i12.InstanceLifecycleType? get instanceLifecycle;

  /// The Elastic GPU associated with the instance.
  _i30.BuiltList<_i13.ElasticGpuAssociation>? get elasticGpuAssociations;

  /// The elastic inference accelerator associated with the instance.
  _i30.BuiltList<_i14.ElasticInferenceAcceleratorAssociation>?
      get elasticInferenceAcceleratorAssociations;

  /// \[EC2-VPC\] The network interfaces for the instance.
  _i30.BuiltList<_i15.InstanceNetworkInterface>? get networkInterfaces;

  /// The Amazon Resource Name (ARN) of the Outpost.
  String? get outpostArn;

  /// The device name of the root device volume (for example, `/dev/sda1`).
  String? get rootDeviceName;

  /// The root device type used by the AMI. The AMI can use an EBS volume or an instance store volume.
  _i16.DeviceType? get rootDeviceType;

  /// The security groups for the instance.
  _i30.BuiltList<_i17.GroupIdentifier>? get securityGroups;

  /// Indicates whether source/destination checking is enabled.
  bool get sourceDestCheck;

  /// If the request is a Spot Instance request, the ID of the request.
  String? get spotInstanceRequestId;

  /// Specifies whether enhanced networking with the Intel 82599 Virtual Function interface is enabled.
  String? get sriovNetSupport;

  /// The reason for the most recent state transition.
  _i18.StateReason? get stateReason;

  /// Any tags assigned to the instance.
  _i30.BuiltList<_i19.Tag>? get tags;

  /// The virtualization type of the instance.
  _i20.VirtualizationType? get virtualizationType;

  /// The CPU options for the instance.
  _i21.CpuOptions? get cpuOptions;

  /// The ID of the Capacity Reservation.
  String? get capacityReservationId;

  /// Information about the Capacity Reservation targeting option.
  _i22.CapacityReservationSpecificationResponse?
      get capacityReservationSpecification;

  /// Indicates whether the instance is enabled for hibernation.
  _i23.HibernationOptions? get hibernationOptions;

  /// The license configurations for the instance.
  _i30.BuiltList<_i24.LicenseConfiguration>? get licenses;

  /// The metadata options for the instance.
  _i25.InstanceMetadataOptionsResponse? get metadataOptions;

  /// Indicates whether the instance is enabled for Amazon Web Services Nitro Enclaves.
  _i26.EnclaveOptions? get enclaveOptions;

  /// The boot mode of the instance. For more information, see [Boot modes](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-boot.html) in the _Amazon EC2 User Guide_.
  _i27.BootModeValues? get bootMode;

  /// The platform details value for the instance. For more information, see [AMI billing information fields](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/billing-info-fields.html) in the _Amazon EC2 User Guide_.
  String? get platformDetails;

  /// The usage operation value for the instance. For more information, see [AMI billing information fields](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/billing-info-fields.html) in the _Amazon EC2 User Guide_.
  String? get usageOperation;

  /// The time that the usage operation was last updated.
  DateTime? get usageOperationUpdateTime;

  /// The options for the instance hostname.
  _i28.PrivateDnsNameOptionsResponse? get privateDnsNameOptions;

  /// The IPv6 address assigned to the instance.
  String? get ipv6Address;

  /// If the instance is configured for NitroTPM support, the value is `v2.0`. For more information, see [NitroTPM](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/nitrotpm.html) in the _Amazon EC2 User Guide_.
  String? get tpmSupport;

  /// Provides information on the recovery and maintenance options of your instance.
  _i29.InstanceMaintenanceOptions? get maintenanceOptions;
  @override
  List<Object?> get props => [
        amiLaunchIndex,
        imageId,
        instanceId,
        instanceType,
        kernelId,
        keyName,
        launchTime,
        monitoring,
        placement,
        platform,
        privateDnsName,
        privateIpAddress,
        productCodes,
        publicDnsName,
        publicIpAddress,
        ramdiskId,
        state,
        stateTransitionReason,
        subnetId,
        vpcId,
        architecture,
        blockDeviceMappings,
        clientToken,
        ebsOptimized,
        enaSupport,
        hypervisor,
        iamInstanceProfile,
        instanceLifecycle,
        elasticGpuAssociations,
        elasticInferenceAcceleratorAssociations,
        networkInterfaces,
        outpostArn,
        rootDeviceName,
        rootDeviceType,
        securityGroups,
        sourceDestCheck,
        spotInstanceRequestId,
        sriovNetSupport,
        stateReason,
        tags,
        virtualizationType,
        cpuOptions,
        capacityReservationId,
        capacityReservationSpecification,
        hibernationOptions,
        licenses,
        metadataOptions,
        enclaveOptions,
        bootMode,
        platformDetails,
        usageOperation,
        usageOperationUpdateTime,
        privateDnsNameOptions,
        ipv6Address,
        tpmSupport,
        maintenanceOptions,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Instance');
    helper.add(
      'amiLaunchIndex',
      amiLaunchIndex,
    );
    helper.add(
      'imageId',
      imageId,
    );
    helper.add(
      'instanceId',
      instanceId,
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
      'launchTime',
      launchTime,
    );
    helper.add(
      'monitoring',
      monitoring,
    );
    helper.add(
      'placement',
      placement,
    );
    helper.add(
      'platform',
      platform,
    );
    helper.add(
      'privateDnsName',
      privateDnsName,
    );
    helper.add(
      'privateIpAddress',
      privateIpAddress,
    );
    helper.add(
      'productCodes',
      productCodes,
    );
    helper.add(
      'publicDnsName',
      publicDnsName,
    );
    helper.add(
      'publicIpAddress',
      publicIpAddress,
    );
    helper.add(
      'ramdiskId',
      ramdiskId,
    );
    helper.add(
      'state',
      state,
    );
    helper.add(
      'stateTransitionReason',
      stateTransitionReason,
    );
    helper.add(
      'subnetId',
      subnetId,
    );
    helper.add(
      'vpcId',
      vpcId,
    );
    helper.add(
      'architecture',
      architecture,
    );
    helper.add(
      'blockDeviceMappings',
      blockDeviceMappings,
    );
    helper.add(
      'clientToken',
      clientToken,
    );
    helper.add(
      'ebsOptimized',
      ebsOptimized,
    );
    helper.add(
      'enaSupport',
      enaSupport,
    );
    helper.add(
      'hypervisor',
      hypervisor,
    );
    helper.add(
      'iamInstanceProfile',
      iamInstanceProfile,
    );
    helper.add(
      'instanceLifecycle',
      instanceLifecycle,
    );
    helper.add(
      'elasticGpuAssociations',
      elasticGpuAssociations,
    );
    helper.add(
      'elasticInferenceAcceleratorAssociations',
      elasticInferenceAcceleratorAssociations,
    );
    helper.add(
      'networkInterfaces',
      networkInterfaces,
    );
    helper.add(
      'outpostArn',
      outpostArn,
    );
    helper.add(
      'rootDeviceName',
      rootDeviceName,
    );
    helper.add(
      'rootDeviceType',
      rootDeviceType,
    );
    helper.add(
      'securityGroups',
      securityGroups,
    );
    helper.add(
      'sourceDestCheck',
      sourceDestCheck,
    );
    helper.add(
      'spotInstanceRequestId',
      spotInstanceRequestId,
    );
    helper.add(
      'sriovNetSupport',
      sriovNetSupport,
    );
    helper.add(
      'stateReason',
      stateReason,
    );
    helper.add(
      'tags',
      tags,
    );
    helper.add(
      'virtualizationType',
      virtualizationType,
    );
    helper.add(
      'cpuOptions',
      cpuOptions,
    );
    helper.add(
      'capacityReservationId',
      capacityReservationId,
    );
    helper.add(
      'capacityReservationSpecification',
      capacityReservationSpecification,
    );
    helper.add(
      'hibernationOptions',
      hibernationOptions,
    );
    helper.add(
      'licenses',
      licenses,
    );
    helper.add(
      'metadataOptions',
      metadataOptions,
    );
    helper.add(
      'enclaveOptions',
      enclaveOptions,
    );
    helper.add(
      'bootMode',
      bootMode,
    );
    helper.add(
      'platformDetails',
      platformDetails,
    );
    helper.add(
      'usageOperation',
      usageOperation,
    );
    helper.add(
      'usageOperationUpdateTime',
      usageOperationUpdateTime,
    );
    helper.add(
      'privateDnsNameOptions',
      privateDnsNameOptions,
    );
    helper.add(
      'ipv6Address',
      ipv6Address,
    );
    helper.add(
      'tpmSupport',
      tpmSupport,
    );
    helper.add(
      'maintenanceOptions',
      maintenanceOptions,
    );
    return helper.toString();
  }
}

class InstanceEc2QuerySerializer
    extends _i31.StructuredSmithySerializer<Instance> {
  const InstanceEc2QuerySerializer() : super('Instance');

  @override
  Iterable<Type> get types => const [
        Instance,
        _$Instance,
      ];
  @override
  Iterable<_i31.ShapeId> get supportedProtocols => const [
        _i31.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  Instance deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InstanceBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'amiLaunchIndex':
          result.amiLaunchIndex = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'imageId':
          result.imageId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'instanceId':
          result.instanceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'instanceType':
          result.instanceType = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.InstanceType),
          ) as _i2.InstanceType);
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
        case 'launchTime':
          result.launchTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'monitoring':
          result.monitoring.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.Monitoring),
          ) as _i3.Monitoring));
        case 'placement':
          result.placement.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.Placement),
          ) as _i4.Placement));
        case 'platform':
          result.platform = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i5.PlatformValues),
          ) as _i5.PlatformValues);
        case 'privateDnsName':
          result.privateDnsName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'privateIpAddress':
          result.privateIpAddress = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'productCodes':
          result.productCodes.replace((const _i31.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i31.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i30.BuiltList,
              [FullType(_i6.ProductCode)],
            ),
          ) as _i30.BuiltList<_i6.ProductCode>));
        case 'dnsName':
          result.publicDnsName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ipAddress':
          result.publicIpAddress = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ramdiskId':
          result.ramdiskId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'instanceState':
          result.state.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i7.InstanceState),
          ) as _i7.InstanceState));
        case 'reason':
          result.stateTransitionReason = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'subnetId':
          result.subnetId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'vpcId':
          result.vpcId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'architecture':
          result.architecture = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i8.ArchitectureValues),
          ) as _i8.ArchitectureValues);
        case 'blockDeviceMapping':
          result.blockDeviceMappings.replace((const _i31.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i31.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i30.BuiltList,
              [FullType(_i9.InstanceBlockDeviceMapping)],
            ),
          ) as _i30.BuiltList<_i9.InstanceBlockDeviceMapping>));
        case 'clientToken':
          result.clientToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ebsOptimized':
          result.ebsOptimized = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'enaSupport':
          result.enaSupport = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'hypervisor':
          result.hypervisor = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i10.HypervisorType),
          ) as _i10.HypervisorType);
        case 'iamInstanceProfile':
          result.iamInstanceProfile.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i11.IamInstanceProfile),
          ) as _i11.IamInstanceProfile));
        case 'instanceLifecycle':
          result.instanceLifecycle = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i12.InstanceLifecycleType),
          ) as _i12.InstanceLifecycleType);
        case 'elasticGpuAssociationSet':
          result.elasticGpuAssociations
              .replace((const _i31.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i31.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i30.BuiltList,
              [FullType(_i13.ElasticGpuAssociation)],
            ),
          ) as _i30.BuiltList<_i13.ElasticGpuAssociation>));
        case 'elasticInferenceAcceleratorAssociationSet':
          result.elasticInferenceAcceleratorAssociations
              .replace((const _i31.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i31.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i30.BuiltList,
              [FullType(_i14.ElasticInferenceAcceleratorAssociation)],
            ),
          ) as _i30.BuiltList<_i14.ElasticInferenceAcceleratorAssociation>));
        case 'networkInterfaceSet':
          result.networkInterfaces.replace((const _i31.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i31.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i30.BuiltList,
              [FullType(_i15.InstanceNetworkInterface)],
            ),
          ) as _i30.BuiltList<_i15.InstanceNetworkInterface>));
        case 'outpostArn':
          result.outpostArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'rootDeviceName':
          result.rootDeviceName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'rootDeviceType':
          result.rootDeviceType = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i16.DeviceType),
          ) as _i16.DeviceType);
        case 'groupSet':
          result.securityGroups.replace((const _i31.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i31.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i30.BuiltList,
              [FullType(_i17.GroupIdentifier)],
            ),
          ) as _i30.BuiltList<_i17.GroupIdentifier>));
        case 'sourceDestCheck':
          result.sourceDestCheck = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'spotInstanceRequestId':
          result.spotInstanceRequestId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'sriovNetSupport':
          result.sriovNetSupport = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'stateReason':
          result.stateReason.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i18.StateReason),
          ) as _i18.StateReason));
        case 'tagSet':
          result.tags.replace((const _i31.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i31.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i30.BuiltList,
              [FullType(_i19.Tag)],
            ),
          ) as _i30.BuiltList<_i19.Tag>));
        case 'virtualizationType':
          result.virtualizationType = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i20.VirtualizationType),
          ) as _i20.VirtualizationType);
        case 'cpuOptions':
          result.cpuOptions.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i21.CpuOptions),
          ) as _i21.CpuOptions));
        case 'capacityReservationId':
          result.capacityReservationId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'capacityReservationSpecification':
          result.capacityReservationSpecification
              .replace((serializers.deserialize(
            value,
            specifiedType:
                const FullType(_i22.CapacityReservationSpecificationResponse),
          ) as _i22.CapacityReservationSpecificationResponse));
        case 'hibernationOptions':
          result.hibernationOptions.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i23.HibernationOptions),
          ) as _i23.HibernationOptions));
        case 'licenseSet':
          result.licenses.replace((const _i31.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i31.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i30.BuiltList,
              [FullType(_i24.LicenseConfiguration)],
            ),
          ) as _i30.BuiltList<_i24.LicenseConfiguration>));
        case 'metadataOptions':
          result.metadataOptions.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i25.InstanceMetadataOptionsResponse),
          ) as _i25.InstanceMetadataOptionsResponse));
        case 'enclaveOptions':
          result.enclaveOptions.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i26.EnclaveOptions),
          ) as _i26.EnclaveOptions));
        case 'bootMode':
          result.bootMode = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i27.BootModeValues),
          ) as _i27.BootModeValues);
        case 'platformDetails':
          result.platformDetails = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'usageOperation':
          result.usageOperation = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'usageOperationUpdateTime':
          result.usageOperationUpdateTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'privateDnsNameOptions':
          result.privateDnsNameOptions.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i28.PrivateDnsNameOptionsResponse),
          ) as _i28.PrivateDnsNameOptionsResponse));
        case 'ipv6Address':
          result.ipv6Address = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'tpmSupport':
          result.tpmSupport = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'maintenanceOptions':
          result.maintenanceOptions.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i29.InstanceMaintenanceOptions),
          ) as _i29.InstanceMaintenanceOptions));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Instance object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i31.XmlElementName(
        'InstanceResponse',
        _i31.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final Instance(
      :amiLaunchIndex,
      :imageId,
      :instanceId,
      :instanceType,
      :kernelId,
      :keyName,
      :launchTime,
      :monitoring,
      :placement,
      :platform,
      :privateDnsName,
      :privateIpAddress,
      :productCodes,
      :publicDnsName,
      :publicIpAddress,
      :ramdiskId,
      :state,
      :stateTransitionReason,
      :subnetId,
      :vpcId,
      :architecture,
      :blockDeviceMappings,
      :clientToken,
      :ebsOptimized,
      :enaSupport,
      :hypervisor,
      :iamInstanceProfile,
      :instanceLifecycle,
      :elasticGpuAssociations,
      :elasticInferenceAcceleratorAssociations,
      :networkInterfaces,
      :outpostArn,
      :rootDeviceName,
      :rootDeviceType,
      :securityGroups,
      :sourceDestCheck,
      :spotInstanceRequestId,
      :sriovNetSupport,
      :stateReason,
      :tags,
      :virtualizationType,
      :cpuOptions,
      :capacityReservationId,
      :capacityReservationSpecification,
      :hibernationOptions,
      :licenses,
      :metadataOptions,
      :enclaveOptions,
      :bootMode,
      :platformDetails,
      :usageOperation,
      :usageOperationUpdateTime,
      :privateDnsNameOptions,
      :ipv6Address,
      :tpmSupport,
      :maintenanceOptions
    ) = object;
    result$
      ..add(const _i31.XmlElementName('AmiLaunchIndex'))
      ..add(serializers.serialize(
        amiLaunchIndex,
        specifiedType: const FullType(int),
      ));
    if (imageId != null) {
      result$
        ..add(const _i31.XmlElementName('ImageId'))
        ..add(serializers.serialize(
          imageId,
          specifiedType: const FullType(String),
        ));
    }
    if (instanceId != null) {
      result$
        ..add(const _i31.XmlElementName('InstanceId'))
        ..add(serializers.serialize(
          instanceId,
          specifiedType: const FullType(String),
        ));
    }
    if (instanceType != null) {
      result$
        ..add(const _i31.XmlElementName('InstanceType'))
        ..add(serializers.serialize(
          instanceType,
          specifiedType: const FullType.nullable(_i2.InstanceType),
        ));
    }
    if (kernelId != null) {
      result$
        ..add(const _i31.XmlElementName('KernelId'))
        ..add(serializers.serialize(
          kernelId,
          specifiedType: const FullType(String),
        ));
    }
    if (keyName != null) {
      result$
        ..add(const _i31.XmlElementName('KeyName'))
        ..add(serializers.serialize(
          keyName,
          specifiedType: const FullType(String),
        ));
    }
    if (launchTime != null) {
      result$
        ..add(const _i31.XmlElementName('LaunchTime'))
        ..add(serializers.serialize(
          launchTime,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (monitoring != null) {
      result$
        ..add(const _i31.XmlElementName('Monitoring'))
        ..add(serializers.serialize(
          monitoring,
          specifiedType: const FullType(_i3.Monitoring),
        ));
    }
    if (placement != null) {
      result$
        ..add(const _i31.XmlElementName('Placement'))
        ..add(serializers.serialize(
          placement,
          specifiedType: const FullType(_i4.Placement),
        ));
    }
    if (platform != null) {
      result$
        ..add(const _i31.XmlElementName('Platform'))
        ..add(serializers.serialize(
          platform,
          specifiedType: const FullType.nullable(_i5.PlatformValues),
        ));
    }
    if (privateDnsName != null) {
      result$
        ..add(const _i31.XmlElementName('PrivateDnsName'))
        ..add(serializers.serialize(
          privateDnsName,
          specifiedType: const FullType(String),
        ));
    }
    if (privateIpAddress != null) {
      result$
        ..add(const _i31.XmlElementName('PrivateIpAddress'))
        ..add(serializers.serialize(
          privateIpAddress,
          specifiedType: const FullType(String),
        ));
    }
    if (productCodes != null) {
      result$
        ..add(const _i31.XmlElementName('ProductCodes'))
        ..add(const _i31.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i31.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          productCodes,
          specifiedType: const FullType.nullable(
            _i30.BuiltList,
            [FullType(_i6.ProductCode)],
          ),
        ));
    }
    if (publicDnsName != null) {
      result$
        ..add(const _i31.XmlElementName('DnsName'))
        ..add(serializers.serialize(
          publicDnsName,
          specifiedType: const FullType(String),
        ));
    }
    if (publicIpAddress != null) {
      result$
        ..add(const _i31.XmlElementName('IpAddress'))
        ..add(serializers.serialize(
          publicIpAddress,
          specifiedType: const FullType(String),
        ));
    }
    if (ramdiskId != null) {
      result$
        ..add(const _i31.XmlElementName('RamdiskId'))
        ..add(serializers.serialize(
          ramdiskId,
          specifiedType: const FullType(String),
        ));
    }
    if (state != null) {
      result$
        ..add(const _i31.XmlElementName('InstanceState'))
        ..add(serializers.serialize(
          state,
          specifiedType: const FullType(_i7.InstanceState),
        ));
    }
    if (stateTransitionReason != null) {
      result$
        ..add(const _i31.XmlElementName('Reason'))
        ..add(serializers.serialize(
          stateTransitionReason,
          specifiedType: const FullType(String),
        ));
    }
    if (subnetId != null) {
      result$
        ..add(const _i31.XmlElementName('SubnetId'))
        ..add(serializers.serialize(
          subnetId,
          specifiedType: const FullType(String),
        ));
    }
    if (vpcId != null) {
      result$
        ..add(const _i31.XmlElementName('VpcId'))
        ..add(serializers.serialize(
          vpcId,
          specifiedType: const FullType(String),
        ));
    }
    if (architecture != null) {
      result$
        ..add(const _i31.XmlElementName('Architecture'))
        ..add(serializers.serialize(
          architecture,
          specifiedType: const FullType.nullable(_i8.ArchitectureValues),
        ));
    }
    if (blockDeviceMappings != null) {
      result$
        ..add(const _i31.XmlElementName('BlockDeviceMapping'))
        ..add(const _i31.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i31.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          blockDeviceMappings,
          specifiedType: const FullType.nullable(
            _i30.BuiltList,
            [FullType(_i9.InstanceBlockDeviceMapping)],
          ),
        ));
    }
    if (clientToken != null) {
      result$
        ..add(const _i31.XmlElementName('ClientToken'))
        ..add(serializers.serialize(
          clientToken,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i31.XmlElementName('EbsOptimized'))
      ..add(serializers.serialize(
        ebsOptimized,
        specifiedType: const FullType(bool),
      ));
    result$
      ..add(const _i31.XmlElementName('EnaSupport'))
      ..add(serializers.serialize(
        enaSupport,
        specifiedType: const FullType(bool),
      ));
    if (hypervisor != null) {
      result$
        ..add(const _i31.XmlElementName('Hypervisor'))
        ..add(serializers.serialize(
          hypervisor,
          specifiedType: const FullType.nullable(_i10.HypervisorType),
        ));
    }
    if (iamInstanceProfile != null) {
      result$
        ..add(const _i31.XmlElementName('IamInstanceProfile'))
        ..add(serializers.serialize(
          iamInstanceProfile,
          specifiedType: const FullType(_i11.IamInstanceProfile),
        ));
    }
    if (instanceLifecycle != null) {
      result$
        ..add(const _i31.XmlElementName('InstanceLifecycle'))
        ..add(serializers.serialize(
          instanceLifecycle,
          specifiedType: const FullType.nullable(_i12.InstanceLifecycleType),
        ));
    }
    if (elasticGpuAssociations != null) {
      result$
        ..add(const _i31.XmlElementName('ElasticGpuAssociationSet'))
        ..add(const _i31.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i31.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          elasticGpuAssociations,
          specifiedType: const FullType.nullable(
            _i30.BuiltList,
            [FullType(_i13.ElasticGpuAssociation)],
          ),
        ));
    }
    if (elasticInferenceAcceleratorAssociations != null) {
      result$
        ..add(const _i31.XmlElementName(
            'ElasticInferenceAcceleratorAssociationSet'))
        ..add(const _i31.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i31.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          elasticInferenceAcceleratorAssociations,
          specifiedType: const FullType.nullable(
            _i30.BuiltList,
            [FullType(_i14.ElasticInferenceAcceleratorAssociation)],
          ),
        ));
    }
    if (networkInterfaces != null) {
      result$
        ..add(const _i31.XmlElementName('NetworkInterfaceSet'))
        ..add(const _i31.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i31.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          networkInterfaces,
          specifiedType: const FullType.nullable(
            _i30.BuiltList,
            [FullType(_i15.InstanceNetworkInterface)],
          ),
        ));
    }
    if (outpostArn != null) {
      result$
        ..add(const _i31.XmlElementName('OutpostArn'))
        ..add(serializers.serialize(
          outpostArn,
          specifiedType: const FullType(String),
        ));
    }
    if (rootDeviceName != null) {
      result$
        ..add(const _i31.XmlElementName('RootDeviceName'))
        ..add(serializers.serialize(
          rootDeviceName,
          specifiedType: const FullType(String),
        ));
    }
    if (rootDeviceType != null) {
      result$
        ..add(const _i31.XmlElementName('RootDeviceType'))
        ..add(serializers.serialize(
          rootDeviceType,
          specifiedType: const FullType.nullable(_i16.DeviceType),
        ));
    }
    if (securityGroups != null) {
      result$
        ..add(const _i31.XmlElementName('GroupSet'))
        ..add(const _i31.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i31.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          securityGroups,
          specifiedType: const FullType.nullable(
            _i30.BuiltList,
            [FullType(_i17.GroupIdentifier)],
          ),
        ));
    }
    result$
      ..add(const _i31.XmlElementName('SourceDestCheck'))
      ..add(serializers.serialize(
        sourceDestCheck,
        specifiedType: const FullType(bool),
      ));
    if (spotInstanceRequestId != null) {
      result$
        ..add(const _i31.XmlElementName('SpotInstanceRequestId'))
        ..add(serializers.serialize(
          spotInstanceRequestId,
          specifiedType: const FullType(String),
        ));
    }
    if (sriovNetSupport != null) {
      result$
        ..add(const _i31.XmlElementName('SriovNetSupport'))
        ..add(serializers.serialize(
          sriovNetSupport,
          specifiedType: const FullType(String),
        ));
    }
    if (stateReason != null) {
      result$
        ..add(const _i31.XmlElementName('StateReason'))
        ..add(serializers.serialize(
          stateReason,
          specifiedType: const FullType(_i18.StateReason),
        ));
    }
    if (tags != null) {
      result$
        ..add(const _i31.XmlElementName('TagSet'))
        ..add(const _i31.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i31.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          tags,
          specifiedType: const FullType.nullable(
            _i30.BuiltList,
            [FullType(_i19.Tag)],
          ),
        ));
    }
    if (virtualizationType != null) {
      result$
        ..add(const _i31.XmlElementName('VirtualizationType'))
        ..add(serializers.serialize(
          virtualizationType,
          specifiedType: const FullType.nullable(_i20.VirtualizationType),
        ));
    }
    if (cpuOptions != null) {
      result$
        ..add(const _i31.XmlElementName('CpuOptions'))
        ..add(serializers.serialize(
          cpuOptions,
          specifiedType: const FullType(_i21.CpuOptions),
        ));
    }
    if (capacityReservationId != null) {
      result$
        ..add(const _i31.XmlElementName('CapacityReservationId'))
        ..add(serializers.serialize(
          capacityReservationId,
          specifiedType: const FullType(String),
        ));
    }
    if (capacityReservationSpecification != null) {
      result$
        ..add(const _i31.XmlElementName('CapacityReservationSpecification'))
        ..add(serializers.serialize(
          capacityReservationSpecification,
          specifiedType:
              const FullType(_i22.CapacityReservationSpecificationResponse),
        ));
    }
    if (hibernationOptions != null) {
      result$
        ..add(const _i31.XmlElementName('HibernationOptions'))
        ..add(serializers.serialize(
          hibernationOptions,
          specifiedType: const FullType(_i23.HibernationOptions),
        ));
    }
    if (licenses != null) {
      result$
        ..add(const _i31.XmlElementName('LicenseSet'))
        ..add(const _i31.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i31.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          licenses,
          specifiedType: const FullType.nullable(
            _i30.BuiltList,
            [FullType(_i24.LicenseConfiguration)],
          ),
        ));
    }
    if (metadataOptions != null) {
      result$
        ..add(const _i31.XmlElementName('MetadataOptions'))
        ..add(serializers.serialize(
          metadataOptions,
          specifiedType: const FullType(_i25.InstanceMetadataOptionsResponse),
        ));
    }
    if (enclaveOptions != null) {
      result$
        ..add(const _i31.XmlElementName('EnclaveOptions'))
        ..add(serializers.serialize(
          enclaveOptions,
          specifiedType: const FullType(_i26.EnclaveOptions),
        ));
    }
    if (bootMode != null) {
      result$
        ..add(const _i31.XmlElementName('BootMode'))
        ..add(serializers.serialize(
          bootMode,
          specifiedType: const FullType.nullable(_i27.BootModeValues),
        ));
    }
    if (platformDetails != null) {
      result$
        ..add(const _i31.XmlElementName('PlatformDetails'))
        ..add(serializers.serialize(
          platformDetails,
          specifiedType: const FullType(String),
        ));
    }
    if (usageOperation != null) {
      result$
        ..add(const _i31.XmlElementName('UsageOperation'))
        ..add(serializers.serialize(
          usageOperation,
          specifiedType: const FullType(String),
        ));
    }
    if (usageOperationUpdateTime != null) {
      result$
        ..add(const _i31.XmlElementName('UsageOperationUpdateTime'))
        ..add(serializers.serialize(
          usageOperationUpdateTime,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (privateDnsNameOptions != null) {
      result$
        ..add(const _i31.XmlElementName('PrivateDnsNameOptions'))
        ..add(serializers.serialize(
          privateDnsNameOptions,
          specifiedType: const FullType(_i28.PrivateDnsNameOptionsResponse),
        ));
    }
    if (ipv6Address != null) {
      result$
        ..add(const _i31.XmlElementName('Ipv6Address'))
        ..add(serializers.serialize(
          ipv6Address,
          specifiedType: const FullType(String),
        ));
    }
    if (tpmSupport != null) {
      result$
        ..add(const _i31.XmlElementName('TpmSupport'))
        ..add(serializers.serialize(
          tpmSupport,
          specifiedType: const FullType(String),
        ));
    }
    if (maintenanceOptions != null) {
      result$
        ..add(const _i31.XmlElementName('MaintenanceOptions'))
        ..add(serializers.serialize(
          maintenanceOptions,
          specifiedType: const FullType(_i29.InstanceMaintenanceOptions),
        ));
    }
    return result$;
  }
}
