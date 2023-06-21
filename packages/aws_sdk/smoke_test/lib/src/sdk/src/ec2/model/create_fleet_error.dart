// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.create_fleet_error; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_lifecycle.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_and_overrides_response.dart'
    as _i2;

part 'create_fleet_error.g.dart';

/// Describes the instances that could not be launched by the fleet.
abstract class CreateFleetError
    with _i1.AWSEquatable<CreateFleetError>
    implements Built<CreateFleetError, CreateFleetErrorBuilder> {
  /// Describes the instances that could not be launched by the fleet.
  factory CreateFleetError({
    _i2.LaunchTemplateAndOverridesResponse? launchTemplateAndOverrides,
    _i3.InstanceLifecycle? lifecycle,
    String? errorCode,
    String? errorMessage,
  }) {
    return _$CreateFleetError._(
      launchTemplateAndOverrides: launchTemplateAndOverrides,
      lifecycle: lifecycle,
      errorCode: errorCode,
      errorMessage: errorMessage,
    );
  }

  /// Describes the instances that could not be launched by the fleet.
  factory CreateFleetError.build(
      [void Function(CreateFleetErrorBuilder) updates]) = _$CreateFleetError;

  const CreateFleetError._();

  static const List<_i4.SmithySerializer> serializers = [
    CreateFleetErrorEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateFleetErrorBuilder b) {}

  /// The launch templates and overrides that were used for launching the instances. The values that you specify in the Overrides replace the values in the launch template.
  _i2.LaunchTemplateAndOverridesResponse? get launchTemplateAndOverrides;

  /// Indicates if the instance that could not be launched was a Spot Instance or On-Demand Instance.
  _i3.InstanceLifecycle? get lifecycle;

  /// The error code that indicates why the instance could not be launched. For more information about error codes, see [Error codes](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/errors-overview.html.html).
  String? get errorCode;

  /// The error message that describes why the instance could not be launched. For more information about error messages, see [Error codes](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/errors-overview.html.html).
  String? get errorMessage;
  @override
  List<Object?> get props => [
        launchTemplateAndOverrides,
        lifecycle,
        errorCode,
        errorMessage,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateFleetError');
    helper.add(
      'launchTemplateAndOverrides',
      launchTemplateAndOverrides,
    );
    helper.add(
      'lifecycle',
      lifecycle,
    );
    helper.add(
      'errorCode',
      errorCode,
    );
    helper.add(
      'errorMessage',
      errorMessage,
    );
    return helper.toString();
  }
}

class CreateFleetErrorEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<CreateFleetError> {
  const CreateFleetErrorEc2QuerySerializer() : super('CreateFleetError');

  @override
  Iterable<Type> get types => const [
        CreateFleetError,
        _$CreateFleetError,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateFleetError deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateFleetErrorBuilder();
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
        case 'errorCode':
          result.errorCode = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'errorMessage':
          result.errorMessage = (serializers.deserialize(
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
    CreateFleetError object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i4.XmlElementName(
        'CreateFleetErrorResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateFleetError(
      :launchTemplateAndOverrides,
      :lifecycle,
      :errorCode,
      :errorMessage
    ) = object;
    if (launchTemplateAndOverrides != null) {
      result$
        ..add(const _i4.XmlElementName('LaunchTemplateAndOverrides'))
        ..add(serializers.serialize(
          launchTemplateAndOverrides,
          specifiedType: const FullType(_i2.LaunchTemplateAndOverridesResponse),
        ));
    }
    if (lifecycle != null) {
      result$
        ..add(const _i4.XmlElementName('Lifecycle'))
        ..add(serializers.serialize(
          lifecycle,
          specifiedType: const FullType.nullable(_i3.InstanceLifecycle),
        ));
    }
    if (errorCode != null) {
      result$
        ..add(const _i4.XmlElementName('ErrorCode'))
        ..add(serializers.serialize(
          errorCode,
          specifiedType: const FullType(String),
        ));
    }
    if (errorMessage != null) {
      result$
        ..add(const _i4.XmlElementName('ErrorMessage'))
        ..add(serializers.serialize(
          errorMessage,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
