// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.instance_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i6;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_state.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_status_event.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_status_summary.dart'
    as _i4;

part 'instance_status.g.dart';

/// Describes the status of an instance.
abstract class InstanceStatus
    with _i1.AWSEquatable<InstanceStatus>
    implements Built<InstanceStatus, InstanceStatusBuilder> {
  /// Describes the status of an instance.
  factory InstanceStatus({
    String? availabilityZone,
    String? outpostArn,
    List<_i2.InstanceStatusEvent>? events,
    String? instanceId,
    _i3.InstanceState? instanceState,
    _i4.InstanceStatusSummary? instanceStatus,
    _i4.InstanceStatusSummary? systemStatus,
  }) {
    return _$InstanceStatus._(
      availabilityZone: availabilityZone,
      outpostArn: outpostArn,
      events: events == null ? null : _i5.BuiltList(events),
      instanceId: instanceId,
      instanceState: instanceState,
      instanceStatus: instanceStatus,
      systemStatus: systemStatus,
    );
  }

  /// Describes the status of an instance.
  factory InstanceStatus.build([void Function(InstanceStatusBuilder) updates]) =
      _$InstanceStatus;

  const InstanceStatus._();

  static const List<_i6.SmithySerializer> serializers = [
    InstanceStatusEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InstanceStatusBuilder b) {}

  /// The Availability Zone of the instance.
  String? get availabilityZone;

  /// The Amazon Resource Name (ARN) of the Outpost.
  String? get outpostArn;

  /// Any scheduled events associated with the instance.
  _i5.BuiltList<_i2.InstanceStatusEvent>? get events;

  /// The ID of the instance.
  String? get instanceId;

  /// The intended state of the instance. DescribeInstanceStatus requires that an instance be in the `running` state.
  _i3.InstanceState? get instanceState;

  /// Reports impaired functionality that stems from issues internal to the instance, such as impaired reachability.
  _i4.InstanceStatusSummary? get instanceStatus;

  /// Reports impaired functionality that stems from issues related to the systems that support an instance, such as hardware failures and network connectivity problems.
  _i4.InstanceStatusSummary? get systemStatus;
  @override
  List<Object?> get props => [
        availabilityZone,
        outpostArn,
        events,
        instanceId,
        instanceState,
        instanceStatus,
        systemStatus,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InstanceStatus');
    helper.add(
      'availabilityZone',
      availabilityZone,
    );
    helper.add(
      'outpostArn',
      outpostArn,
    );
    helper.add(
      'events',
      events,
    );
    helper.add(
      'instanceId',
      instanceId,
    );
    helper.add(
      'instanceState',
      instanceState,
    );
    helper.add(
      'instanceStatus',
      instanceStatus,
    );
    helper.add(
      'systemStatus',
      systemStatus,
    );
    return helper.toString();
  }
}

class InstanceStatusEc2QuerySerializer
    extends _i6.StructuredSmithySerializer<InstanceStatus> {
  const InstanceStatusEc2QuerySerializer() : super('InstanceStatus');

  @override
  Iterable<Type> get types => const [
        InstanceStatus,
        _$InstanceStatus,
      ];
  @override
  Iterable<_i6.ShapeId> get supportedProtocols => const [
        _i6.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  InstanceStatus deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InstanceStatusBuilder();
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
        case 'outpostArn':
          result.outpostArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'eventsSet':
          result.events.replace((const _i6.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i6.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i5.BuiltList,
              [FullType(_i2.InstanceStatusEvent)],
            ),
          ) as _i5.BuiltList<_i2.InstanceStatusEvent>));
        case 'instanceId':
          result.instanceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'instanceState':
          result.instanceState.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.InstanceState),
          ) as _i3.InstanceState));
        case 'instanceStatus':
          result.instanceStatus.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.InstanceStatusSummary),
          ) as _i4.InstanceStatusSummary));
        case 'systemStatus':
          result.systemStatus.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.InstanceStatusSummary),
          ) as _i4.InstanceStatusSummary));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    InstanceStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i6.XmlElementName(
        'InstanceStatusResponse',
        _i6.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final InstanceStatus(
      :availabilityZone,
      :outpostArn,
      :events,
      :instanceId,
      :instanceState,
      :instanceStatus,
      :systemStatus
    ) = object;
    if (availabilityZone != null) {
      result$
        ..add(const _i6.XmlElementName('AvailabilityZone'))
        ..add(serializers.serialize(
          availabilityZone,
          specifiedType: const FullType(String),
        ));
    }
    if (outpostArn != null) {
      result$
        ..add(const _i6.XmlElementName('OutpostArn'))
        ..add(serializers.serialize(
          outpostArn,
          specifiedType: const FullType(String),
        ));
    }
    if (events != null) {
      result$
        ..add(const _i6.XmlElementName('EventsSet'))
        ..add(const _i6.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i6.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          events,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(_i2.InstanceStatusEvent)],
          ),
        ));
    }
    if (instanceId != null) {
      result$
        ..add(const _i6.XmlElementName('InstanceId'))
        ..add(serializers.serialize(
          instanceId,
          specifiedType: const FullType(String),
        ));
    }
    if (instanceState != null) {
      result$
        ..add(const _i6.XmlElementName('InstanceState'))
        ..add(serializers.serialize(
          instanceState,
          specifiedType: const FullType(_i3.InstanceState),
        ));
    }
    if (instanceStatus != null) {
      result$
        ..add(const _i6.XmlElementName('InstanceStatus'))
        ..add(serializers.serialize(
          instanceStatus,
          specifiedType: const FullType(_i4.InstanceStatusSummary),
        ));
    }
    if (systemStatus != null) {
      result$
        ..add(const _i6.XmlElementName('SystemStatus'))
        ..add(serializers.serialize(
          systemStatus,
          specifiedType: const FullType(_i4.InstanceStatusSummary),
        ));
    }
    return result$;
  }
}
