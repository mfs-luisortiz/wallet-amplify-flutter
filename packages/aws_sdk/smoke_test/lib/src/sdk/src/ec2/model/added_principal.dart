// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.added_principal; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/principal_type.dart' as _i2;

part 'added_principal.g.dart';

/// Describes a principal.
abstract class AddedPrincipal
    with _i1.AWSEquatable<AddedPrincipal>
    implements Built<AddedPrincipal, AddedPrincipalBuilder> {
  /// Describes a principal.
  factory AddedPrincipal({
    _i2.PrincipalType? principalType,
    String? principal,
    String? servicePermissionId,
    String? serviceId,
  }) {
    return _$AddedPrincipal._(
      principalType: principalType,
      principal: principal,
      servicePermissionId: servicePermissionId,
      serviceId: serviceId,
    );
  }

  /// Describes a principal.
  factory AddedPrincipal.build([void Function(AddedPrincipalBuilder) updates]) =
      _$AddedPrincipal;

  const AddedPrincipal._();

  static const List<_i3.SmithySerializer> serializers = [
    AddedPrincipalEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AddedPrincipalBuilder b) {}

  /// The type of principal.
  _i2.PrincipalType? get principalType;

  /// The Amazon Resource Name (ARN) of the principal.
  String? get principal;

  /// The ID of the service permission.
  String? get servicePermissionId;

  /// The ID of the service.
  String? get serviceId;
  @override
  List<Object?> get props => [
        principalType,
        principal,
        servicePermissionId,
        serviceId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AddedPrincipal');
    helper.add(
      'principalType',
      principalType,
    );
    helper.add(
      'principal',
      principal,
    );
    helper.add(
      'servicePermissionId',
      servicePermissionId,
    );
    helper.add(
      'serviceId',
      serviceId,
    );
    return helper.toString();
  }
}

class AddedPrincipalEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<AddedPrincipal> {
  const AddedPrincipalEc2QuerySerializer() : super('AddedPrincipal');

  @override
  Iterable<Type> get types => const [
        AddedPrincipal,
        _$AddedPrincipal,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AddedPrincipal deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AddedPrincipalBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'principalType':
          result.principalType = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.PrincipalType),
          ) as _i2.PrincipalType);
        case 'principal':
          result.principal = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'servicePermissionId':
          result.servicePermissionId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'serviceId':
          result.serviceId = (serializers.deserialize(
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
    AddedPrincipal object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'AddedPrincipalResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final AddedPrincipal(
      :principalType,
      :principal,
      :servicePermissionId,
      :serviceId
    ) = object;
    if (principalType != null) {
      result$
        ..add(const _i3.XmlElementName('PrincipalType'))
        ..add(serializers.serialize(
          principalType,
          specifiedType: const FullType.nullable(_i2.PrincipalType),
        ));
    }
    if (principal != null) {
      result$
        ..add(const _i3.XmlElementName('Principal'))
        ..add(serializers.serialize(
          principal,
          specifiedType: const FullType(String),
        ));
    }
    if (servicePermissionId != null) {
      result$
        ..add(const _i3.XmlElementName('ServicePermissionId'))
        ..add(serializers.serialize(
          servicePermissionId,
          specifiedType: const FullType(String),
        ));
    }
    if (serviceId != null) {
      result$
        ..add(const _i3.XmlElementName('ServiceId'))
        ..add(serializers.serialize(
          serviceId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
