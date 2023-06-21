// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.instance_type_info; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i18;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i19;
import 'package:smoke_test/src/sdk/src/ec2/model/boot_mode_type.dart' as _i17;
import 'package:smoke_test/src/sdk/src/ec2/model/ebs_info.dart' as _i11;
import 'package:smoke_test/src/sdk/src/ec2/model/fpga_info.dart' as _i14;
import 'package:smoke_test/src/sdk/src/ec2/model/gpu_info.dart' as _i13;
import 'package:smoke_test/src/sdk/src/ec2/model/inference_accelerator_info.dart'
    as _i16;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_storage_info.dart'
    as _i10;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_type.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_type_hypervisor.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/ec2/model/memory_info.dart' as _i9;
import 'package:smoke_test/src/sdk/src/ec2/model/network_info.dart' as _i12;
import 'package:smoke_test/src/sdk/src/ec2/model/placement_group_info.dart'
    as _i15;
import 'package:smoke_test/src/sdk/src/ec2/model/processor_info.dart' as _i7;
import 'package:smoke_test/src/sdk/src/ec2/model/root_device_type.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/usage_class_type.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/v_cpu_info.dart' as _i8;
import 'package:smoke_test/src/sdk/src/ec2/model/virtualization_type.dart'
    as _i5;

part 'instance_type_info.g.dart';

/// Describes the instance type.
abstract class InstanceTypeInfo
    with _i1.AWSEquatable<InstanceTypeInfo>
    implements Built<InstanceTypeInfo, InstanceTypeInfoBuilder> {
  /// Describes the instance type.
  factory InstanceTypeInfo({
    _i2.InstanceType? instanceType,
    bool? currentGeneration,
    bool? freeTierEligible,
    List<_i3.UsageClassType>? supportedUsageClasses,
    List<_i4.RootDeviceType>? supportedRootDeviceTypes,
    List<_i5.VirtualizationType>? supportedVirtualizationTypes,
    bool? bareMetal,
    _i6.InstanceTypeHypervisor? hypervisor,
    _i7.ProcessorInfo? processorInfo,
    _i8.VCpuInfo? vCpuInfo,
    _i9.MemoryInfo? memoryInfo,
    bool? instanceStorageSupported,
    _i10.InstanceStorageInfo? instanceStorageInfo,
    _i11.EbsInfo? ebsInfo,
    _i12.NetworkInfo? networkInfo,
    _i13.GpuInfo? gpuInfo,
    _i14.FpgaInfo? fpgaInfo,
    _i15.PlacementGroupInfo? placementGroupInfo,
    _i16.InferenceAcceleratorInfo? inferenceAcceleratorInfo,
    bool? hibernationSupported,
    bool? burstablePerformanceSupported,
    bool? dedicatedHostsSupported,
    bool? autoRecoverySupported,
    List<_i17.BootModeType>? supportedBootModes,
  }) {
    return _$InstanceTypeInfo._(
      instanceType: instanceType,
      currentGeneration: currentGeneration,
      freeTierEligible: freeTierEligible,
      supportedUsageClasses: supportedUsageClasses == null
          ? null
          : _i18.BuiltList(supportedUsageClasses),
      supportedRootDeviceTypes: supportedRootDeviceTypes == null
          ? null
          : _i18.BuiltList(supportedRootDeviceTypes),
      supportedVirtualizationTypes: supportedVirtualizationTypes == null
          ? null
          : _i18.BuiltList(supportedVirtualizationTypes),
      bareMetal: bareMetal,
      hypervisor: hypervisor,
      processorInfo: processorInfo,
      vCpuInfo: vCpuInfo,
      memoryInfo: memoryInfo,
      instanceStorageSupported: instanceStorageSupported,
      instanceStorageInfo: instanceStorageInfo,
      ebsInfo: ebsInfo,
      networkInfo: networkInfo,
      gpuInfo: gpuInfo,
      fpgaInfo: fpgaInfo,
      placementGroupInfo: placementGroupInfo,
      inferenceAcceleratorInfo: inferenceAcceleratorInfo,
      hibernationSupported: hibernationSupported,
      burstablePerformanceSupported: burstablePerformanceSupported,
      dedicatedHostsSupported: dedicatedHostsSupported,
      autoRecoverySupported: autoRecoverySupported,
      supportedBootModes: supportedBootModes == null
          ? null
          : _i18.BuiltList(supportedBootModes),
    );
  }

  /// Describes the instance type.
  factory InstanceTypeInfo.build(
      [void Function(InstanceTypeInfoBuilder) updates]) = _$InstanceTypeInfo;

  const InstanceTypeInfo._();

  static const List<_i19.SmithySerializer> serializers = [
    InstanceTypeInfoEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InstanceTypeInfoBuilder b) {}

  /// The instance type. For more information, see [Instance types](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html) in the _Amazon EC2 User Guide_.
  _i2.InstanceType? get instanceType;

  /// Indicates whether the instance type is current generation.
  bool? get currentGeneration;

  /// Indicates whether the instance type is eligible for the free tier.
  bool? get freeTierEligible;

  /// Indicates whether the instance type is offered for spot or On-Demand.
  _i18.BuiltList<_i3.UsageClassType>? get supportedUsageClasses;

  /// The supported root device types.
  _i18.BuiltList<_i4.RootDeviceType>? get supportedRootDeviceTypes;

  /// The supported virtualization types.
  _i18.BuiltList<_i5.VirtualizationType>? get supportedVirtualizationTypes;

  /// Indicates whether the instance is a bare metal instance type.
  bool? get bareMetal;

  /// The hypervisor for the instance type.
  _i6.InstanceTypeHypervisor? get hypervisor;

  /// Describes the processor.
  _i7.ProcessorInfo? get processorInfo;

  /// Describes the vCPU configurations for the instance type.
  _i8.VCpuInfo? get vCpuInfo;

  /// Describes the memory for the instance type.
  _i9.MemoryInfo? get memoryInfo;

  /// Indicates whether instance storage is supported.
  bool? get instanceStorageSupported;

  /// Describes the instance storage for the instance type.
  _i10.InstanceStorageInfo? get instanceStorageInfo;

  /// Describes the Amazon EBS settings for the instance type.
  _i11.EbsInfo? get ebsInfo;

  /// Describes the network settings for the instance type.
  _i12.NetworkInfo? get networkInfo;

  /// Describes the GPU accelerator settings for the instance type.
  _i13.GpuInfo? get gpuInfo;

  /// Describes the FPGA accelerator settings for the instance type.
  _i14.FpgaInfo? get fpgaInfo;

  /// Describes the placement group settings for the instance type.
  _i15.PlacementGroupInfo? get placementGroupInfo;

  /// Describes the Inference accelerator settings for the instance type.
  _i16.InferenceAcceleratorInfo? get inferenceAcceleratorInfo;

  /// Indicates whether On-Demand hibernation is supported.
  bool? get hibernationSupported;

  /// Indicates whether the instance type is a burstable performance instance type.
  bool? get burstablePerformanceSupported;

  /// Indicates whether Dedicated Hosts are supported on the instance type.
  bool? get dedicatedHostsSupported;

  /// Indicates whether auto recovery is supported.
  bool? get autoRecoverySupported;

  /// The supported boot modes. For more information, see [Boot modes](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-boot.html) in the _Amazon EC2 User Guide_.
  _i18.BuiltList<_i17.BootModeType>? get supportedBootModes;
  @override
  List<Object?> get props => [
        instanceType,
        currentGeneration,
        freeTierEligible,
        supportedUsageClasses,
        supportedRootDeviceTypes,
        supportedVirtualizationTypes,
        bareMetal,
        hypervisor,
        processorInfo,
        vCpuInfo,
        memoryInfo,
        instanceStorageSupported,
        instanceStorageInfo,
        ebsInfo,
        networkInfo,
        gpuInfo,
        fpgaInfo,
        placementGroupInfo,
        inferenceAcceleratorInfo,
        hibernationSupported,
        burstablePerformanceSupported,
        dedicatedHostsSupported,
        autoRecoverySupported,
        supportedBootModes,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InstanceTypeInfo');
    helper.add(
      'instanceType',
      instanceType,
    );
    helper.add(
      'currentGeneration',
      currentGeneration,
    );
    helper.add(
      'freeTierEligible',
      freeTierEligible,
    );
    helper.add(
      'supportedUsageClasses',
      supportedUsageClasses,
    );
    helper.add(
      'supportedRootDeviceTypes',
      supportedRootDeviceTypes,
    );
    helper.add(
      'supportedVirtualizationTypes',
      supportedVirtualizationTypes,
    );
    helper.add(
      'bareMetal',
      bareMetal,
    );
    helper.add(
      'hypervisor',
      hypervisor,
    );
    helper.add(
      'processorInfo',
      processorInfo,
    );
    helper.add(
      'vCpuInfo',
      vCpuInfo,
    );
    helper.add(
      'memoryInfo',
      memoryInfo,
    );
    helper.add(
      'instanceStorageSupported',
      instanceStorageSupported,
    );
    helper.add(
      'instanceStorageInfo',
      instanceStorageInfo,
    );
    helper.add(
      'ebsInfo',
      ebsInfo,
    );
    helper.add(
      'networkInfo',
      networkInfo,
    );
    helper.add(
      'gpuInfo',
      gpuInfo,
    );
    helper.add(
      'fpgaInfo',
      fpgaInfo,
    );
    helper.add(
      'placementGroupInfo',
      placementGroupInfo,
    );
    helper.add(
      'inferenceAcceleratorInfo',
      inferenceAcceleratorInfo,
    );
    helper.add(
      'hibernationSupported',
      hibernationSupported,
    );
    helper.add(
      'burstablePerformanceSupported',
      burstablePerformanceSupported,
    );
    helper.add(
      'dedicatedHostsSupported',
      dedicatedHostsSupported,
    );
    helper.add(
      'autoRecoverySupported',
      autoRecoverySupported,
    );
    helper.add(
      'supportedBootModes',
      supportedBootModes,
    );
    return helper.toString();
  }
}

class InstanceTypeInfoEc2QuerySerializer
    extends _i19.StructuredSmithySerializer<InstanceTypeInfo> {
  const InstanceTypeInfoEc2QuerySerializer() : super('InstanceTypeInfo');

  @override
  Iterable<Type> get types => const [
        InstanceTypeInfo,
        _$InstanceTypeInfo,
      ];
  @override
  Iterable<_i19.ShapeId> get supportedProtocols => const [
        _i19.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  InstanceTypeInfo deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InstanceTypeInfoBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'instanceType':
          result.instanceType = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.InstanceType),
          ) as _i2.InstanceType);
        case 'currentGeneration':
          result.currentGeneration = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'freeTierEligible':
          result.freeTierEligible = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'supportedUsageClasses':
          result.supportedUsageClasses
              .replace((const _i19.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i19.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i18.BuiltList,
              [FullType(_i3.UsageClassType)],
            ),
          ) as _i18.BuiltList<_i3.UsageClassType>));
        case 'supportedRootDeviceTypes':
          result.supportedRootDeviceTypes
              .replace((const _i19.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i19.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i18.BuiltList,
              [FullType(_i4.RootDeviceType)],
            ),
          ) as _i18.BuiltList<_i4.RootDeviceType>));
        case 'supportedVirtualizationTypes':
          result.supportedVirtualizationTypes
              .replace((const _i19.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i19.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i18.BuiltList,
              [FullType(_i5.VirtualizationType)],
            ),
          ) as _i18.BuiltList<_i5.VirtualizationType>));
        case 'bareMetal':
          result.bareMetal = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'hypervisor':
          result.hypervisor = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i6.InstanceTypeHypervisor),
          ) as _i6.InstanceTypeHypervisor);
        case 'processorInfo':
          result.processorInfo.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i7.ProcessorInfo),
          ) as _i7.ProcessorInfo));
        case 'vCpuInfo':
          result.vCpuInfo.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i8.VCpuInfo),
          ) as _i8.VCpuInfo));
        case 'memoryInfo':
          result.memoryInfo.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i9.MemoryInfo),
          ) as _i9.MemoryInfo));
        case 'instanceStorageSupported':
          result.instanceStorageSupported = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'instanceStorageInfo':
          result.instanceStorageInfo.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i10.InstanceStorageInfo),
          ) as _i10.InstanceStorageInfo));
        case 'ebsInfo':
          result.ebsInfo.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i11.EbsInfo),
          ) as _i11.EbsInfo));
        case 'networkInfo':
          result.networkInfo.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i12.NetworkInfo),
          ) as _i12.NetworkInfo));
        case 'gpuInfo':
          result.gpuInfo.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i13.GpuInfo),
          ) as _i13.GpuInfo));
        case 'fpgaInfo':
          result.fpgaInfo.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i14.FpgaInfo),
          ) as _i14.FpgaInfo));
        case 'placementGroupInfo':
          result.placementGroupInfo.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i15.PlacementGroupInfo),
          ) as _i15.PlacementGroupInfo));
        case 'inferenceAcceleratorInfo':
          result.inferenceAcceleratorInfo.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i16.InferenceAcceleratorInfo),
          ) as _i16.InferenceAcceleratorInfo));
        case 'hibernationSupported':
          result.hibernationSupported = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'burstablePerformanceSupported':
          result.burstablePerformanceSupported = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'dedicatedHostsSupported':
          result.dedicatedHostsSupported = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'autoRecoverySupported':
          result.autoRecoverySupported = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'supportedBootModes':
          result.supportedBootModes.replace((const _i19.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i19.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i18.BuiltList,
              [FullType(_i17.BootModeType)],
            ),
          ) as _i18.BuiltList<_i17.BootModeType>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    InstanceTypeInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i19.XmlElementName(
        'InstanceTypeInfoResponse',
        _i19.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final InstanceTypeInfo(
      :instanceType,
      :currentGeneration,
      :freeTierEligible,
      :supportedUsageClasses,
      :supportedRootDeviceTypes,
      :supportedVirtualizationTypes,
      :bareMetal,
      :hypervisor,
      :processorInfo,
      :vCpuInfo,
      :memoryInfo,
      :instanceStorageSupported,
      :instanceStorageInfo,
      :ebsInfo,
      :networkInfo,
      :gpuInfo,
      :fpgaInfo,
      :placementGroupInfo,
      :inferenceAcceleratorInfo,
      :hibernationSupported,
      :burstablePerformanceSupported,
      :dedicatedHostsSupported,
      :autoRecoverySupported,
      :supportedBootModes
    ) = object;
    if (instanceType != null) {
      result$
        ..add(const _i19.XmlElementName('InstanceType'))
        ..add(serializers.serialize(
          instanceType,
          specifiedType: const FullType.nullable(_i2.InstanceType),
        ));
    }
    if (currentGeneration != null) {
      result$
        ..add(const _i19.XmlElementName('CurrentGeneration'))
        ..add(serializers.serialize(
          currentGeneration,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    if (freeTierEligible != null) {
      result$
        ..add(const _i19.XmlElementName('FreeTierEligible'))
        ..add(serializers.serialize(
          freeTierEligible,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    if (supportedUsageClasses != null) {
      result$
        ..add(const _i19.XmlElementName('SupportedUsageClasses'))
        ..add(const _i19.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i19.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          supportedUsageClasses,
          specifiedType: const FullType.nullable(
            _i18.BuiltList,
            [FullType(_i3.UsageClassType)],
          ),
        ));
    }
    if (supportedRootDeviceTypes != null) {
      result$
        ..add(const _i19.XmlElementName('SupportedRootDeviceTypes'))
        ..add(const _i19.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i19.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          supportedRootDeviceTypes,
          specifiedType: const FullType.nullable(
            _i18.BuiltList,
            [FullType(_i4.RootDeviceType)],
          ),
        ));
    }
    if (supportedVirtualizationTypes != null) {
      result$
        ..add(const _i19.XmlElementName('SupportedVirtualizationTypes'))
        ..add(const _i19.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i19.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          supportedVirtualizationTypes,
          specifiedType: const FullType.nullable(
            _i18.BuiltList,
            [FullType(_i5.VirtualizationType)],
          ),
        ));
    }
    if (bareMetal != null) {
      result$
        ..add(const _i19.XmlElementName('BareMetal'))
        ..add(serializers.serialize(
          bareMetal,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    if (hypervisor != null) {
      result$
        ..add(const _i19.XmlElementName('Hypervisor'))
        ..add(serializers.serialize(
          hypervisor,
          specifiedType: const FullType.nullable(_i6.InstanceTypeHypervisor),
        ));
    }
    if (processorInfo != null) {
      result$
        ..add(const _i19.XmlElementName('ProcessorInfo'))
        ..add(serializers.serialize(
          processorInfo,
          specifiedType: const FullType(_i7.ProcessorInfo),
        ));
    }
    if (vCpuInfo != null) {
      result$
        ..add(const _i19.XmlElementName('VCpuInfo'))
        ..add(serializers.serialize(
          vCpuInfo,
          specifiedType: const FullType(_i8.VCpuInfo),
        ));
    }
    if (memoryInfo != null) {
      result$
        ..add(const _i19.XmlElementName('MemoryInfo'))
        ..add(serializers.serialize(
          memoryInfo,
          specifiedType: const FullType(_i9.MemoryInfo),
        ));
    }
    if (instanceStorageSupported != null) {
      result$
        ..add(const _i19.XmlElementName('InstanceStorageSupported'))
        ..add(serializers.serialize(
          instanceStorageSupported,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    if (instanceStorageInfo != null) {
      result$
        ..add(const _i19.XmlElementName('InstanceStorageInfo'))
        ..add(serializers.serialize(
          instanceStorageInfo,
          specifiedType: const FullType(_i10.InstanceStorageInfo),
        ));
    }
    if (ebsInfo != null) {
      result$
        ..add(const _i19.XmlElementName('EbsInfo'))
        ..add(serializers.serialize(
          ebsInfo,
          specifiedType: const FullType(_i11.EbsInfo),
        ));
    }
    if (networkInfo != null) {
      result$
        ..add(const _i19.XmlElementName('NetworkInfo'))
        ..add(serializers.serialize(
          networkInfo,
          specifiedType: const FullType(_i12.NetworkInfo),
        ));
    }
    if (gpuInfo != null) {
      result$
        ..add(const _i19.XmlElementName('GpuInfo'))
        ..add(serializers.serialize(
          gpuInfo,
          specifiedType: const FullType(_i13.GpuInfo),
        ));
    }
    if (fpgaInfo != null) {
      result$
        ..add(const _i19.XmlElementName('FpgaInfo'))
        ..add(serializers.serialize(
          fpgaInfo,
          specifiedType: const FullType(_i14.FpgaInfo),
        ));
    }
    if (placementGroupInfo != null) {
      result$
        ..add(const _i19.XmlElementName('PlacementGroupInfo'))
        ..add(serializers.serialize(
          placementGroupInfo,
          specifiedType: const FullType(_i15.PlacementGroupInfo),
        ));
    }
    if (inferenceAcceleratorInfo != null) {
      result$
        ..add(const _i19.XmlElementName('InferenceAcceleratorInfo'))
        ..add(serializers.serialize(
          inferenceAcceleratorInfo,
          specifiedType: const FullType(_i16.InferenceAcceleratorInfo),
        ));
    }
    if (hibernationSupported != null) {
      result$
        ..add(const _i19.XmlElementName('HibernationSupported'))
        ..add(serializers.serialize(
          hibernationSupported,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    if (burstablePerformanceSupported != null) {
      result$
        ..add(const _i19.XmlElementName('BurstablePerformanceSupported'))
        ..add(serializers.serialize(
          burstablePerformanceSupported,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    if (dedicatedHostsSupported != null) {
      result$
        ..add(const _i19.XmlElementName('DedicatedHostsSupported'))
        ..add(serializers.serialize(
          dedicatedHostsSupported,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    if (autoRecoverySupported != null) {
      result$
        ..add(const _i19.XmlElementName('AutoRecoverySupported'))
        ..add(serializers.serialize(
          autoRecoverySupported,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    if (supportedBootModes != null) {
      result$
        ..add(const _i19.XmlElementName('SupportedBootModes'))
        ..add(const _i19.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i19.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          supportedBootModes,
          specifiedType: const FullType.nullable(
            _i18.BuiltList,
            [FullType(_i17.BootModeType)],
          ),
        ));
    }
    return result$;
  }
}
