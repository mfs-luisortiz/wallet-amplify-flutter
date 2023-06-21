// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.route_table; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i7;
import 'package:smoke_test/src/sdk/src/ec2/model/propagating_vgw.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/route.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/route_table_association.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i5;

part 'route_table.g.dart';

/// Describes a route table.
abstract class RouteTable
    with _i1.AWSEquatable<RouteTable>
    implements Built<RouteTable, RouteTableBuilder> {
  /// Describes a route table.
  factory RouteTable({
    List<_i2.RouteTableAssociation>? associations,
    List<_i3.PropagatingVgw>? propagatingVgws,
    String? routeTableId,
    List<_i4.Route>? routes,
    List<_i5.Tag>? tags,
    String? vpcId,
    String? ownerId,
  }) {
    return _$RouteTable._(
      associations: associations == null ? null : _i6.BuiltList(associations),
      propagatingVgws:
          propagatingVgws == null ? null : _i6.BuiltList(propagatingVgws),
      routeTableId: routeTableId,
      routes: routes == null ? null : _i6.BuiltList(routes),
      tags: tags == null ? null : _i6.BuiltList(tags),
      vpcId: vpcId,
      ownerId: ownerId,
    );
  }

  /// Describes a route table.
  factory RouteTable.build([void Function(RouteTableBuilder) updates]) =
      _$RouteTable;

  const RouteTable._();

  static const List<_i7.SmithySerializer> serializers = [
    RouteTableEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RouteTableBuilder b) {}

  /// The associations between the route table and one or more subnets or a gateway.
  _i6.BuiltList<_i2.RouteTableAssociation>? get associations;

  /// Any virtual private gateway (VGW) propagating routes.
  _i6.BuiltList<_i3.PropagatingVgw>? get propagatingVgws;

  /// The ID of the route table.
  String? get routeTableId;

  /// The routes in the route table.
  _i6.BuiltList<_i4.Route>? get routes;

  /// Any tags assigned to the route table.
  _i6.BuiltList<_i5.Tag>? get tags;

  /// The ID of the VPC.
  String? get vpcId;

  /// The ID of the Amazon Web Services account that owns the route table.
  String? get ownerId;
  @override
  List<Object?> get props => [
        associations,
        propagatingVgws,
        routeTableId,
        routes,
        tags,
        vpcId,
        ownerId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RouteTable');
    helper.add(
      'associations',
      associations,
    );
    helper.add(
      'propagatingVgws',
      propagatingVgws,
    );
    helper.add(
      'routeTableId',
      routeTableId,
    );
    helper.add(
      'routes',
      routes,
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

class RouteTableEc2QuerySerializer
    extends _i7.StructuredSmithySerializer<RouteTable> {
  const RouteTableEc2QuerySerializer() : super('RouteTable');

  @override
  Iterable<Type> get types => const [
        RouteTable,
        _$RouteTable,
      ];
  @override
  Iterable<_i7.ShapeId> get supportedProtocols => const [
        _i7.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  RouteTable deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RouteTableBuilder();
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
          result.associations.replace((const _i7.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i7.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i6.BuiltList,
              [FullType(_i2.RouteTableAssociation)],
            ),
          ) as _i6.BuiltList<_i2.RouteTableAssociation>));
        case 'propagatingVgwSet':
          result.propagatingVgws.replace((const _i7.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i7.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i6.BuiltList,
              [FullType(_i3.PropagatingVgw)],
            ),
          ) as _i6.BuiltList<_i3.PropagatingVgw>));
        case 'routeTableId':
          result.routeTableId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'routeSet':
          result.routes.replace((const _i7.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i7.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i6.BuiltList,
              [FullType(_i4.Route)],
            ),
          ) as _i6.BuiltList<_i4.Route>));
        case 'tagSet':
          result.tags.replace((const _i7.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i7.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i6.BuiltList,
              [FullType(_i5.Tag)],
            ),
          ) as _i6.BuiltList<_i5.Tag>));
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
    RouteTable object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i7.XmlElementName(
        'RouteTableResponse',
        _i7.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final RouteTable(
      :associations,
      :propagatingVgws,
      :routeTableId,
      :routes,
      :tags,
      :vpcId,
      :ownerId
    ) = object;
    if (associations != null) {
      result$
        ..add(const _i7.XmlElementName('AssociationSet'))
        ..add(const _i7.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i7.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          associations,
          specifiedType: const FullType.nullable(
            _i6.BuiltList,
            [FullType(_i2.RouteTableAssociation)],
          ),
        ));
    }
    if (propagatingVgws != null) {
      result$
        ..add(const _i7.XmlElementName('PropagatingVgwSet'))
        ..add(const _i7.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i7.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          propagatingVgws,
          specifiedType: const FullType.nullable(
            _i6.BuiltList,
            [FullType(_i3.PropagatingVgw)],
          ),
        ));
    }
    if (routeTableId != null) {
      result$
        ..add(const _i7.XmlElementName('RouteTableId'))
        ..add(serializers.serialize(
          routeTableId,
          specifiedType: const FullType(String),
        ));
    }
    if (routes != null) {
      result$
        ..add(const _i7.XmlElementName('RouteSet'))
        ..add(const _i7.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i7.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          routes,
          specifiedType: const FullType.nullable(
            _i6.BuiltList,
            [FullType(_i4.Route)],
          ),
        ));
    }
    if (tags != null) {
      result$
        ..add(const _i7.XmlElementName('TagSet'))
        ..add(const _i7.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i7.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          tags,
          specifiedType: const FullType.nullable(
            _i6.BuiltList,
            [FullType(_i5.Tag)],
          ),
        ));
    }
    if (vpcId != null) {
      result$
        ..add(const _i7.XmlElementName('VpcId'))
        ..add(serializers.serialize(
          vpcId,
          specifiedType: const FullType(String),
        ));
    }
    if (ownerId != null) {
      result$
        ..add(const _i7.XmlElementName('OwnerId'))
        ..add(serializers.serialize(
          ownerId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
