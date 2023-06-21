// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.route_table_association; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/route_table_association_state.dart'
    as _i2;

part 'route_table_association.g.dart';

/// Describes an association between a route table and a subnet or gateway.
abstract class RouteTableAssociation
    with _i1.AWSEquatable<RouteTableAssociation>
    implements Built<RouteTableAssociation, RouteTableAssociationBuilder> {
  /// Describes an association between a route table and a subnet or gateway.
  factory RouteTableAssociation({
    bool? main,
    String? routeTableAssociationId,
    String? routeTableId,
    String? subnetId,
    String? gatewayId,
    _i2.RouteTableAssociationState? associationState,
  }) {
    main ??= false;
    return _$RouteTableAssociation._(
      main: main,
      routeTableAssociationId: routeTableAssociationId,
      routeTableId: routeTableId,
      subnetId: subnetId,
      gatewayId: gatewayId,
      associationState: associationState,
    );
  }

  /// Describes an association between a route table and a subnet or gateway.
  factory RouteTableAssociation.build(
          [void Function(RouteTableAssociationBuilder) updates]) =
      _$RouteTableAssociation;

  const RouteTableAssociation._();

  static const List<_i3.SmithySerializer> serializers = [
    RouteTableAssociationEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RouteTableAssociationBuilder b) {
    b.main = false;
  }

  /// Indicates whether this is the main route table.
  bool get main;

  /// The ID of the association.
  String? get routeTableAssociationId;

  /// The ID of the route table.
  String? get routeTableId;

  /// The ID of the subnet. A subnet ID is not returned for an implicit association.
  String? get subnetId;

  /// The ID of the internet gateway or virtual private gateway.
  String? get gatewayId;

  /// The state of the association.
  _i2.RouteTableAssociationState? get associationState;
  @override
  List<Object?> get props => [
        main,
        routeTableAssociationId,
        routeTableId,
        subnetId,
        gatewayId,
        associationState,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RouteTableAssociation');
    helper.add(
      'main',
      main,
    );
    helper.add(
      'routeTableAssociationId',
      routeTableAssociationId,
    );
    helper.add(
      'routeTableId',
      routeTableId,
    );
    helper.add(
      'subnetId',
      subnetId,
    );
    helper.add(
      'gatewayId',
      gatewayId,
    );
    helper.add(
      'associationState',
      associationState,
    );
    return helper.toString();
  }
}

class RouteTableAssociationEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<RouteTableAssociation> {
  const RouteTableAssociationEc2QuerySerializer()
      : super('RouteTableAssociation');

  @override
  Iterable<Type> get types => const [
        RouteTableAssociation,
        _$RouteTableAssociation,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  RouteTableAssociation deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RouteTableAssociationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'main':
          result.main = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'routeTableAssociationId':
          result.routeTableAssociationId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'routeTableId':
          result.routeTableId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'subnetId':
          result.subnetId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'gatewayId':
          result.gatewayId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'associationState':
          result.associationState.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.RouteTableAssociationState),
          ) as _i2.RouteTableAssociationState));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    RouteTableAssociation object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'RouteTableAssociationResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final RouteTableAssociation(
      :main,
      :routeTableAssociationId,
      :routeTableId,
      :subnetId,
      :gatewayId,
      :associationState
    ) = object;
    result$
      ..add(const _i3.XmlElementName('Main'))
      ..add(serializers.serialize(
        main,
        specifiedType: const FullType(bool),
      ));
    if (routeTableAssociationId != null) {
      result$
        ..add(const _i3.XmlElementName('RouteTableAssociationId'))
        ..add(serializers.serialize(
          routeTableAssociationId,
          specifiedType: const FullType(String),
        ));
    }
    if (routeTableId != null) {
      result$
        ..add(const _i3.XmlElementName('RouteTableId'))
        ..add(serializers.serialize(
          routeTableId,
          specifiedType: const FullType(String),
        ));
    }
    if (subnetId != null) {
      result$
        ..add(const _i3.XmlElementName('SubnetId'))
        ..add(serializers.serialize(
          subnetId,
          specifiedType: const FullType(String),
        ));
    }
    if (gatewayId != null) {
      result$
        ..add(const _i3.XmlElementName('GatewayId'))
        ..add(serializers.serialize(
          gatewayId,
          specifiedType: const FullType(String),
        ));
    }
    if (associationState != null) {
      result$
        ..add(const _i3.XmlElementName('AssociationState'))
        ..add(serializers.serialize(
          associationState,
          specifiedType: const FullType(_i2.RouteTableAssociationState),
        ));
    }
    return result$;
  }
}
