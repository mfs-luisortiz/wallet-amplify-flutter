// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.disable_fast_snapshot_restore_state_error_item; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/disable_fast_snapshot_restore_state_error.dart'
    as _i2;

part 'disable_fast_snapshot_restore_state_error_item.g.dart';

/// Contains information about an error that occurred when disabling fast snapshot restores.
abstract class DisableFastSnapshotRestoreStateErrorItem
    with
        _i1.AWSEquatable<DisableFastSnapshotRestoreStateErrorItem>
    implements
        Built<DisableFastSnapshotRestoreStateErrorItem,
            DisableFastSnapshotRestoreStateErrorItemBuilder> {
  /// Contains information about an error that occurred when disabling fast snapshot restores.
  factory DisableFastSnapshotRestoreStateErrorItem({
    String? availabilityZone,
    _i2.DisableFastSnapshotRestoreStateError? error,
  }) {
    return _$DisableFastSnapshotRestoreStateErrorItem._(
      availabilityZone: availabilityZone,
      error: error,
    );
  }

  /// Contains information about an error that occurred when disabling fast snapshot restores.
  factory DisableFastSnapshotRestoreStateErrorItem.build(
      [void Function(DisableFastSnapshotRestoreStateErrorItemBuilder)
          updates]) = _$DisableFastSnapshotRestoreStateErrorItem;

  const DisableFastSnapshotRestoreStateErrorItem._();

  static const List<_i3.SmithySerializer> serializers = [
    DisableFastSnapshotRestoreStateErrorItemEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DisableFastSnapshotRestoreStateErrorItemBuilder b) {}

  /// The Availability Zone.
  String? get availabilityZone;

  /// The error.
  _i2.DisableFastSnapshotRestoreStateError? get error;
  @override
  List<Object?> get props => [
        availabilityZone,
        error,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DisableFastSnapshotRestoreStateErrorItem');
    helper.add(
      'availabilityZone',
      availabilityZone,
    );
    helper.add(
      'error',
      error,
    );
    return helper.toString();
  }
}

class DisableFastSnapshotRestoreStateErrorItemEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<DisableFastSnapshotRestoreStateErrorItem> {
  const DisableFastSnapshotRestoreStateErrorItemEc2QuerySerializer()
      : super('DisableFastSnapshotRestoreStateErrorItem');

  @override
  Iterable<Type> get types => const [
        DisableFastSnapshotRestoreStateErrorItem,
        _$DisableFastSnapshotRestoreStateErrorItem,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DisableFastSnapshotRestoreStateErrorItem deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DisableFastSnapshotRestoreStateErrorItemBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'availabilityZone':
          result.availabilityZone = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'error':
          result.error.replace((serializers.deserialize(
            value,
            specifiedType:
                const FullType(_i2.DisableFastSnapshotRestoreStateError),
          ) as _i2.DisableFastSnapshotRestoreStateError));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DisableFastSnapshotRestoreStateErrorItem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DisableFastSnapshotRestoreStateErrorItemResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DisableFastSnapshotRestoreStateErrorItem(:availabilityZone, :error) =
        object;
    if (availabilityZone != null) {
      result$
        ..add(const _i3.XmlElementName('AvailabilityZone'))
        ..add(serializers.serialize(
          availabilityZone,
          specifiedType: const FullType(String),
        ));
    }
    if (error != null) {
      result$
        ..add(const _i3.XmlElementName('Error'))
        ..add(serializers.serialize(
          error,
          specifiedType:
              const FullType(_i2.DisableFastSnapshotRestoreStateError),
        ));
    }
    return result$;
  }
}
