// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.iam_instance_profile_association; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/iam_instance_profile.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/iam_instance_profile_association_state.dart'
    as _i3;

part 'iam_instance_profile_association.g.dart';

/// Describes an association between an IAM instance profile and an instance.
abstract class IamInstanceProfileAssociation
    with
        _i1.AWSEquatable<IamInstanceProfileAssociation>
    implements
        Built<IamInstanceProfileAssociation,
            IamInstanceProfileAssociationBuilder> {
  /// Describes an association between an IAM instance profile and an instance.
  factory IamInstanceProfileAssociation({
    String? associationId,
    String? instanceId,
    _i2.IamInstanceProfile? iamInstanceProfile,
    _i3.IamInstanceProfileAssociationState? state,
    DateTime? timestamp,
  }) {
    return _$IamInstanceProfileAssociation._(
      associationId: associationId,
      instanceId: instanceId,
      iamInstanceProfile: iamInstanceProfile,
      state: state,
      timestamp: timestamp,
    );
  }

  /// Describes an association between an IAM instance profile and an instance.
  factory IamInstanceProfileAssociation.build(
          [void Function(IamInstanceProfileAssociationBuilder) updates]) =
      _$IamInstanceProfileAssociation;

  const IamInstanceProfileAssociation._();

  static const List<_i4.SmithySerializer> serializers = [
    IamInstanceProfileAssociationEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(IamInstanceProfileAssociationBuilder b) {}

  /// The ID of the association.
  String? get associationId;

  /// The ID of the instance.
  String? get instanceId;

  /// The IAM instance profile.
  _i2.IamInstanceProfile? get iamInstanceProfile;

  /// The state of the association.
  _i3.IamInstanceProfileAssociationState? get state;

  /// The time the IAM instance profile was associated with the instance.
  DateTime? get timestamp;
  @override
  List<Object?> get props => [
        associationId,
        instanceId,
        iamInstanceProfile,
        state,
        timestamp,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('IamInstanceProfileAssociation');
    helper.add(
      'associationId',
      associationId,
    );
    helper.add(
      'instanceId',
      instanceId,
    );
    helper.add(
      'iamInstanceProfile',
      iamInstanceProfile,
    );
    helper.add(
      'state',
      state,
    );
    helper.add(
      'timestamp',
      timestamp,
    );
    return helper.toString();
  }
}

class IamInstanceProfileAssociationEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<IamInstanceProfileAssociation> {
  const IamInstanceProfileAssociationEc2QuerySerializer()
      : super('IamInstanceProfileAssociation');

  @override
  Iterable<Type> get types => const [
        IamInstanceProfileAssociation,
        _$IamInstanceProfileAssociation,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  IamInstanceProfileAssociation deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IamInstanceProfileAssociationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'associationId':
          result.associationId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'instanceId':
          result.instanceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'iamInstanceProfile':
          result.iamInstanceProfile.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.IamInstanceProfile),
          ) as _i2.IamInstanceProfile));
        case 'state':
          result.state = (serializers.deserialize(
            value,
            specifiedType:
                const FullType(_i3.IamInstanceProfileAssociationState),
          ) as _i3.IamInstanceProfileAssociationState);
        case 'timestamp':
          result.timestamp = (serializers.deserialize(
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
    IamInstanceProfileAssociation object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i4.XmlElementName(
        'IamInstanceProfileAssociationResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final IamInstanceProfileAssociation(
      :associationId,
      :instanceId,
      :iamInstanceProfile,
      :state,
      :timestamp
    ) = object;
    if (associationId != null) {
      result$
        ..add(const _i4.XmlElementName('AssociationId'))
        ..add(serializers.serialize(
          associationId,
          specifiedType: const FullType(String),
        ));
    }
    if (instanceId != null) {
      result$
        ..add(const _i4.XmlElementName('InstanceId'))
        ..add(serializers.serialize(
          instanceId,
          specifiedType: const FullType(String),
        ));
    }
    if (iamInstanceProfile != null) {
      result$
        ..add(const _i4.XmlElementName('IamInstanceProfile'))
        ..add(serializers.serialize(
          iamInstanceProfile,
          specifiedType: const FullType(_i2.IamInstanceProfile),
        ));
    }
    if (state != null) {
      result$
        ..add(const _i4.XmlElementName('State'))
        ..add(serializers.serialize(
          state,
          specifiedType:
              const FullType.nullable(_i3.IamInstanceProfileAssociationState),
        ));
    }
    if (timestamp != null) {
      result$
        ..add(const _i4.XmlElementName('Timestamp'))
        ..add(serializers.serialize(
          timestamp,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    return result$;
  }
}
