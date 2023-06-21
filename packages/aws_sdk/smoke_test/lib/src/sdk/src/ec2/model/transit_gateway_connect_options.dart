// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.transit_gateway_connect_options; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/protocol_value.dart' as _i2;

part 'transit_gateway_connect_options.g.dart';

/// Describes the Connect attachment options.
abstract class TransitGatewayConnectOptions
    with
        _i1.AWSEquatable<TransitGatewayConnectOptions>
    implements
        Built<TransitGatewayConnectOptions,
            TransitGatewayConnectOptionsBuilder> {
  /// Describes the Connect attachment options.
  factory TransitGatewayConnectOptions({_i2.ProtocolValue? protocol}) {
    return _$TransitGatewayConnectOptions._(protocol: protocol);
  }

  /// Describes the Connect attachment options.
  factory TransitGatewayConnectOptions.build(
          [void Function(TransitGatewayConnectOptionsBuilder) updates]) =
      _$TransitGatewayConnectOptions;

  const TransitGatewayConnectOptions._();

  static const List<_i3.SmithySerializer> serializers = [
    TransitGatewayConnectOptionsEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TransitGatewayConnectOptionsBuilder b) {}

  /// The tunnel protocol.
  _i2.ProtocolValue? get protocol;
  @override
  List<Object?> get props => [protocol];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TransitGatewayConnectOptions');
    helper.add(
      'protocol',
      protocol,
    );
    return helper.toString();
  }
}

class TransitGatewayConnectOptionsEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<TransitGatewayConnectOptions> {
  const TransitGatewayConnectOptionsEc2QuerySerializer()
      : super('TransitGatewayConnectOptions');

  @override
  Iterable<Type> get types => const [
        TransitGatewayConnectOptions,
        _$TransitGatewayConnectOptions,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TransitGatewayConnectOptions deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TransitGatewayConnectOptionsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'protocol':
          result.protocol = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.ProtocolValue),
          ) as _i2.ProtocolValue);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    TransitGatewayConnectOptions object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'TransitGatewayConnectOptionsResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final TransitGatewayConnectOptions(:protocol) = object;
    if (protocol != null) {
      result$
        ..add(const _i3.XmlElementName('Protocol'))
        ..add(serializers.serialize(
          protocol,
          specifiedType: const FullType.nullable(_i2.ProtocolValue),
        ));
    }
    return result$;
  }
}
