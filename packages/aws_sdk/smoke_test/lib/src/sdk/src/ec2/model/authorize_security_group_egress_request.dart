// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.authorize_security_group_egress_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/ip_permission.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart' as _i4;

part 'authorize_security_group_egress_request.g.dart';

abstract class AuthorizeSecurityGroupEgressRequest
    with
        _i1.HttpInput<AuthorizeSecurityGroupEgressRequest>,
        _i2.AWSEquatable<AuthorizeSecurityGroupEgressRequest>
    implements
        Built<AuthorizeSecurityGroupEgressRequest,
            AuthorizeSecurityGroupEgressRequestBuilder> {
  factory AuthorizeSecurityGroupEgressRequest({
    bool? dryRun,
    required String groupId,
    List<_i3.IpPermission>? ipPermissions,
    List<_i4.TagSpecification>? tagSpecifications,
    String? cidrIp,
    int? fromPort,
    String? ipProtocol,
    int? toPort,
    String? sourceSecurityGroupName,
    String? sourceSecurityGroupOwnerId,
  }) {
    dryRun ??= false;
    fromPort ??= 0;
    toPort ??= 0;
    return _$AuthorizeSecurityGroupEgressRequest._(
      dryRun: dryRun,
      groupId: groupId,
      ipPermissions:
          ipPermissions == null ? null : _i5.BuiltList(ipPermissions),
      tagSpecifications:
          tagSpecifications == null ? null : _i5.BuiltList(tagSpecifications),
      cidrIp: cidrIp,
      fromPort: fromPort,
      ipProtocol: ipProtocol,
      toPort: toPort,
      sourceSecurityGroupName: sourceSecurityGroupName,
      sourceSecurityGroupOwnerId: sourceSecurityGroupOwnerId,
    );
  }

  factory AuthorizeSecurityGroupEgressRequest.build(
          [void Function(AuthorizeSecurityGroupEgressRequestBuilder) updates]) =
      _$AuthorizeSecurityGroupEgressRequest;

  const AuthorizeSecurityGroupEgressRequest._();

  factory AuthorizeSecurityGroupEgressRequest.fromRequest(
    AuthorizeSecurityGroupEgressRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    AuthorizeSecurityGroupEgressRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AuthorizeSecurityGroupEgressRequestBuilder b) {
    b.dryRun = false;
    b.fromPort = 0;
    b.toPort = 0;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the security group.
  String get groupId;

  /// The sets of IP permissions. You can't specify a destination security group and a CIDR IP address range in the same set of permissions.
  _i5.BuiltList<_i3.IpPermission>? get ipPermissions;

  /// The tags applied to the security group rule.
  _i5.BuiltList<_i4.TagSpecification>? get tagSpecifications;

  /// Not supported. Use a set of IP permissions to specify the CIDR.
  String? get cidrIp;

  /// Not supported. Use a set of IP permissions to specify the port.
  int get fromPort;

  /// Not supported. Use a set of IP permissions to specify the protocol name or number.
  String? get ipProtocol;

  /// Not supported. Use a set of IP permissions to specify the port.
  int get toPort;

  /// Not supported. Use a set of IP permissions to specify a destination security group.
  String? get sourceSecurityGroupName;

  /// Not supported. Use a set of IP permissions to specify a destination security group.
  String? get sourceSecurityGroupOwnerId;
  @override
  AuthorizeSecurityGroupEgressRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        groupId,
        ipPermissions,
        tagSpecifications,
        cidrIp,
        fromPort,
        ipProtocol,
        toPort,
        sourceSecurityGroupName,
        sourceSecurityGroupOwnerId,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('AuthorizeSecurityGroupEgressRequest');
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'groupId',
      groupId,
    );
    helper.add(
      'ipPermissions',
      ipPermissions,
    );
    helper.add(
      'tagSpecifications',
      tagSpecifications,
    );
    helper.add(
      'cidrIp',
      cidrIp,
    );
    helper.add(
      'fromPort',
      fromPort,
    );
    helper.add(
      'ipProtocol',
      ipProtocol,
    );
    helper.add(
      'toPort',
      toPort,
    );
    helper.add(
      'sourceSecurityGroupName',
      sourceSecurityGroupName,
    );
    helper.add(
      'sourceSecurityGroupOwnerId',
      sourceSecurityGroupOwnerId,
    );
    return helper.toString();
  }
}

class AuthorizeSecurityGroupEgressRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<AuthorizeSecurityGroupEgressRequest> {
  const AuthorizeSecurityGroupEgressRequestEc2QuerySerializer()
      : super('AuthorizeSecurityGroupEgressRequest');

  @override
  Iterable<Type> get types => const [
        AuthorizeSecurityGroupEgressRequest,
        _$AuthorizeSecurityGroupEgressRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AuthorizeSecurityGroupEgressRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AuthorizeSecurityGroupEgressRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'dryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'groupId':
          result.groupId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ipPermissions':
          result.ipPermissions.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i5.BuiltList,
              [FullType(_i3.IpPermission)],
            ),
          ) as _i5.BuiltList<_i3.IpPermission>));
        case 'TagSpecification':
          result.tagSpecifications.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i5.BuiltList,
              [FullType(_i4.TagSpecification)],
            ),
          ) as _i5.BuiltList<_i4.TagSpecification>));
        case 'cidrIp':
          result.cidrIp = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'fromPort':
          result.fromPort = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'ipProtocol':
          result.ipProtocol = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'toPort':
          result.toPort = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'sourceSecurityGroupName':
          result.sourceSecurityGroupName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'sourceSecurityGroupOwnerId':
          result.sourceSecurityGroupOwnerId = (serializers.deserialize(
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
    AuthorizeSecurityGroupEgressRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'AuthorizeSecurityGroupEgressRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final AuthorizeSecurityGroupEgressRequest(
      :dryRun,
      :groupId,
      :ipPermissions,
      :tagSpecifications,
      :cidrIp,
      :fromPort,
      :ipProtocol,
      :toPort,
      :sourceSecurityGroupName,
      :sourceSecurityGroupOwnerId
    ) = object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    result$
      ..add(const _i1.XmlElementName('GroupId'))
      ..add(serializers.serialize(
        groupId,
        specifiedType: const FullType(String),
      ));
    if (ipPermissions != null) {
      result$
        ..add(const _i1.XmlElementName('IpPermissions'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          ipPermissions,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(_i3.IpPermission)],
          ),
        ));
    }
    if (tagSpecifications != null) {
      result$
        ..add(const _i1.XmlElementName('TagSpecification'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          tagSpecifications,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(_i4.TagSpecification)],
          ),
        ));
    }
    if (cidrIp != null) {
      result$
        ..add(const _i1.XmlElementName('CidrIp'))
        ..add(serializers.serialize(
          cidrIp,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('FromPort'))
      ..add(serializers.serialize(
        fromPort,
        specifiedType: const FullType(int),
      ));
    if (ipProtocol != null) {
      result$
        ..add(const _i1.XmlElementName('IpProtocol'))
        ..add(serializers.serialize(
          ipProtocol,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('ToPort'))
      ..add(serializers.serialize(
        toPort,
        specifiedType: const FullType(int),
      ));
    if (sourceSecurityGroupName != null) {
      result$
        ..add(const _i1.XmlElementName('SourceSecurityGroupName'))
        ..add(serializers.serialize(
          sourceSecurityGroupName,
          specifiedType: const FullType(String),
        ));
    }
    if (sourceSecurityGroupOwnerId != null) {
      result$
        ..add(const _i1.XmlElementName('SourceSecurityGroupOwnerId'))
        ..add(serializers.serialize(
          sourceSecurityGroupOwnerId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
