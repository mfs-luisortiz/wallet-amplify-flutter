// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.create_transit_gateway_prefix_list_reference_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_prefix_list_reference.dart'
    as _i2;

part 'create_transit_gateway_prefix_list_reference_result.g.dart';

abstract class CreateTransitGatewayPrefixListReferenceResult
    with
        _i1.AWSEquatable<CreateTransitGatewayPrefixListReferenceResult>
    implements
        Built<CreateTransitGatewayPrefixListReferenceResult,
            CreateTransitGatewayPrefixListReferenceResultBuilder> {
  factory CreateTransitGatewayPrefixListReferenceResult(
      {_i2.TransitGatewayPrefixListReference?
          transitGatewayPrefixListReference}) {
    return _$CreateTransitGatewayPrefixListReferenceResult._(
        transitGatewayPrefixListReference: transitGatewayPrefixListReference);
  }

  factory CreateTransitGatewayPrefixListReferenceResult.build(
      [void Function(CreateTransitGatewayPrefixListReferenceResultBuilder)
          updates]) = _$CreateTransitGatewayPrefixListReferenceResult;

  const CreateTransitGatewayPrefixListReferenceResult._();

  /// Constructs a [CreateTransitGatewayPrefixListReferenceResult] from a [payload] and [response].
  factory CreateTransitGatewayPrefixListReferenceResult.fromResponse(
    CreateTransitGatewayPrefixListReferenceResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    CreateTransitGatewayPrefixListReferenceResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateTransitGatewayPrefixListReferenceResultBuilder b) {}

  /// Information about the prefix list reference.
  _i2.TransitGatewayPrefixListReference? get transitGatewayPrefixListReference;
  @override
  List<Object?> get props => [transitGatewayPrefixListReference];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'CreateTransitGatewayPrefixListReferenceResult');
    helper.add(
      'transitGatewayPrefixListReference',
      transitGatewayPrefixListReference,
    );
    return helper.toString();
  }
}

class CreateTransitGatewayPrefixListReferenceResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<
        CreateTransitGatewayPrefixListReferenceResult> {
  const CreateTransitGatewayPrefixListReferenceResultEc2QuerySerializer()
      : super('CreateTransitGatewayPrefixListReferenceResult');

  @override
  Iterable<Type> get types => const [
        CreateTransitGatewayPrefixListReferenceResult,
        _$CreateTransitGatewayPrefixListReferenceResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateTransitGatewayPrefixListReferenceResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateTransitGatewayPrefixListReferenceResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'transitGatewayPrefixListReference':
          result.transitGatewayPrefixListReference
              .replace((serializers.deserialize(
            value,
            specifiedType:
                const FullType(_i2.TransitGatewayPrefixListReference),
          ) as _i2.TransitGatewayPrefixListReference));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CreateTransitGatewayPrefixListReferenceResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'CreateTransitGatewayPrefixListReferenceResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateTransitGatewayPrefixListReferenceResult(
      :transitGatewayPrefixListReference
    ) = object;
    if (transitGatewayPrefixListReference != null) {
      result$
        ..add(const _i3.XmlElementName('TransitGatewayPrefixListReference'))
        ..add(serializers.serialize(
          transitGatewayPrefixListReference,
          specifiedType: const FullType(_i2.TransitGatewayPrefixListReference),
        ));
    }
    return result$;
  }
}
