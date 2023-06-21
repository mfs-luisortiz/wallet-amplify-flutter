// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.describe_fast_launch_images_success_item; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i6;
import 'package:smoke_test/src/sdk/src/ec2/model/fast_launch_launch_template_specification_response.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/fast_launch_resource_type.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/fast_launch_snapshot_configuration_response.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/fast_launch_state_code.dart'
    as _i5;

part 'describe_fast_launch_images_success_item.g.dart';

/// Describe details about a fast-launch enabled Windows image that meets the requested criteria. Criteria are defined by the `DescribeFastLaunchImages` action filters.
abstract class DescribeFastLaunchImagesSuccessItem
    with
        _i1.AWSEquatable<DescribeFastLaunchImagesSuccessItem>
    implements
        Built<DescribeFastLaunchImagesSuccessItem,
            DescribeFastLaunchImagesSuccessItemBuilder> {
  /// Describe details about a fast-launch enabled Windows image that meets the requested criteria. Criteria are defined by the `DescribeFastLaunchImages` action filters.
  factory DescribeFastLaunchImagesSuccessItem({
    String? imageId,
    _i2.FastLaunchResourceType? resourceType,
    _i3.FastLaunchSnapshotConfigurationResponse? snapshotConfiguration,
    _i4.FastLaunchLaunchTemplateSpecificationResponse? launchTemplate,
    int? maxParallelLaunches,
    String? ownerId,
    _i5.FastLaunchStateCode? state,
    String? stateTransitionReason,
    DateTime? stateTransitionTime,
  }) {
    maxParallelLaunches ??= 0;
    return _$DescribeFastLaunchImagesSuccessItem._(
      imageId: imageId,
      resourceType: resourceType,
      snapshotConfiguration: snapshotConfiguration,
      launchTemplate: launchTemplate,
      maxParallelLaunches: maxParallelLaunches,
      ownerId: ownerId,
      state: state,
      stateTransitionReason: stateTransitionReason,
      stateTransitionTime: stateTransitionTime,
    );
  }

  /// Describe details about a fast-launch enabled Windows image that meets the requested criteria. Criteria are defined by the `DescribeFastLaunchImages` action filters.
  factory DescribeFastLaunchImagesSuccessItem.build(
          [void Function(DescribeFastLaunchImagesSuccessItemBuilder) updates]) =
      _$DescribeFastLaunchImagesSuccessItem;

  const DescribeFastLaunchImagesSuccessItem._();

  static const List<_i6.SmithySerializer> serializers = [
    DescribeFastLaunchImagesSuccessItemEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeFastLaunchImagesSuccessItemBuilder b) {
    b.maxParallelLaunches = 0;
  }

  /// The image ID that identifies the fast-launch enabled Windows image.
  String? get imageId;

  /// The resource type that is used for pre-provisioning the Windows AMI. Supported values include: `snapshot`.
  _i2.FastLaunchResourceType? get resourceType;

  /// A group of parameters that are used for pre-provisioning the associated Windows AMI using snapshots.
  _i3.FastLaunchSnapshotConfigurationResponse? get snapshotConfiguration;

  /// The launch template that the fast-launch enabled Windows AMI uses when it launches Windows instances from pre-provisioned snapshots.
  _i4.FastLaunchLaunchTemplateSpecificationResponse? get launchTemplate;

  /// The maximum number of parallel instances that are launched for creating resources.
  int get maxParallelLaunches;

  /// The owner ID for the fast-launch enabled Windows AMI.
  String? get ownerId;

  /// The current state of faster launching for the specified Windows AMI.
  _i5.FastLaunchStateCode? get state;

  /// The reason that faster launching for the Windows AMI changed to the current state.
  String? get stateTransitionReason;

  /// The time that faster launching for the Windows AMI changed to the current state.
  DateTime? get stateTransitionTime;
  @override
  List<Object?> get props => [
        imageId,
        resourceType,
        snapshotConfiguration,
        launchTemplate,
        maxParallelLaunches,
        ownerId,
        state,
        stateTransitionReason,
        stateTransitionTime,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeFastLaunchImagesSuccessItem');
    helper.add(
      'imageId',
      imageId,
    );
    helper.add(
      'resourceType',
      resourceType,
    );
    helper.add(
      'snapshotConfiguration',
      snapshotConfiguration,
    );
    helper.add(
      'launchTemplate',
      launchTemplate,
    );
    helper.add(
      'maxParallelLaunches',
      maxParallelLaunches,
    );
    helper.add(
      'ownerId',
      ownerId,
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
      'stateTransitionTime',
      stateTransitionTime,
    );
    return helper.toString();
  }
}

class DescribeFastLaunchImagesSuccessItemEc2QuerySerializer extends _i6
    .StructuredSmithySerializer<DescribeFastLaunchImagesSuccessItem> {
  const DescribeFastLaunchImagesSuccessItemEc2QuerySerializer()
      : super('DescribeFastLaunchImagesSuccessItem');

  @override
  Iterable<Type> get types => const [
        DescribeFastLaunchImagesSuccessItem,
        _$DescribeFastLaunchImagesSuccessItem,
      ];
  @override
  Iterable<_i6.ShapeId> get supportedProtocols => const [
        _i6.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeFastLaunchImagesSuccessItem deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeFastLaunchImagesSuccessItemBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'imageId':
          result.imageId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'resourceType':
          result.resourceType = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.FastLaunchResourceType),
          ) as _i2.FastLaunchResourceType);
        case 'snapshotConfiguration':
          result.snapshotConfiguration.replace((serializers.deserialize(
            value,
            specifiedType:
                const FullType(_i3.FastLaunchSnapshotConfigurationResponse),
          ) as _i3.FastLaunchSnapshotConfigurationResponse));
        case 'launchTemplate':
          result.launchTemplate.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
                _i4.FastLaunchLaunchTemplateSpecificationResponse),
          ) as _i4.FastLaunchLaunchTemplateSpecificationResponse));
        case 'maxParallelLaunches':
          result.maxParallelLaunches = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'ownerId':
          result.ownerId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'state':
          result.state = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i5.FastLaunchStateCode),
          ) as _i5.FastLaunchStateCode);
        case 'stateTransitionReason':
          result.stateTransitionReason = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'stateTransitionTime':
          result.stateTransitionTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeFastLaunchImagesSuccessItem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i6.XmlElementName(
        'DescribeFastLaunchImagesSuccessItemResponse',
        _i6.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeFastLaunchImagesSuccessItem(
      :imageId,
      :resourceType,
      :snapshotConfiguration,
      :launchTemplate,
      :maxParallelLaunches,
      :ownerId,
      :state,
      :stateTransitionReason,
      :stateTransitionTime
    ) = object;
    if (imageId != null) {
      result$
        ..add(const _i6.XmlElementName('ImageId'))
        ..add(serializers.serialize(
          imageId,
          specifiedType: const FullType(String),
        ));
    }
    if (resourceType != null) {
      result$
        ..add(const _i6.XmlElementName('ResourceType'))
        ..add(serializers.serialize(
          resourceType,
          specifiedType: const FullType.nullable(_i2.FastLaunchResourceType),
        ));
    }
    if (snapshotConfiguration != null) {
      result$
        ..add(const _i6.XmlElementName('SnapshotConfiguration'))
        ..add(serializers.serialize(
          snapshotConfiguration,
          specifiedType:
              const FullType(_i3.FastLaunchSnapshotConfigurationResponse),
        ));
    }
    if (launchTemplate != null) {
      result$
        ..add(const _i6.XmlElementName('LaunchTemplate'))
        ..add(serializers.serialize(
          launchTemplate,
          specifiedType:
              const FullType(_i4.FastLaunchLaunchTemplateSpecificationResponse),
        ));
    }
    result$
      ..add(const _i6.XmlElementName('MaxParallelLaunches'))
      ..add(serializers.serialize(
        maxParallelLaunches,
        specifiedType: const FullType(int),
      ));
    if (ownerId != null) {
      result$
        ..add(const _i6.XmlElementName('OwnerId'))
        ..add(serializers.serialize(
          ownerId,
          specifiedType: const FullType(String),
        ));
    }
    if (state != null) {
      result$
        ..add(const _i6.XmlElementName('State'))
        ..add(serializers.serialize(
          state,
          specifiedType: const FullType.nullable(_i5.FastLaunchStateCode),
        ));
    }
    if (stateTransitionReason != null) {
      result$
        ..add(const _i6.XmlElementName('StateTransitionReason'))
        ..add(serializers.serialize(
          stateTransitionReason,
          specifiedType: const FullType(String),
        ));
    }
    if (stateTransitionTime != null) {
      result$
        ..add(const _i6.XmlElementName('StateTransitionTime'))
        ..add(serializers.serialize(
          stateTransitionTime,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    return result$;
  }
}
