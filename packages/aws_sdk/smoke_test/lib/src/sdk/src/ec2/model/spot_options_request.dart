// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.spot_options_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_spot_maintenance_strategies_request.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/spot_allocation_strategy.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/spot_instance_interruption_behavior.dart'
    as _i4;

part 'spot_options_request.g.dart';

/// Describes the configuration of Spot Instances in an EC2 Fleet request.
abstract class SpotOptionsRequest
    with _i1.AWSEquatable<SpotOptionsRequest>
    implements Built<SpotOptionsRequest, SpotOptionsRequestBuilder> {
  /// Describes the configuration of Spot Instances in an EC2 Fleet request.
  factory SpotOptionsRequest({
    _i2.SpotAllocationStrategy? allocationStrategy,
    _i3.FleetSpotMaintenanceStrategiesRequest? maintenanceStrategies,
    _i4.SpotInstanceInterruptionBehavior? instanceInterruptionBehavior,
    int? instancePoolsToUseCount,
    bool? singleInstanceType,
    bool? singleAvailabilityZone,
    int? minTargetCapacity,
    String? maxTotalPrice,
  }) {
    instancePoolsToUseCount ??= 0;
    singleInstanceType ??= false;
    singleAvailabilityZone ??= false;
    minTargetCapacity ??= 0;
    return _$SpotOptionsRequest._(
      allocationStrategy: allocationStrategy,
      maintenanceStrategies: maintenanceStrategies,
      instanceInterruptionBehavior: instanceInterruptionBehavior,
      instancePoolsToUseCount: instancePoolsToUseCount,
      singleInstanceType: singleInstanceType,
      singleAvailabilityZone: singleAvailabilityZone,
      minTargetCapacity: minTargetCapacity,
      maxTotalPrice: maxTotalPrice,
    );
  }

  /// Describes the configuration of Spot Instances in an EC2 Fleet request.
  factory SpotOptionsRequest.build(
          [void Function(SpotOptionsRequestBuilder) updates]) =
      _$SpotOptionsRequest;

  const SpotOptionsRequest._();

  static const List<_i5.SmithySerializer> serializers = [
    SpotOptionsRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SpotOptionsRequestBuilder b) {
    b.instancePoolsToUseCount = 0;
    b.singleInstanceType = false;
    b.singleAvailabilityZone = false;
    b.minTargetCapacity = 0;
  }

  /// The strategy that determines how to allocate the target Spot Instance capacity across the Spot Instance pools specified by the EC2 Fleet launch configuration. For more information, see [Allocation strategies for Spot Instances](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-fleet-allocation-strategy.html) in the _Amazon EC2 User Guide_.
  ///
  /// `lowest-price` \- EC2 Fleet launches instances from the lowest-price Spot Instance pool that has available capacity. If the cheapest pool doesn't have available capacity, the Spot Instances come from the next cheapest pool that has available capacity. If a pool runs out of capacity before fulfilling your desired capacity, EC2 Fleet will continue to fulfill your request by drawing from the next cheapest pool. To ensure that your desired capacity is met, you might receive Spot Instances from several pools.
  ///
  /// `diversified` \- EC2 Fleet launches instances from all of the Spot Instance pools that you specify.
  ///
  /// `capacity-optimized` (recommended) - EC2 Fleet launches instances from Spot Instance pools with optimal capacity for the number of instances that are launching. To give certain instance types a higher chance of launching first, use `capacity-optimized-prioritized`. Set a priority for each instance type by using the `Priority` parameter for `LaunchTemplateOverrides`. You can assign the same priority to different `LaunchTemplateOverrides`. EC2 implements the priorities on a best-effort basis, but optimizes for capacity first. `capacity-optimized-prioritized` is supported only if your fleet uses a launch template. Note that if the On-Demand `AllocationStrategy` is set to `prioritized`, the same priority is applied when fulfilling On-Demand capacity.
  ///
  /// Default: `lowest-price`
  _i2.SpotAllocationStrategy? get allocationStrategy;

  /// The strategies for managing your Spot Instances that are at an elevated risk of being interrupted.
  _i3.FleetSpotMaintenanceStrategiesRequest? get maintenanceStrategies;

  /// The behavior when a Spot Instance is interrupted.
  ///
  /// Default: `terminate`
  _i4.SpotInstanceInterruptionBehavior? get instanceInterruptionBehavior;

  /// The number of Spot pools across which to allocate your target Spot capacity. Supported only when Spot `AllocationStrategy` is set to `lowest-price`. EC2 Fleet selects the cheapest Spot pools and evenly allocates your target Spot capacity across the number of Spot pools that you specify.
  ///
  /// Note that EC2 Fleet attempts to draw Spot Instances from the number of pools that you specify on a best effort basis. If a pool runs out of Spot capacity before fulfilling your target capacity, EC2 Fleet will continue to fulfill your request by drawing from the next cheapest pool. To ensure that your target capacity is met, you might receive Spot Instances from more than the number of pools that you specified. Similarly, if most of the pools have no Spot capacity, you might receive your full target capacity from fewer than the number of pools that you specified.
  int get instancePoolsToUseCount;

  /// Indicates that the fleet uses a single instance type to launch all Spot Instances in the fleet.
  ///
  /// Supported only for fleets of type `instant`.
  bool get singleInstanceType;

  /// Indicates that the fleet launches all Spot Instances into a single Availability Zone.
  ///
  /// Supported only for fleets of type `instant`.
  bool get singleAvailabilityZone;

  /// The minimum target capacity for Spot Instances in the fleet. If the minimum target capacity is not reached, the fleet launches no instances.
  ///
  /// Supported only for fleets of type `instant`.
  ///
  /// At least one of the following must be specified: `SingleAvailabilityZone` | `SingleInstanceType`
  int get minTargetCapacity;

  /// The maximum amount per hour for Spot Instances that you're willing to pay. We do not recommend using this parameter because it can lead to increased interruptions. If you do not specify this parameter, you will pay the current Spot price.
  ///
  /// If you specify a maximum price, your Spot Instances will be interrupted more frequently than if you do not specify this parameter.
  String? get maxTotalPrice;
  @override
  List<Object?> get props => [
        allocationStrategy,
        maintenanceStrategies,
        instanceInterruptionBehavior,
        instancePoolsToUseCount,
        singleInstanceType,
        singleAvailabilityZone,
        minTargetCapacity,
        maxTotalPrice,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SpotOptionsRequest');
    helper.add(
      'allocationStrategy',
      allocationStrategy,
    );
    helper.add(
      'maintenanceStrategies',
      maintenanceStrategies,
    );
    helper.add(
      'instanceInterruptionBehavior',
      instanceInterruptionBehavior,
    );
    helper.add(
      'instancePoolsToUseCount',
      instancePoolsToUseCount,
    );
    helper.add(
      'singleInstanceType',
      singleInstanceType,
    );
    helper.add(
      'singleAvailabilityZone',
      singleAvailabilityZone,
    );
    helper.add(
      'minTargetCapacity',
      minTargetCapacity,
    );
    helper.add(
      'maxTotalPrice',
      maxTotalPrice,
    );
    return helper.toString();
  }
}

class SpotOptionsRequestEc2QuerySerializer
    extends _i5.StructuredSmithySerializer<SpotOptionsRequest> {
  const SpotOptionsRequestEc2QuerySerializer() : super('SpotOptionsRequest');

  @override
  Iterable<Type> get types => const [
        SpotOptionsRequest,
        _$SpotOptionsRequest,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  SpotOptionsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SpotOptionsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'AllocationStrategy':
          result.allocationStrategy = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.SpotAllocationStrategy),
          ) as _i2.SpotAllocationStrategy);
        case 'MaintenanceStrategies':
          result.maintenanceStrategies.replace((serializers.deserialize(
            value,
            specifiedType:
                const FullType(_i3.FleetSpotMaintenanceStrategiesRequest),
          ) as _i3.FleetSpotMaintenanceStrategiesRequest));
        case 'InstanceInterruptionBehavior':
          result.instanceInterruptionBehavior = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.SpotInstanceInterruptionBehavior),
          ) as _i4.SpotInstanceInterruptionBehavior);
        case 'InstancePoolsToUseCount':
          result.instancePoolsToUseCount = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'SingleInstanceType':
          result.singleInstanceType = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'SingleAvailabilityZone':
          result.singleAvailabilityZone = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'MinTargetCapacity':
          result.minTargetCapacity = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'MaxTotalPrice':
          result.maxTotalPrice = (serializers.deserialize(
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
    SpotOptionsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i5.XmlElementName(
        'SpotOptionsRequestResponse',
        _i5.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final SpotOptionsRequest(
      :allocationStrategy,
      :maintenanceStrategies,
      :instanceInterruptionBehavior,
      :instancePoolsToUseCount,
      :singleInstanceType,
      :singleAvailabilityZone,
      :minTargetCapacity,
      :maxTotalPrice
    ) = object;
    if (allocationStrategy != null) {
      result$
        ..add(const _i5.XmlElementName('AllocationStrategy'))
        ..add(serializers.serialize(
          allocationStrategy,
          specifiedType: const FullType.nullable(_i2.SpotAllocationStrategy),
        ));
    }
    if (maintenanceStrategies != null) {
      result$
        ..add(const _i5.XmlElementName('MaintenanceStrategies'))
        ..add(serializers.serialize(
          maintenanceStrategies,
          specifiedType:
              const FullType(_i3.FleetSpotMaintenanceStrategiesRequest),
        ));
    }
    if (instanceInterruptionBehavior != null) {
      result$
        ..add(const _i5.XmlElementName('InstanceInterruptionBehavior'))
        ..add(serializers.serialize(
          instanceInterruptionBehavior,
          specifiedType:
              const FullType.nullable(_i4.SpotInstanceInterruptionBehavior),
        ));
    }
    result$
      ..add(const _i5.XmlElementName('InstancePoolsToUseCount'))
      ..add(serializers.serialize(
        instancePoolsToUseCount,
        specifiedType: const FullType(int),
      ));
    result$
      ..add(const _i5.XmlElementName('SingleInstanceType'))
      ..add(serializers.serialize(
        singleInstanceType,
        specifiedType: const FullType(bool),
      ));
    result$
      ..add(const _i5.XmlElementName('SingleAvailabilityZone'))
      ..add(serializers.serialize(
        singleAvailabilityZone,
        specifiedType: const FullType(bool),
      ));
    result$
      ..add(const _i5.XmlElementName('MinTargetCapacity'))
      ..add(serializers.serialize(
        minTargetCapacity,
        specifiedType: const FullType(int),
      ));
    if (maxTotalPrice != null) {
      result$
        ..add(const _i5.XmlElementName('MaxTotalPrice'))
        ..add(serializers.serialize(
          maxTotalPrice,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
