// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.modify_fpga_image_attribute_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/fpga_image_attribute_name.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/load_permission_modifications.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/operation_type.dart' as _i4;

part 'modify_fpga_image_attribute_request.g.dart';

abstract class ModifyFpgaImageAttributeRequest
    with
        _i1.HttpInput<ModifyFpgaImageAttributeRequest>,
        _i2.AWSEquatable<ModifyFpgaImageAttributeRequest>
    implements
        Built<ModifyFpgaImageAttributeRequest,
            ModifyFpgaImageAttributeRequestBuilder> {
  factory ModifyFpgaImageAttributeRequest({
    bool? dryRun,
    required String fpgaImageId,
    _i3.FpgaImageAttributeName? attribute,
    _i4.OperationType? operationType,
    List<String>? userIds,
    List<String>? userGroups,
    List<String>? productCodes,
    _i5.LoadPermissionModifications? loadPermission,
    String? description,
    String? name,
  }) {
    dryRun ??= false;
    return _$ModifyFpgaImageAttributeRequest._(
      dryRun: dryRun,
      fpgaImageId: fpgaImageId,
      attribute: attribute,
      operationType: operationType,
      userIds: userIds == null ? null : _i6.BuiltList(userIds),
      userGroups: userGroups == null ? null : _i6.BuiltList(userGroups),
      productCodes: productCodes == null ? null : _i6.BuiltList(productCodes),
      loadPermission: loadPermission,
      description: description,
      name: name,
    );
  }

  factory ModifyFpgaImageAttributeRequest.build(
          [void Function(ModifyFpgaImageAttributeRequestBuilder) updates]) =
      _$ModifyFpgaImageAttributeRequest;

  const ModifyFpgaImageAttributeRequest._();

  factory ModifyFpgaImageAttributeRequest.fromRequest(
    ModifyFpgaImageAttributeRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    ModifyFpgaImageAttributeRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyFpgaImageAttributeRequestBuilder b) {
    b.dryRun = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the AFI.
  String get fpgaImageId;

  /// The name of the attribute.
  _i3.FpgaImageAttributeName? get attribute;

  /// The operation type.
  _i4.OperationType? get operationType;

  /// The Amazon Web Services account IDs. This parameter is valid only when modifying the `loadPermission` attribute.
  _i6.BuiltList<String>? get userIds;

  /// The user groups. This parameter is valid only when modifying the `loadPermission` attribute.
  _i6.BuiltList<String>? get userGroups;

  /// The product codes. After you add a product code to an AFI, it can't be removed. This parameter is valid only when modifying the `productCodes` attribute.
  _i6.BuiltList<String>? get productCodes;

  /// The load permission for the AFI.
  _i5.LoadPermissionModifications? get loadPermission;

  /// A description for the AFI.
  String? get description;

  /// A name for the AFI.
  String? get name;
  @override
  ModifyFpgaImageAttributeRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        fpgaImageId,
        attribute,
        operationType,
        userIds,
        userGroups,
        productCodes,
        loadPermission,
        description,
        name,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ModifyFpgaImageAttributeRequest');
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'fpgaImageId',
      fpgaImageId,
    );
    helper.add(
      'attribute',
      attribute,
    );
    helper.add(
      'operationType',
      operationType,
    );
    helper.add(
      'userIds',
      userIds,
    );
    helper.add(
      'userGroups',
      userGroups,
    );
    helper.add(
      'productCodes',
      productCodes,
    );
    helper.add(
      'loadPermission',
      loadPermission,
    );
    helper.add(
      'description',
      description,
    );
    helper.add(
      'name',
      name,
    );
    return helper.toString();
  }
}

class ModifyFpgaImageAttributeRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<ModifyFpgaImageAttributeRequest> {
  const ModifyFpgaImageAttributeRequestEc2QuerySerializer()
      : super('ModifyFpgaImageAttributeRequest');

  @override
  Iterable<Type> get types => const [
        ModifyFpgaImageAttributeRequest,
        _$ModifyFpgaImageAttributeRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyFpgaImageAttributeRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyFpgaImageAttributeRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'FpgaImageId':
          result.fpgaImageId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Attribute':
          result.attribute = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.FpgaImageAttributeName),
          ) as _i3.FpgaImageAttributeName);
        case 'OperationType':
          result.operationType = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.OperationType),
          ) as _i4.OperationType);
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
        case 'LoadPermission':
          result.loadPermission.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i5.LoadPermissionModifications),
          ) as _i5.LoadPermissionModifications));
        case 'Description':
          result.description = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Name':
          result.name = (serializers.deserialize(
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
    ModifyFpgaImageAttributeRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ModifyFpgaImageAttributeRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ModifyFpgaImageAttributeRequest(
      :dryRun,
      :fpgaImageId,
      :attribute,
      :operationType,
      :userIds,
      :userGroups,
      :productCodes,
      :loadPermission,
      :description,
      :name
    ) = object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    result$
      ..add(const _i1.XmlElementName('FpgaImageId'))
      ..add(serializers.serialize(
        fpgaImageId,
        specifiedType: const FullType(String),
      ));
    if (attribute != null) {
      result$
        ..add(const _i1.XmlElementName('Attribute'))
        ..add(serializers.serialize(
          attribute,
          specifiedType: const FullType.nullable(_i3.FpgaImageAttributeName),
        ));
    }
    if (operationType != null) {
      result$
        ..add(const _i1.XmlElementName('OperationType'))
        ..add(serializers.serialize(
          operationType,
          specifiedType: const FullType.nullable(_i4.OperationType),
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
    if (loadPermission != null) {
      result$
        ..add(const _i1.XmlElementName('LoadPermission'))
        ..add(serializers.serialize(
          loadPermission,
          specifiedType: const FullType(_i5.LoadPermissionModifications),
        ));
    }
    if (description != null) {
      result$
        ..add(const _i1.XmlElementName('Description'))
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(String),
        ));
    }
    if (name != null) {
      result$
        ..add(const _i1.XmlElementName('Name'))
        ..add(serializers.serialize(
          name,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
