// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.describe_fleets_instances; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i7;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_lifecycle.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_type.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_and_overrides_response.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/platform_values.dart' as _i5;

part 'describe_fleets_instances.g.dart';

/// Describes the instances that were launched by the fleet.
abstract class DescribeFleetsInstances
    with _i1.AWSEquatable<DescribeFleetsInstances>
    implements Built<DescribeFleetsInstances, DescribeFleetsInstancesBuilder> {
  /// Describes the instances that were launched by the fleet.
  factory DescribeFleetsInstances({
    _i2.LaunchTemplateAndOverridesResponse? launchTemplateAndOverrides,
    _i3.InstanceLifecycle? lifecycle,
    List<String>? instanceIds,
    _i4.InstanceType? instanceType,
    _i5.PlatformValues? platform,
  }) {
    return _$DescribeFleetsInstances._(
      launchTemplateAndOverrides: launchTemplateAndOverrides,
      lifecycle: lifecycle,
      instanceIds: instanceIds == null ? null : _i6.BuiltList(instanceIds),
      instanceType: instanceType,
      platform: platform,
    );
  }

  /// Describes the instances that were launched by the fleet.
  factory DescribeFleetsInstances.build(
          [void Function(DescribeFleetsInstancesBuilder) updates]) =
      _$DescribeFleetsInstances;

  const DescribeFleetsInstances._();

  static const List<_i7.SmithySerializer> serializers = [
    DescribeFleetsInstancesEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeFleetsInstancesBuilder b) {}

  /// The launch templates and overrides that were used for launching the instances. The values that you specify in the Overrides replace the values in the launch template.
  _i2.LaunchTemplateAndOverridesResponse? get launchTemplateAndOverrides;

  /// Indicates if the instance that was launched is a Spot Instance or On-Demand Instance.
  _i3.InstanceLifecycle? get lifecycle;

  /// The IDs of the instances.
  _i6.BuiltList<String>? get instanceIds;

  /// The instance type.
  _i4.InstanceType? get instanceType;

  /// The value is `Windows` for Windows instances. Otherwise, the value is blank.
  _i5.PlatformValues? get platform;
  @override
  List<Object?> get props => [
        launchTemplateAndOverrides,
        lifecycle,
        instanceIds,
        instanceType,
        platform,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeFleetsInstances');
    helper.add(
      'launchTemplateAndOverrides',
      launchTemplateAndOverrides,
    );
    helper.add(
      'lifecycle',
      lifecycle,
    );
    helper.add(
      'instanceIds',
      instanceIds,
    );
    helper.add(
      'instanceType',
      instanceType,
    );
    helper.add(
      'platform',
      platform,
    );
    return helper.toString();
  }
}

class DescribeFleetsInstancesEc2QuerySerializer
    extends _i7.StructuredSmithySerializer<DescribeFleetsInstances> {
  const DescribeFleetsInstancesEc2QuerySerializer()
      : super('DescribeFleetsInstances');

  @override
  Iterable<Type> get types => const [
        DescribeFleetsInstances,
        _$DescribeFleetsInstances,
      ];
  @override
  Iterable<_i7.ShapeId> get supportedProtocols => const [
        _i7.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeFleetsInstances deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeFleetsInstancesBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'launchTemplateAndOverrides':
          result.launchTemplateAndOverrides.replace((serializers.deserialize(
            value,
            specifiedType:
                const FullType(_i2.LaunchTemplateAndOverridesResponse),
          ) as _i2.LaunchTemplateAndOverridesResponse));
        case 'lifecycle':
          result.lifecycle = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.InstanceLifecycle),
          ) as _i3.InstanceLifecycle);
        case 'instanceIds':
          result.instanceIds.replace((const _i7.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i7.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i6.BuiltList,
              [FullType(String)],
            ),
          ) as _i6.BuiltList<String>));
        case 'instanceType':
          result.instanceType = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.InstanceType),
          ) as _i4.InstanceType);
        case 'platform':
          result.platform = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i5.PlatformValues),
          ) as _i5.PlatformValues);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeFleetsInstances object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i7.XmlElementName(
        'DescribeFleetsInstancesResponse',
        _i7.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeFleetsInstances(
      :launchTemplateAndOverrides,
      :lifecycle,
      :instanceIds,
      :instanceType,
      :platform
    ) = object;
    if (launchTemplateAndOverrides != null) {
      result$
        ..add(const _i7.XmlElementName('LaunchTemplateAndOverrides'))
        ..add(serializers.serialize(
          launchTemplateAndOverrides,
          specifiedType: const FullType(_i2.LaunchTemplateAndOverridesResponse),
        ));
    }
    if (lifecycle != null) {
      result$
        ..add(const _i7.XmlElementName('Lifecycle'))
        ..add(serializers.serialize(
          lifecycle,
          specifiedType: const FullType.nullable(_i3.InstanceLifecycle),
        ));
    }
    if (instanceIds != null) {
      result$
        ..add(const _i7.XmlElementName('InstanceIds'))
        ..add(const _i7.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i7.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          instanceIds,
          specifiedType: const FullType.nullable(
            _i6.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (instanceType != null) {
      result$
        ..add(const _i7.XmlElementName('InstanceType'))
        ..add(serializers.serialize(
          instanceType,
          specifiedType: const FullType.nullable(_i4.InstanceType),
        ));
    }
    if (platform != null) {
      result$
        ..add(const _i7.XmlElementName('Platform'))
        ..add(serializers.serialize(
          platform,
          specifiedType: const FullType.nullable(_i5.PlatformValues),
        ));
    }
    return result$;
  }
}
