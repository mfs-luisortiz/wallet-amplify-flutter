// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.create_transit_gateway_route_table_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_route_table.dart'
    as _i2;

part 'create_transit_gateway_route_table_result.g.dart';

abstract class CreateTransitGatewayRouteTableResult
    with
        _i1.AWSEquatable<CreateTransitGatewayRouteTableResult>
    implements
        Built<CreateTransitGatewayRouteTableResult,
            CreateTransitGatewayRouteTableResultBuilder> {
  factory CreateTransitGatewayRouteTableResult(
      {_i2.TransitGatewayRouteTable? transitGatewayRouteTable}) {
    return _$CreateTransitGatewayRouteTableResult._(
        transitGatewayRouteTable: transitGatewayRouteTable);
  }

  factory CreateTransitGatewayRouteTableResult.build(
      [void Function(CreateTransitGatewayRouteTableResultBuilder)
          updates]) = _$CreateTransitGatewayRouteTableResult;

  const CreateTransitGatewayRouteTableResult._();

  /// Constructs a [CreateTransitGatewayRouteTableResult] from a [payload] and [response].
  factory CreateTransitGatewayRouteTableResult.fromResponse(
    CreateTransitGatewayRouteTableResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    CreateTransitGatewayRouteTableResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateTransitGatewayRouteTableResultBuilder b) {}

  /// Information about the transit gateway route table.
  _i2.TransitGatewayRouteTable? get transitGatewayRouteTable;
  @override
  List<Object?> get props => [transitGatewayRouteTable];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateTransitGatewayRouteTableResult');
    helper.add(
      'transitGatewayRouteTable',
      transitGatewayRouteTable,
    );
    return helper.toString();
  }
}

class CreateTransitGatewayRouteTableResultEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<CreateTransitGatewayRouteTableResult> {
  const CreateTransitGatewayRouteTableResultEc2QuerySerializer()
      : super('CreateTransitGatewayRouteTableResult');

  @override
  Iterable<Type> get types => const [
        CreateTransitGatewayRouteTableResult,
        _$CreateTransitGatewayRouteTableResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateTransitGatewayRouteTableResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateTransitGatewayRouteTableResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'transitGatewayRouteTable':
          result.transitGatewayRouteTable.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.TransitGatewayRouteTable),
          ) as _i2.TransitGatewayRouteTable));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CreateTransitGatewayRouteTableResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'CreateTransitGatewayRouteTableResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateTransitGatewayRouteTableResult(:transitGatewayRouteTable) =
        object;
    if (transitGatewayRouteTable != null) {
      result$
        ..add(const _i3.XmlElementName('TransitGatewayRouteTable'))
        ..add(serializers.serialize(
          transitGatewayRouteTable,
          specifiedType: const FullType(_i2.TransitGatewayRouteTable),
        ));
    }
    return result$;
  }
}
