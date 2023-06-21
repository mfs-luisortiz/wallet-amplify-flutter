// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.create_transit_gateway_connect_peer_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_connect_peer.dart'
    as _i2;

part 'create_transit_gateway_connect_peer_result.g.dart';

abstract class CreateTransitGatewayConnectPeerResult
    with
        _i1.AWSEquatable<CreateTransitGatewayConnectPeerResult>
    implements
        Built<CreateTransitGatewayConnectPeerResult,
            CreateTransitGatewayConnectPeerResultBuilder> {
  factory CreateTransitGatewayConnectPeerResult(
      {_i2.TransitGatewayConnectPeer? transitGatewayConnectPeer}) {
    return _$CreateTransitGatewayConnectPeerResult._(
        transitGatewayConnectPeer: transitGatewayConnectPeer);
  }

  factory CreateTransitGatewayConnectPeerResult.build(
      [void Function(CreateTransitGatewayConnectPeerResultBuilder)
          updates]) = _$CreateTransitGatewayConnectPeerResult;

  const CreateTransitGatewayConnectPeerResult._();

  /// Constructs a [CreateTransitGatewayConnectPeerResult] from a [payload] and [response].
  factory CreateTransitGatewayConnectPeerResult.fromResponse(
    CreateTransitGatewayConnectPeerResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    CreateTransitGatewayConnectPeerResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateTransitGatewayConnectPeerResultBuilder b) {}

  /// Information about the Connect peer.
  _i2.TransitGatewayConnectPeer? get transitGatewayConnectPeer;
  @override
  List<Object?> get props => [transitGatewayConnectPeer];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateTransitGatewayConnectPeerResult');
    helper.add(
      'transitGatewayConnectPeer',
      transitGatewayConnectPeer,
    );
    return helper.toString();
  }
}

class CreateTransitGatewayConnectPeerResultEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<CreateTransitGatewayConnectPeerResult> {
  const CreateTransitGatewayConnectPeerResultEc2QuerySerializer()
      : super('CreateTransitGatewayConnectPeerResult');

  @override
  Iterable<Type> get types => const [
        CreateTransitGatewayConnectPeerResult,
        _$CreateTransitGatewayConnectPeerResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateTransitGatewayConnectPeerResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateTransitGatewayConnectPeerResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'transitGatewayConnectPeer':
          result.transitGatewayConnectPeer.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.TransitGatewayConnectPeer),
          ) as _i2.TransitGatewayConnectPeer));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CreateTransitGatewayConnectPeerResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'CreateTransitGatewayConnectPeerResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateTransitGatewayConnectPeerResult(:transitGatewayConnectPeer) =
        object;
    if (transitGatewayConnectPeer != null) {
      result$
        ..add(const _i3.XmlElementName('TransitGatewayConnectPeer'))
        ..add(serializers.serialize(
          transitGatewayConnectPeer,
          specifiedType: const FullType(_i2.TransitGatewayConnectPeer),
        ));
    }
    return result$;
  }
}
