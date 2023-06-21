// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.instance_export_details; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/export_environment.dart'
    as _i2;

part 'instance_export_details.g.dart';

/// Describes an instance to export.
abstract class InstanceExportDetails
    with _i1.AWSEquatable<InstanceExportDetails>
    implements Built<InstanceExportDetails, InstanceExportDetailsBuilder> {
  /// Describes an instance to export.
  factory InstanceExportDetails({
    String? instanceId,
    _i2.ExportEnvironment? targetEnvironment,
  }) {
    return _$InstanceExportDetails._(
      instanceId: instanceId,
      targetEnvironment: targetEnvironment,
    );
  }

  /// Describes an instance to export.
  factory InstanceExportDetails.build(
          [void Function(InstanceExportDetailsBuilder) updates]) =
      _$InstanceExportDetails;

  const InstanceExportDetails._();

  static const List<_i3.SmithySerializer> serializers = [
    InstanceExportDetailsEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InstanceExportDetailsBuilder b) {}

  /// The ID of the resource being exported.
  String? get instanceId;

  /// The target virtualization environment.
  _i2.ExportEnvironment? get targetEnvironment;
  @override
  List<Object?> get props => [
        instanceId,
        targetEnvironment,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InstanceExportDetails');
    helper.add(
      'instanceId',
      instanceId,
    );
    helper.add(
      'targetEnvironment',
      targetEnvironment,
    );
    return helper.toString();
  }
}

class InstanceExportDetailsEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<InstanceExportDetails> {
  const InstanceExportDetailsEc2QuerySerializer()
      : super('InstanceExportDetails');

  @override
  Iterable<Type> get types => const [
        InstanceExportDetails,
        _$InstanceExportDetails,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  InstanceExportDetails deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InstanceExportDetailsBuilder();
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
        case 'targetEnvironment':
          result.targetEnvironment = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.ExportEnvironment),
          ) as _i2.ExportEnvironment);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    InstanceExportDetails object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'InstanceExportDetailsResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final InstanceExportDetails(:instanceId, :targetEnvironment) = object;
    if (instanceId != null) {
      result$
        ..add(const _i3.XmlElementName('InstanceId'))
        ..add(serializers.serialize(
          instanceId,
          specifiedType: const FullType(String),
        ));
    }
    if (targetEnvironment != null) {
      result$
        ..add(const _i3.XmlElementName('TargetEnvironment'))
        ..add(serializers.serialize(
          targetEnvironment,
          specifiedType: const FullType.nullable(_i2.ExportEnvironment),
        ));
    }
    return result$;
  }
}
