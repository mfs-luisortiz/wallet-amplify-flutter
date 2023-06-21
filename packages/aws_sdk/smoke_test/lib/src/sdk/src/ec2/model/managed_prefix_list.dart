// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.managed_prefix_list; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i3;
import 'package:smithy/smithy.dart' as _i6;
import 'package:smoke_test/src/sdk/src/ec2/model/prefix_list_state.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i4;

part 'managed_prefix_list.g.dart';

/// Describes a managed prefix list.
abstract class ManagedPrefixList
    with _i1.AWSEquatable<ManagedPrefixList>
    implements Built<ManagedPrefixList, ManagedPrefixListBuilder> {
  /// Describes a managed prefix list.
  factory ManagedPrefixList({
    String? prefixListId,
    String? addressFamily,
    _i2.PrefixListState? state,
    String? stateMessage,
    String? prefixListArn,
    String? prefixListName,
    int? maxEntries,
    _i3.Int64? version,
    List<_i4.Tag>? tags,
    String? ownerId,
  }) {
    maxEntries ??= 0;
    version ??= _i3.Int64.ZERO;
    return _$ManagedPrefixList._(
      prefixListId: prefixListId,
      addressFamily: addressFamily,
      state: state,
      stateMessage: stateMessage,
      prefixListArn: prefixListArn,
      prefixListName: prefixListName,
      maxEntries: maxEntries,
      version: version,
      tags: tags == null ? null : _i5.BuiltList(tags),
      ownerId: ownerId,
    );
  }

  /// Describes a managed prefix list.
  factory ManagedPrefixList.build(
      [void Function(ManagedPrefixListBuilder) updates]) = _$ManagedPrefixList;

  const ManagedPrefixList._();

  static const List<_i6.SmithySerializer> serializers = [
    ManagedPrefixListEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ManagedPrefixListBuilder b) {
    b.maxEntries = 0;
    b.version = _i3.Int64.ZERO;
  }

  /// The ID of the prefix list.
  String? get prefixListId;

  /// The IP address version.
  String? get addressFamily;

  /// The current state of the prefix list.
  _i2.PrefixListState? get state;

  /// The state message.
  String? get stateMessage;

  /// The Amazon Resource Name (ARN) for the prefix list.
  String? get prefixListArn;

  /// The name of the prefix list.
  String? get prefixListName;

  /// The maximum number of entries for the prefix list.
  int get maxEntries;

  /// The version of the prefix list.
  _i3.Int64 get version;

  /// The tags for the prefix list.
  _i5.BuiltList<_i4.Tag>? get tags;

  /// The ID of the owner of the prefix list.
  String? get ownerId;
  @override
  List<Object?> get props => [
        prefixListId,
        addressFamily,
        state,
        stateMessage,
        prefixListArn,
        prefixListName,
        maxEntries,
        version,
        tags,
        ownerId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ManagedPrefixList');
    helper.add(
      'prefixListId',
      prefixListId,
    );
    helper.add(
      'addressFamily',
      addressFamily,
    );
    helper.add(
      'state',
      state,
    );
    helper.add(
      'stateMessage',
      stateMessage,
    );
    helper.add(
      'prefixListArn',
      prefixListArn,
    );
    helper.add(
      'prefixListName',
      prefixListName,
    );
    helper.add(
      'maxEntries',
      maxEntries,
    );
    helper.add(
      'version',
      version,
    );
    helper.add(
      'tags',
      tags,
    );
    helper.add(
      'ownerId',
      ownerId,
    );
    return helper.toString();
  }
}

class ManagedPrefixListEc2QuerySerializer
    extends _i6.StructuredSmithySerializer<ManagedPrefixList> {
  const ManagedPrefixListEc2QuerySerializer() : super('ManagedPrefixList');

  @override
  Iterable<Type> get types => const [
        ManagedPrefixList,
        _$ManagedPrefixList,
      ];
  @override
  Iterable<_i6.ShapeId> get supportedProtocols => const [
        _i6.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ManagedPrefixList deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ManagedPrefixListBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'prefixListId':
          result.prefixListId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'addressFamily':
          result.addressFamily = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'state':
          result.state = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.PrefixListState),
          ) as _i2.PrefixListState);
        case 'stateMessage':
          result.stateMessage = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'prefixListArn':
          result.prefixListArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'prefixListName':
          result.prefixListName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'maxEntries':
          result.maxEntries = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'version':
          result.version = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.Int64),
          ) as _i3.Int64);
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
    ManagedPrefixList object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i6.XmlElementName(
        'ManagedPrefixListResponse',
        _i6.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ManagedPrefixList(
      :prefixListId,
      :addressFamily,
      :state,
      :stateMessage,
      :prefixListArn,
      :prefixListName,
      :maxEntries,
      :version,
      :tags,
      :ownerId
    ) = object;
    if (prefixListId != null) {
      result$
        ..add(const _i6.XmlElementName('PrefixListId'))
        ..add(serializers.serialize(
          prefixListId,
          specifiedType: const FullType(String),
        ));
    }
    if (addressFamily != null) {
      result$
        ..add(const _i6.XmlElementName('AddressFamily'))
        ..add(serializers.serialize(
          addressFamily,
          specifiedType: const FullType(String),
        ));
    }
    if (state != null) {
      result$
        ..add(const _i6.XmlElementName('State'))
        ..add(serializers.serialize(
          state,
          specifiedType: const FullType.nullable(_i2.PrefixListState),
        ));
    }
    if (stateMessage != null) {
      result$
        ..add(const _i6.XmlElementName('StateMessage'))
        ..add(serializers.serialize(
          stateMessage,
          specifiedType: const FullType(String),
        ));
    }
    if (prefixListArn != null) {
      result$
        ..add(const _i6.XmlElementName('PrefixListArn'))
        ..add(serializers.serialize(
          prefixListArn,
          specifiedType: const FullType(String),
        ));
    }
    if (prefixListName != null) {
      result$
        ..add(const _i6.XmlElementName('PrefixListName'))
        ..add(serializers.serialize(
          prefixListName,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i6.XmlElementName('MaxEntries'))
      ..add(serializers.serialize(
        maxEntries,
        specifiedType: const FullType(int),
      ));
    result$
      ..add(const _i6.XmlElementName('Version'))
      ..add(serializers.serialize(
        version,
        specifiedType: const FullType(_i3.Int64),
      ));
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
