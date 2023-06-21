// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.network_acl; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i6;
import 'package:smoke_test/src/sdk/src/ec2/model/network_acl_association.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/network_acl_entry.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i4;

part 'network_acl.g.dart';

/// Describes a network ACL.
abstract class NetworkAcl
    with _i1.AWSEquatable<NetworkAcl>
    implements Built<NetworkAcl, NetworkAclBuilder> {
  /// Describes a network ACL.
  factory NetworkAcl({
    List<_i2.NetworkAclAssociation>? associations,
    List<_i3.NetworkAclEntry>? entries,
    bool? isDefault,
    String? networkAclId,
    List<_i4.Tag>? tags,
    String? vpcId,
    String? ownerId,
  }) {
    isDefault ??= false;
    return _$NetworkAcl._(
      associations: associations == null ? null : _i5.BuiltList(associations),
      entries: entries == null ? null : _i5.BuiltList(entries),
      isDefault: isDefault,
      networkAclId: networkAclId,
      tags: tags == null ? null : _i5.BuiltList(tags),
      vpcId: vpcId,
      ownerId: ownerId,
    );
  }

  /// Describes a network ACL.
  factory NetworkAcl.build([void Function(NetworkAclBuilder) updates]) =
      _$NetworkAcl;

  const NetworkAcl._();

  static const List<_i6.SmithySerializer> serializers = [
    NetworkAclEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(NetworkAclBuilder b) {
    b.isDefault = false;
  }

  /// Any associations between the network ACL and one or more subnets
  _i5.BuiltList<_i2.NetworkAclAssociation>? get associations;

  /// One or more entries (rules) in the network ACL.
  _i5.BuiltList<_i3.NetworkAclEntry>? get entries;

  /// Indicates whether this is the default network ACL for the VPC.
  bool get isDefault;

  /// The ID of the network ACL.
  String? get networkAclId;

  /// Any tags assigned to the network ACL.
  _i5.BuiltList<_i4.Tag>? get tags;

  /// The ID of the VPC for the network ACL.
  String? get vpcId;

  /// The ID of the Amazon Web Services account that owns the network ACL.
  String? get ownerId;
  @override
  List<Object?> get props => [
        associations,
        entries,
        isDefault,
        networkAclId,
        tags,
        vpcId,
        ownerId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('NetworkAcl');
    helper.add(
      'associations',
      associations,
    );
    helper.add(
      'entries',
      entries,
    );
    helper.add(
      'isDefault',
      isDefault,
    );
    helper.add(
      'networkAclId',
      networkAclId,
    );
    helper.add(
      'tags',
      tags,
    );
    helper.add(
      'vpcId',
      vpcId,
    );
    helper.add(
      'ownerId',
      ownerId,
    );
    return helper.toString();
  }
}

class NetworkAclEc2QuerySerializer
    extends _i6.StructuredSmithySerializer<NetworkAcl> {
  const NetworkAclEc2QuerySerializer() : super('NetworkAcl');

  @override
  Iterable<Type> get types => const [
        NetworkAcl,
        _$NetworkAcl,
      ];
  @override
  Iterable<_i6.ShapeId> get supportedProtocols => const [
        _i6.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  NetworkAcl deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NetworkAclBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'associationSet':
          result.associations.replace((const _i6.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i6.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i5.BuiltList,
              [FullType(_i2.NetworkAclAssociation)],
            ),
          ) as _i5.BuiltList<_i2.NetworkAclAssociation>));
        case 'entrySet':
          result.entries.replace((const _i6.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i6.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i5.BuiltList,
              [FullType(_i3.NetworkAclEntry)],
            ),
          ) as _i5.BuiltList<_i3.NetworkAclEntry>));
        case 'default':
          result.isDefault = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'networkAclId':
          result.networkAclId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'tagSet':
          result.tags.replace((const _i6.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i6.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i5.BuiltList,
              [FullType(_i4.Tag)],
            ),
          ) as _i5.BuiltList<_i4.Tag>));
        case 'vpcId':
          result.vpcId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ownerId':
          result.ownerId = (serializers.deserialize(
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
    NetworkAcl object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i6.XmlElementName(
        'NetworkAclResponse',
        _i6.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final NetworkAcl(
      :associations,
      :entries,
      :isDefault,
      :networkAclId,
      :tags,
      :vpcId,
      :ownerId
    ) = object;
    if (associations != null) {
      result$
        ..add(const _i6.XmlElementName('AssociationSet'))
        ..add(const _i6.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i6.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          associations,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(_i2.NetworkAclAssociation)],
          ),
        ));
    }
    if (entries != null) {
      result$
        ..add(const _i6.XmlElementName('EntrySet'))
        ..add(const _i6.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i6.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          entries,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(_i3.NetworkAclEntry)],
          ),
        ));
    }
    result$
      ..add(const _i6.XmlElementName('Default'))
      ..add(serializers.serialize(
        isDefault,
        specifiedType: const FullType(bool),
      ));
    if (networkAclId != null) {
      result$
        ..add(const _i6.XmlElementName('NetworkAclId'))
        ..add(serializers.serialize(
          networkAclId,
          specifiedType: const FullType(String),
        ));
    }
    if (tags != null) {
      result$
        ..add(const _i6.XmlElementName('TagSet'))
        ..add(const _i6.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i6.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          tags,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(_i4.Tag)],
          ),
        ));
    }
    if (vpcId != null) {
      result$
        ..add(const _i6.XmlElementName('VpcId'))
        ..add(serializers.serialize(
          vpcId,
          specifiedType: const FullType(String),
        ));
    }
    if (ownerId != null) {
      result$
        ..add(const _i6.XmlElementName('OwnerId'))
        ..add(serializers.serialize(
          ownerId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
