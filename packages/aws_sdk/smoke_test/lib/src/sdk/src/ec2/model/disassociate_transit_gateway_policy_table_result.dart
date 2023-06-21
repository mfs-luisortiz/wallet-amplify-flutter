// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.disassociate_transit_gateway_policy_table_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_policy_table_association.dart'
    as _i2;

part 'disassociate_transit_gateway_policy_table_result.g.dart';

abstract class DisassociateTransitGatewayPolicyTableResult
    with
        _i1.AWSEquatable<DisassociateTransitGatewayPolicyTableResult>
    implements
        Built<DisassociateTransitGatewayPolicyTableResult,
            DisassociateTransitGatewayPolicyTableResultBuilder> {
  factory DisassociateTransitGatewayPolicyTableResult(
      {_i2.TransitGatewayPolicyTableAssociation? association}) {
    return _$DisassociateTransitGatewayPolicyTableResult._(
        association: association);
  }

  factory DisassociateTransitGatewayPolicyTableResult.build(
      [void Function(DisassociateTransitGatewayPolicyTableResultBuilder)
          updates]) = _$DisassociateTransitGatewayPolicyTableResult;

  const DisassociateTransitGatewayPolicyTableResult._();

  /// Constructs a [DisassociateTransitGatewayPolicyTableResult] from a [payload] and [response].
  factory DisassociateTransitGatewayPolicyTableResult.fromResponse(
    DisassociateTransitGatewayPolicyTableResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    DisassociateTransitGatewayPolicyTableResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DisassociateTransitGatewayPolicyTableResultBuilder b) {}

  /// Returns details about the transit gateway policy table disassociation.
  _i2.TransitGatewayPolicyTableAssociation? get association;
  @override
  List<Object?> get props => [association];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DisassociateTransitGatewayPolicyTableResult');
    helper.add(
      'association',
      association,
    );
    return helper.toString();
  }
}

class DisassociateTransitGatewayPolicyTableResultEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<DisassociateTransitGatewayPolicyTableResult> {
  const DisassociateTransitGatewayPolicyTableResultEc2QuerySerializer()
      : super('DisassociateTransitGatewayPolicyTableResult');

  @override
  Iterable<Type> get types => const [
        DisassociateTransitGatewayPolicyTableResult,
        _$DisassociateTransitGatewayPolicyTableResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DisassociateTransitGatewayPolicyTableResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DisassociateTransitGatewayPolicyTableResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'association':
          result.association.replace((serializers.deserialize(
            value,
            specifiedType:
                const FullType(_i2.TransitGatewayPolicyTableAssociation),
          ) as _i2.TransitGatewayPolicyTableAssociation));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DisassociateTransitGatewayPolicyTableResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DisassociateTransitGatewayPolicyTableResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DisassociateTransitGatewayPolicyTableResult(:association) = object;
    if (association != null) {
      result$
        ..add(const _i3.XmlElementName('Association'))
        ..add(serializers.serialize(
          association,
          specifiedType:
              const FullType(_i2.TransitGatewayPolicyTableAssociation),
        ));
    }
    return result$;
  }
}
