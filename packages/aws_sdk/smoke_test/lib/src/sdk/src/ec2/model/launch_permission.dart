// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.launch_permission; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/permission_group.dart' as _i2;

part 'launch_permission.g.dart';

/// Describes a launch permission.
abstract class LaunchPermission
    with _i1.AWSEquatable<LaunchPermission>
    implements Built<LaunchPermission, LaunchPermissionBuilder> {
  /// Describes a launch permission.
  factory LaunchPermission({
    _i2.PermissionGroup? group,
    String? userId,
    String? organizationArn,
    String? organizationalUnitArn,
  }) {
    return _$LaunchPermission._(
      group: group,
      userId: userId,
      organizationArn: organizationArn,
      organizationalUnitArn: organizationalUnitArn,
    );
  }

  /// Describes a launch permission.
  factory LaunchPermission.build(
      [void Function(LaunchPermissionBuilder) updates]) = _$LaunchPermission;

  const LaunchPermission._();

  static const List<_i3.SmithySerializer> serializers = [
    LaunchPermissionEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(LaunchPermissionBuilder b) {}

  /// The name of the group.
  _i2.PermissionGroup? get group;

  /// The Amazon Web Services account ID.
  ///
  /// Constraints: Up to 10 000 account IDs can be specified in a single request.
  String? get userId;

  /// The Amazon Resource Name (ARN) of an organization.
  String? get organizationArn;

  /// The Amazon Resource Name (ARN) of an organizational unit (OU).
  String? get organizationalUnitArn;
  @override
  List<Object?> get props => [
        group,
        userId,
        organizationArn,
        organizationalUnitArn,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('LaunchPermission');
    helper.add(
      'group',
      group,
    );
    helper.add(
      'userId',
      userId,
    );
    helper.add(
      'organizationArn',
      organizationArn,
    );
    helper.add(
      'organizationalUnitArn',
      organizationalUnitArn,
    );
    return helper.toString();
  }
}

class LaunchPermissionEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<LaunchPermission> {
  const LaunchPermissionEc2QuerySerializer() : super('LaunchPermission');

  @override
  Iterable<Type> get types => const [
        LaunchPermission,
        _$LaunchPermission,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  LaunchPermission deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LaunchPermissionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'group':
          result.group = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.PermissionGroup),
          ) as _i2.PermissionGroup);
        case 'userId':
          result.userId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'organizationArn':
          result.organizationArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'organizationalUnitArn':
          result.organizationalUnitArn = (serializers.deserialize(
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
    LaunchPermission object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'LaunchPermissionResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final LaunchPermission(
      :group,
      :userId,
      :organizationArn,
      :organizationalUnitArn
    ) = object;
    if (group != null) {
      result$
        ..add(const _i3.XmlElementName('Group'))
        ..add(serializers.serialize(
          group,
          specifiedType: const FullType.nullable(_i2.PermissionGroup),
        ));
    }
    if (userId != null) {
      result$
        ..add(const _i3.XmlElementName('UserId'))
        ..add(serializers.serialize(
          userId,
          specifiedType: const FullType(String),
        ));
    }
    if (organizationArn != null) {
      result$
        ..add(const _i3.XmlElementName('OrganizationArn'))
        ..add(serializers.serialize(
          organizationArn,
          specifiedType: const FullType(String),
        ));
    }
    if (organizationalUnitArn != null) {
      result$
        ..add(const _i3.XmlElementName('OrganizationalUnitArn'))
        ..add(serializers.serialize(
          organizationalUnitArn,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
