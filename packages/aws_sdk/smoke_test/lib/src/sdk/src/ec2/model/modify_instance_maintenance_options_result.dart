// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.modify_instance_maintenance_options_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_auto_recovery_state.dart'
    as _i2;

part 'modify_instance_maintenance_options_result.g.dart';

abstract class ModifyInstanceMaintenanceOptionsResult
    with
        _i1.AWSEquatable<ModifyInstanceMaintenanceOptionsResult>
    implements
        Built<ModifyInstanceMaintenanceOptionsResult,
            ModifyInstanceMaintenanceOptionsResultBuilder> {
  factory ModifyInstanceMaintenanceOptionsResult({
    String? instanceId,
    _i2.InstanceAutoRecoveryState? autoRecovery,
  }) {
    return _$ModifyInstanceMaintenanceOptionsResult._(
      instanceId: instanceId,
      autoRecovery: autoRecovery,
    );
  }

  factory ModifyInstanceMaintenanceOptionsResult.build(
      [void Function(ModifyInstanceMaintenanceOptionsResultBuilder)
          updates]) = _$ModifyInstanceMaintenanceOptionsResult;

  const ModifyInstanceMaintenanceOptionsResult._();

  /// Constructs a [ModifyInstanceMaintenanceOptionsResult] from a [payload] and [response].
  factory ModifyInstanceMaintenanceOptionsResult.fromResponse(
    ModifyInstanceMaintenanceOptionsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    ModifyInstanceMaintenanceOptionsResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyInstanceMaintenanceOptionsResultBuilder b) {}

  /// The ID of the instance.
  String? get instanceId;

  /// Provides information on the current automatic recovery behavior of your instance.
  _i2.InstanceAutoRecoveryState? get autoRecovery;
  @override
  List<Object?> get props => [
        instanceId,
        autoRecovery,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ModifyInstanceMaintenanceOptionsResult');
    helper.add(
      'instanceId',
      instanceId,
    );
    helper.add(
      'autoRecovery',
      autoRecovery,
    );
    return helper.toString();
  }
}

class ModifyInstanceMaintenanceOptionsResultEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<ModifyInstanceMaintenanceOptionsResult> {
  const ModifyInstanceMaintenanceOptionsResultEc2QuerySerializer()
      : super('ModifyInstanceMaintenanceOptionsResult');

  @override
  Iterable<Type> get types => const [
        ModifyInstanceMaintenanceOptionsResult,
        _$ModifyInstanceMaintenanceOptionsResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyInstanceMaintenanceOptionsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyInstanceMaintenanceOptionsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'instanceId':
          result.instanceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'autoRecovery':
          result.autoRecovery = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.InstanceAutoRecoveryState),
          ) as _i2.InstanceAutoRecoveryState);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ModifyInstanceMaintenanceOptionsResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'ModifyInstanceMaintenanceOptionsResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ModifyInstanceMaintenanceOptionsResult(:instanceId, :autoRecovery) =
        object;
    if (instanceId != null) {
      result$
        ..add(const _i3.XmlElementName('InstanceId'))
        ..add(serializers.serialize(
          instanceId,
          specifiedType: const FullType(String),
        ));
    }
    if (autoRecovery != null) {
      result$
        ..add(const _i3.XmlElementName('AutoRecovery'))
        ..add(serializers.serialize(
          autoRecovery,
          specifiedType: const FullType.nullable(_i2.InstanceAutoRecoveryState),
        ));
    }
    return result$;
  }
}
