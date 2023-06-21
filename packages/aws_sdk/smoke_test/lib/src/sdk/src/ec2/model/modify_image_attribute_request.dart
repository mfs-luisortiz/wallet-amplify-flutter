// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.modify_image_attribute_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/attribute_value.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_permission_modifications.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/operation_type.dart' as _i5;

part 'modify_image_attribute_request.g.dart';

/// Contains the parameters for ModifyImageAttribute.
abstract class ModifyImageAttributeRequest
    with
        _i1.HttpInput<ModifyImageAttributeRequest>,
        _i2.AWSEquatable<ModifyImageAttributeRequest>
    implements
        Built<ModifyImageAttributeRequest, ModifyImageAttributeRequestBuilder> {
  /// Contains the parameters for ModifyImageAttribute.
  factory ModifyImageAttributeRequest({
    String? attribute,
    _i3.AttributeValue? description,
    required String imageId,
    _i4.LaunchPermissionModifications? launchPermission,
    _i5.OperationType? operationType,
    List<String>? productCodes,
    List<String>? userGroups,
    List<String>? userIds,
    String? value,
    bool? dryRun,
    List<String>? organizationArns,
    List<String>? organizationalUnitArns,
  }) {
    dryRun ??= false;
    return _$ModifyImageAttributeRequest._(
      attribute: attribute,
      description: description,
      imageId: imageId,
      launchPermission: launchPermission,
      operationType: operationType,
      productCodes: productCodes == null ? null : _i6.BuiltList(productCodes),
      userGroups: userGroups == null ? null : _i6.BuiltList(userGroups),
      userIds: userIds == null ? null : _i6.BuiltList(userIds),
      value: value,
      dryRun: dryRun,
      organizationArns:
          organizationArns == null ? null : _i6.BuiltList(organizationArns),
      organizationalUnitArns: organizationalUnitArns == null
          ? null
          : _i6.BuiltList(organizationalUnitArns),
    );
  }

  /// Contains the parameters for ModifyImageAttribute.
  factory ModifyImageAttributeRequest.build(
          [void Function(ModifyImageAttributeRequestBuilder) updates]) =
      _$ModifyImageAttributeRequest;

  const ModifyImageAttributeRequest._();

  factory ModifyImageAttributeRequest.fromRequest(
    ModifyImageAttributeRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    ModifyImageAttributeRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyImageAttributeRequestBuilder b) {
    b.dryRun = false;
  }

  /// The name of the attribute to modify.
  ///
  /// Valid values: `description` | `launchPermission`
  String? get attribute;

  /// A new description for the AMI.
  _i3.AttributeValue? get description;

  /// The ID of the AMI.
  String get imageId;

  /// A new launch permission for the AMI.
  _i4.LaunchPermissionModifications? get launchPermission;

  /// The operation type. This parameter can be used only when the `Attribute` parameter is `launchPermission`.
  _i5.OperationType? get operationType;

  /// Not supported.
  _i6.BuiltList<String>? get productCodes;

  /// The user groups. This parameter can be used only when the `Attribute` parameter is `launchPermission`.
  _i6.BuiltList<String>? get userGroups;

  /// The Amazon Web Services account IDs. This parameter can be used only when the `Attribute` parameter is `launchPermission`.
  _i6.BuiltList<String>? get userIds;

  /// The value of the attribute being modified. This parameter can be used only when the `Attribute` parameter is `description`.
  String? get value;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The Amazon Resource Name (ARN) of an organization. This parameter can be used only when the `Attribute` parameter is `launchPermission`.
  _i6.BuiltList<String>? get organizationArns;

  /// The Amazon Resource Name (ARN) of an organizational unit (OU). This parameter can be used only when the `Attribute` parameter is `launchPermission`.
  _i6.BuiltList<String>? get organizationalUnitArns;
  @override
  ModifyImageAttributeRequest getPayload() => this;
  @override
  List<Object?> get props => [
        attribute,
        description,
        imageId,
        launchPermission,
        operationType,
        productCodes,
        userGroups,
        userIds,
        value,
        dryRun,
        organizationArns,
        organizationalUnitArns,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ModifyImageAttributeRequest');
    helper.add(
      'attribute',
      attribute,
    );
    helper.add(
      'description',
      description,
    );
    helper.add(
      'imageId',
      imageId,
    );
    helper.add(
      'launchPermission',
      launchPermission,
    );
    helper.add(
      'operationType',
      operationType,
    );
    helper.add(
      'productCodes',
      productCodes,
    );
    helper.add(
      'userGroups',
      userGroups,
    );
    helper.add(
      'userIds',
      userIds,
    );
    helper.add(
      'value',
      value,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'organizationArns',
      organizationArns,
    );
    helper.add(
      'organizationalUnitArns',
      organizationalUnitArns,
    );
    return helper.toString();
  }
}

class ModifyImageAttributeRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<ModifyImageAttributeRequest> {
  const ModifyImageAttributeRequestEc2QuerySerializer()
      : super('ModifyImageAttributeRequest');

  @override
  Iterable<Type> get types => const [
        ModifyImageAttributeRequest,
        _$ModifyImageAttributeRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyImageAttributeRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyImageAttributeRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Attribute':
          result.attribute = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Description':
          result.description.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.AttributeValue),
          ) as _i3.AttributeValue));
        case 'ImageId':
          result.imageId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'LaunchPermission':
          result.launchPermission.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.LaunchPermissionModifications),
          ) as _i4.LaunchPermissionModifications));
        case 'OperationType':
          result.operationType = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i5.OperationType),
          ) as _i5.OperationType);
        case 'ProductCode':
          result.productCodes.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'ProductCode',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i6.BuiltList,
              [FullType(String)],
            ),
          ) as _i6.BuiltList<String>));
        case 'UserGroup':
          result.userGroups.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'UserGroup',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i6.BuiltList,
              [FullType(String)],
            ),
          ) as _i6.BuiltList<String>));
        case 'UserId':
          result.userIds.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'UserId',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i6.BuiltList,
              [FullType(String)],
            ),
          ) as _i6.BuiltList<String>));
        case 'Value':
          result.value = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'dryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'OrganizationArn':
          result.organizationArns.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'OrganizationArn',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i6.BuiltList,
              [FullType(String)],
            ),
          ) as _i6.BuiltList<String>));
        case 'OrganizationalUnitArn':
          result.organizationalUnitArns
              .replace((const _i1.XmlBuiltListSerializer(
            memberName: 'OrganizationalUnitArn',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i6.BuiltList,
              [FullType(String)],
            ),
          ) as _i6.BuiltList<String>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ModifyImageAttributeRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ModifyImageAttributeRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ModifyImageAttributeRequest(
      :attribute,
      :description,
      :imageId,
      :launchPermission,
      :operationType,
      :productCodes,
      :userGroups,
      :userIds,
      :value,
      :dryRun,
      :organizationArns,
      :organizationalUnitArns
    ) = object;
    if (attribute != null) {
      result$
        ..add(const _i1.XmlElementName('Attribute'))
        ..add(serializers.serialize(
          attribute,
          specifiedType: const FullType(String),
        ));
    }
    if (description != null) {
      result$
        ..add(const _i1.XmlElementName('Description'))
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(_i3.AttributeValue),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('ImageId'))
      ..add(serializers.serialize(
        imageId,
        specifiedType: const FullType(String),
      ));
    if (launchPermission != null) {
      result$
        ..add(const _i1.XmlElementName('LaunchPermission'))
        ..add(serializers.serialize(
          launchPermission,
          specifiedType: const FullType(_i4.LaunchPermissionModifications),
        ));
    }
    if (operationType != null) {
      result$
        ..add(const _i1.XmlElementName('OperationType'))
        ..add(serializers.serialize(
          operationType,
          specifiedType: const FullType.nullable(_i5.OperationType),
        ));
    }
    if (productCodes != null) {
      result$
        ..add(const _i1.XmlElementName('ProductCode'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'ProductCode',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          productCodes,
          specifiedType: const FullType.nullable(
            _i6.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (userGroups != null) {
      result$
        ..add(const _i1.XmlElementName('UserGroup'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'UserGroup',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          userGroups,
          specifiedType: const FullType.nullable(
            _i6.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (userIds != null) {
      result$
        ..add(const _i1.XmlElementName('UserId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'UserId',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          userIds,
          specifiedType: const FullType.nullable(
            _i6.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (value != null) {
      result$
        ..add(const _i1.XmlElementName('Value'))
        ..add(serializers.serialize(
          value,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (organizationArns != null) {
      result$
        ..add(const _i1.XmlElementName('OrganizationArn'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'OrganizationArn',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          organizationArns,
          specifiedType: const FullType.nullable(
            _i6.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (organizationalUnitArns != null) {
      result$
        ..add(const _i1.XmlElementName('OrganizationalUnitArn'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'OrganizationalUnitArn',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          organizationalUnitArns,
          specifiedType: const FullType.nullable(
            _i6.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    return result$;
  }
}
