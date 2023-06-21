// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.local_gateway_route_table; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i6;
import 'package:smoke_test/src/sdk/src/ec2/model/local_gateway_route_table_mode.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/state_reason.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i2;

part 'local_gateway_route_table.g.dart';

/// Describes a local gateway route table.
abstract class LocalGatewayRouteTable
    with _i1.AWSEquatable<LocalGatewayRouteTable>
    implements Built<LocalGatewayRouteTable, LocalGatewayRouteTableBuilder> {
  /// Describes a local gateway route table.
  factory LocalGatewayRouteTable({
    String? localGatewayRouteTableId,
    String? localGatewayRouteTableArn,
    String? localGatewayId,
    String? outpostArn,
    String? ownerId,
    String? state,
    List<_i2.Tag>? tags,
    _i3.LocalGatewayRouteTableMode? mode,
    _i4.StateReason? stateReason,
  }) {
    return _$LocalGatewayRouteTable._(
      localGatewayRouteTableId: localGatewayRouteTableId,
      localGatewayRouteTableArn: localGatewayRouteTableArn,
      localGatewayId: localGatewayId,
      outpostArn: outpostArn,
      ownerId: ownerId,
      state: state,
      tags: tags == null ? null : _i5.BuiltList(tags),
      mode: mode,
      stateReason: stateReason,
    );
  }

  /// Describes a local gateway route table.
  factory LocalGatewayRouteTable.build(
          [void Function(LocalGatewayRouteTableBuilder) updates]) =
      _$LocalGatewayRouteTable;

  const LocalGatewayRouteTable._();

  static const List<_i6.SmithySerializer> serializers = [
    LocalGatewayRouteTableEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(LocalGatewayRouteTableBuilder b) {}

  /// The ID of the local gateway route table.
  String? get localGatewayRouteTableId;

  /// The Amazon Resource Name (ARN) of the local gateway route table.
  String? get localGatewayRouteTableArn;

  /// The ID of the local gateway.
  String? get localGatewayId;

  /// The Amazon Resource Name (ARN) of the Outpost.
  String? get outpostArn;

  /// The ID of the Amazon Web Services account that owns the local gateway route table.
  String? get ownerId;

  /// The state of the local gateway route table.
  String? get state;

  /// The tags assigned to the local gateway route table.
  _i5.BuiltList<_i2.Tag>? get tags;

  /// The mode of the local gateway route table.
  _i3.LocalGatewayRouteTableMode? get mode;

  /// Describes a state change.
  _i4.StateReason? get stateReason;
  @override
  List<Object?> get props => [
        localGatewayRouteTableId,
        localGatewayRouteTableArn,
        localGatewayId,
        outpostArn,
        ownerId,
        state,
        tags,
        mode,
        stateReason,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('LocalGatewayRouteTable');
    helper.add(
      'localGatewayRouteTableId',
      localGatewayRouteTableId,
    );
    helper.add(
      'localGatewayRouteTableArn',
      localGatewayRouteTableArn,
    );
    helper.add(
      'localGatewayId',
      localGatewayId,
    );
    helper.add(
      'outpostArn',
      outpostArn,
    );
    helper.add(
      'ownerId',
      ownerId,
    );
    helper.add(
      'state',
      state,
    );
    helper.add(
      'tags',
      tags,
    );
    helper.add(
      'mode',
      mode,
    );
    helper.add(
      'stateReason',
      stateReason,
    );
    return helper.toString();
  }
}

class LocalGatewayRouteTableEc2QuerySerializer
    extends _i6.StructuredSmithySerializer<LocalGatewayRouteTable> {
  const LocalGatewayRouteTableEc2QuerySerializer()
      : super('LocalGatewayRouteTable');

  @override
  Iterable<Type> get types => const [
        LocalGatewayRouteTable,
        _$LocalGatewayRouteTable,
      ];
  @override
  Iterable<_i6.ShapeId> get supportedProtocols => const [
        _i6.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  LocalGatewayRouteTable deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LocalGatewayRouteTableBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'localGatewayRouteTableId':
          result.localGatewayRouteTableId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'localGatewayRouteTableArn':
          result.localGatewayRouteTableArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'localGatewayId':
          result.localGatewayId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'outpostArn':
          result.outpostArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ownerId':
          result.ownerId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'state':
          result.state = (serializers.deserialize(
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
              [FullType(_i2.Tag)],
            ),
          ) as _i5.BuiltList<_i2.Tag>));
        case 'mode':
          result.mode = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.LocalGatewayRouteTableMode),
          ) as _i3.LocalGatewayRouteTableMode);
        case 'stateReason':
          result.stateReason.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.StateReason),
          ) as _i4.StateReason));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    LocalGatewayRouteTable object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i6.XmlElementName(
        'LocalGatewayRouteTableResponse',
        _i6.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final LocalGatewayRouteTable(
      :localGatewayRouteTableId,
      :localGatewayRouteTableArn,
      :localGatewayId,
      :outpostArn,
      :ownerId,
      :state,
      :tags,
      :mode,
      :stateReason
    ) = object;
    if (localGatewayRouteTableId != null) {
      result$
        ..add(const _i6.XmlElementName('LocalGatewayRouteTableId'))
        ..add(serializers.serialize(
          localGatewayRouteTableId,
          specifiedType: const FullType(String),
        ));
    }
    if (localGatewayRouteTableArn != null) {
      result$
        ..add(const _i6.XmlElementName('LocalGatewayRouteTableArn'))
        ..add(serializers.serialize(
          localGatewayRouteTableArn,
          specifiedType: const FullType(String),
        ));
    }
    if (localGatewayId != null) {
      result$
        ..add(const _i6.XmlElementName('LocalGatewayId'))
        ..add(serializers.serialize(
          localGatewayId,
          specifiedType: const FullType(String),
        ));
    }
    if (outpostArn != null) {
      result$
        ..add(const _i6.XmlElementName('OutpostArn'))
        ..add(serializers.serialize(
          outpostArn,
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
    if (state != null) {
      result$
        ..add(const _i6.XmlElementName('State'))
        ..add(serializers.serialize(
          state,
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
            [FullType(_i2.Tag)],
          ),
        ));
    }
    if (mode != null) {
      result$
        ..add(const _i6.XmlElementName('Mode'))
        ..add(serializers.serialize(
          mode,
          specifiedType:
              const FullType.nullable(_i3.LocalGatewayRouteTableMode),
        ));
    }
    if (stateReason != null) {
      result$
        ..add(const _i6.XmlElementName('StateReason'))
        ..add(serializers.serialize(
          stateReason,
          specifiedType: const FullType(_i4.StateReason),
        ));
    }
    return result$;
  }
}
