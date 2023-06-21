// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.vpc_cidr_block_state; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/vpc_cidr_block_state_code.dart'
    as _i2;

part 'vpc_cidr_block_state.g.dart';

/// Describes the state of a CIDR block.
abstract class VpcCidrBlockState
    with _i1.AWSEquatable<VpcCidrBlockState>
    implements Built<VpcCidrBlockState, VpcCidrBlockStateBuilder> {
  /// Describes the state of a CIDR block.
  factory VpcCidrBlockState({
    _i2.VpcCidrBlockStateCode? state,
    String? statusMessage,
  }) {
    return _$VpcCidrBlockState._(
      state: state,
      statusMessage: statusMessage,
    );
  }

  /// Describes the state of a CIDR block.
  factory VpcCidrBlockState.build(
      [void Function(VpcCidrBlockStateBuilder) updates]) = _$VpcCidrBlockState;

  const VpcCidrBlockState._();

  static const List<_i3.SmithySerializer> serializers = [
    VpcCidrBlockStateEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(VpcCidrBlockStateBuilder b) {}

  /// The state of the CIDR block.
  _i2.VpcCidrBlockStateCode? get state;

  /// A message about the status of the CIDR block, if applicable.
  String? get statusMessage;
  @override
  List<Object?> get props => [
        state,
        statusMessage,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('VpcCidrBlockState');
    helper.add(
      'state',
      state,
    );
    helper.add(
      'statusMessage',
      statusMessage,
    );
    return helper.toString();
  }
}

class VpcCidrBlockStateEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<VpcCidrBlockState> {
  const VpcCidrBlockStateEc2QuerySerializer() : super('VpcCidrBlockState');

  @override
  Iterable<Type> get types => const [
        VpcCidrBlockState,
        _$VpcCidrBlockState,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  VpcCidrBlockState deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VpcCidrBlockStateBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'state':
          result.state = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.VpcCidrBlockStateCode),
          ) as _i2.VpcCidrBlockStateCode);
        case 'statusMessage':
          result.statusMessage = (serializers.deserialize(
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
    VpcCidrBlockState object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'VpcCidrBlockStateResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final VpcCidrBlockState(:state, :statusMessage) = object;
    if (state != null) {
      result$
        ..add(const _i3.XmlElementName('State'))
        ..add(serializers.serialize(
          state,
          specifiedType: const FullType.nullable(_i2.VpcCidrBlockStateCode),
        ));
    }
    if (statusMessage != null) {
      result$
        ..add(const _i3.XmlElementName('StatusMessage'))
        ..add(serializers.serialize(
          statusMessage,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
