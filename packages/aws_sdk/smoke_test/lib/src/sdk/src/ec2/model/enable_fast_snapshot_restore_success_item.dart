// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.enable_fast_snapshot_restore_success_item; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/fast_snapshot_restore_state_code.dart'
    as _i2;

part 'enable_fast_snapshot_restore_success_item.g.dart';

/// Describes fast snapshot restores that were successfully enabled.
abstract class EnableFastSnapshotRestoreSuccessItem
    with
        _i1.AWSEquatable<EnableFastSnapshotRestoreSuccessItem>
    implements
        Built<EnableFastSnapshotRestoreSuccessItem,
            EnableFastSnapshotRestoreSuccessItemBuilder> {
  /// Describes fast snapshot restores that were successfully enabled.
  factory EnableFastSnapshotRestoreSuccessItem({
    String? snapshotId,
    String? availabilityZone,
    _i2.FastSnapshotRestoreStateCode? state,
    String? stateTransitionReason,
    String? ownerId,
    String? ownerAlias,
    DateTime? enablingTime,
    DateTime? optimizingTime,
    DateTime? enabledTime,
    DateTime? disablingTime,
    DateTime? disabledTime,
  }) {
    return _$EnableFastSnapshotRestoreSuccessItem._(
      snapshotId: snapshotId,
      availabilityZone: availabilityZone,
      state: state,
      stateTransitionReason: stateTransitionReason,
      ownerId: ownerId,
      ownerAlias: ownerAlias,
      enablingTime: enablingTime,
      optimizingTime: optimizingTime,
      enabledTime: enabledTime,
      disablingTime: disablingTime,
      disabledTime: disabledTime,
    );
  }

  /// Describes fast snapshot restores that were successfully enabled.
  factory EnableFastSnapshotRestoreSuccessItem.build(
      [void Function(EnableFastSnapshotRestoreSuccessItemBuilder)
          updates]) = _$EnableFastSnapshotRestoreSuccessItem;

  const EnableFastSnapshotRestoreSuccessItem._();

  static const List<_i3.SmithySerializer> serializers = [
    EnableFastSnapshotRestoreSuccessItemEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(EnableFastSnapshotRestoreSuccessItemBuilder b) {}

  /// The ID of the snapshot.
  String? get snapshotId;

  /// The Availability Zone.
  String? get availabilityZone;

  /// The state of fast snapshot restores.
  _i2.FastSnapshotRestoreStateCode? get state;

  /// The reason for the state transition. The possible values are as follows:
  ///
  /// *   `Client.UserInitiated` \- The state successfully transitioned to `enabling` or `disabling`.
  ///
  /// *   `Client.UserInitiated - Lifecycle state transition` \- The state successfully transitioned to `optimizing`, `enabled`, or `disabled`.
  String? get stateTransitionReason;

  /// The ID of the Amazon Web Services account that enabled fast snapshot restores on the snapshot.
  String? get ownerId;

  /// The Amazon Web Services owner alias that enabled fast snapshot restores on the snapshot. This is intended for future use.
  String? get ownerAlias;

  /// The time at which fast snapshot restores entered the `enabling` state.
  DateTime? get enablingTime;

  /// The time at which fast snapshot restores entered the `optimizing` state.
  DateTime? get optimizingTime;

  /// The time at which fast snapshot restores entered the `enabled` state.
  DateTime? get enabledTime;

  /// The time at which fast snapshot restores entered the `disabling` state.
  DateTime? get disablingTime;

  /// The time at which fast snapshot restores entered the `disabled` state.
  DateTime? get disabledTime;
  @override
  List<Object?> get props => [
        snapshotId,
        availabilityZone,
        state,
        stateTransitionReason,
        ownerId,
        ownerAlias,
        enablingTime,
        optimizingTime,
        enabledTime,
        disablingTime,
        disabledTime,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('EnableFastSnapshotRestoreSuccessItem');
    helper.add(
      'snapshotId',
      snapshotId,
    );
    helper.add(
      'availabilityZone',
      availabilityZone,
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
      'ownerId',
      ownerId,
    );
    helper.add(
      'ownerAlias',
      ownerAlias,
    );
    helper.add(
      'enablingTime',
      enablingTime,
    );
    helper.add(
      'optimizingTime',
      optimizingTime,
    );
    helper.add(
      'enabledTime',
      enabledTime,
    );
    helper.add(
      'disablingTime',
      disablingTime,
    );
    helper.add(
      'disabledTime',
      disabledTime,
    );
    return helper.toString();
  }
}

class EnableFastSnapshotRestoreSuccessItemEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<EnableFastSnapshotRestoreSuccessItem> {
  const EnableFastSnapshotRestoreSuccessItemEc2QuerySerializer()
      : super('EnableFastSnapshotRestoreSuccessItem');

  @override
  Iterable<Type> get types => const [
        EnableFastSnapshotRestoreSuccessItem,
        _$EnableFastSnapshotRestoreSuccessItem,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  EnableFastSnapshotRestoreSuccessItem deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EnableFastSnapshotRestoreSuccessItemBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'snapshotId':
          result.snapshotId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'availabilityZone':
          result.availabilityZone = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'state':
          result.state = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.FastSnapshotRestoreStateCode),
          ) as _i2.FastSnapshotRestoreStateCode);
        case 'stateTransitionReason':
          result.stateTransitionReason = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ownerId':
          result.ownerId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ownerAlias':
          result.ownerAlias = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'enablingTime':
          result.enablingTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'optimizingTime':
          result.optimizingTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'enabledTime':
          result.enabledTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'disablingTime':
          result.disablingTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'disabledTime':
          result.disabledTime = (serializers.deserialize(
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
    EnableFastSnapshotRestoreSuccessItem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'EnableFastSnapshotRestoreSuccessItemResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final EnableFastSnapshotRestoreSuccessItem(
      :snapshotId,
      :availabilityZone,
      :state,
      :stateTransitionReason,
      :ownerId,
      :ownerAlias,
      :enablingTime,
      :optimizingTime,
      :enabledTime,
      :disablingTime,
      :disabledTime
    ) = object;
    if (snapshotId != null) {
      result$
        ..add(const _i3.XmlElementName('SnapshotId'))
        ..add(serializers.serialize(
          snapshotId,
          specifiedType: const FullType(String),
        ));
    }
    if (availabilityZone != null) {
      result$
        ..add(const _i3.XmlElementName('AvailabilityZone'))
        ..add(serializers.serialize(
          availabilityZone,
          specifiedType: const FullType(String),
        ));
    }
    if (state != null) {
      result$
        ..add(const _i3.XmlElementName('State'))
        ..add(serializers.serialize(
          state,
          specifiedType:
              const FullType.nullable(_i2.FastSnapshotRestoreStateCode),
        ));
    }
    if (stateTransitionReason != null) {
      result$
        ..add(const _i3.XmlElementName('StateTransitionReason'))
        ..add(serializers.serialize(
          stateTransitionReason,
          specifiedType: const FullType(String),
        ));
    }
    if (ownerId != null) {
      result$
        ..add(const _i3.XmlElementName('OwnerId'))
        ..add(serializers.serialize(
          ownerId,
          specifiedType: const FullType(String),
        ));
    }
    if (ownerAlias != null) {
      result$
        ..add(const _i3.XmlElementName('OwnerAlias'))
        ..add(serializers.serialize(
          ownerAlias,
          specifiedType: const FullType(String),
        ));
    }
    if (enablingTime != null) {
      result$
        ..add(const _i3.XmlElementName('EnablingTime'))
        ..add(serializers.serialize(
          enablingTime,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (optimizingTime != null) {
      result$
        ..add(const _i3.XmlElementName('OptimizingTime'))
        ..add(serializers.serialize(
          optimizingTime,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (enabledTime != null) {
      result$
        ..add(const _i3.XmlElementName('EnabledTime'))
        ..add(serializers.serialize(
          enabledTime,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (disablingTime != null) {
      result$
        ..add(const _i3.XmlElementName('DisablingTime'))
        ..add(serializers.serialize(
          disablingTime,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (disabledTime != null) {
      result$
        ..add(const _i3.XmlElementName('DisabledTime'))
        ..add(serializers.serialize(
          disabledTime,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    return result$;
  }
}
