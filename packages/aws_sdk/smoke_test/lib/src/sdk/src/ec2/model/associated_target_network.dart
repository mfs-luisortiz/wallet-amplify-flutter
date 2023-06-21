// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.associated_target_network; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/associated_network_type.dart'
    as _i2;

part 'associated_target_network.g.dart';

/// Describes a target network that is associated with a Client VPN endpoint. A target network is a subnet in a VPC.
abstract class AssociatedTargetNetwork
    with _i1.AWSEquatable<AssociatedTargetNetwork>
    implements Built<AssociatedTargetNetwork, AssociatedTargetNetworkBuilder> {
  /// Describes a target network that is associated with a Client VPN endpoint. A target network is a subnet in a VPC.
  factory AssociatedTargetNetwork({
    String? networkId,
    _i2.AssociatedNetworkType? networkType,
  }) {
    return _$AssociatedTargetNetwork._(
      networkId: networkId,
      networkType: networkType,
    );
  }

  /// Describes a target network that is associated with a Client VPN endpoint. A target network is a subnet in a VPC.
  factory AssociatedTargetNetwork.build(
          [void Function(AssociatedTargetNetworkBuilder) updates]) =
      _$AssociatedTargetNetwork;

  const AssociatedTargetNetwork._();

  static const List<_i3.SmithySerializer> serializers = [
    AssociatedTargetNetworkEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AssociatedTargetNetworkBuilder b) {}

  /// The ID of the subnet.
  String? get networkId;

  /// The target network type.
  _i2.AssociatedNetworkType? get networkType;
  @override
  List<Object?> get props => [
        networkId,
        networkType,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AssociatedTargetNetwork');
    helper.add(
      'networkId',
      networkId,
    );
    helper.add(
      'networkType',
      networkType,
    );
    return helper.toString();
  }
}

class AssociatedTargetNetworkEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<AssociatedTargetNetwork> {
  const AssociatedTargetNetworkEc2QuerySerializer()
      : super('AssociatedTargetNetwork');

  @override
  Iterable<Type> get types => const [
        AssociatedTargetNetwork,
        _$AssociatedTargetNetwork,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AssociatedTargetNetwork deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AssociatedTargetNetworkBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'networkId':
          result.networkId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'networkType':
          result.networkType = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.AssociatedNetworkType),
          ) as _i2.AssociatedNetworkType);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    AssociatedTargetNetwork object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'AssociatedTargetNetworkResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final AssociatedTargetNetwork(:networkId, :networkType) = object;
    if (networkId != null) {
      result$
        ..add(const _i3.XmlElementName('NetworkId'))
        ..add(serializers.serialize(
          networkId,
          specifiedType: const FullType(String),
        ));
    }
    if (networkType != null) {
      result$
        ..add(const _i3.XmlElementName('NetworkType'))
        ..add(serializers.serialize(
          networkType,
          specifiedType: const FullType.nullable(_i2.AssociatedNetworkType),
        ));
    }
    return result$;
  }
}
