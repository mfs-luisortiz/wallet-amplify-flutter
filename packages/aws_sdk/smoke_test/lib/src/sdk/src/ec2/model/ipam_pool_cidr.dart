// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.ipam_pool_cidr; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_pool_cidr_failure_reason.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_pool_cidr_state.dart'
    as _i2;

part 'ipam_pool_cidr.g.dart';

/// A CIDR provisioned to an IPAM pool.
abstract class IpamPoolCidr
    with _i1.AWSEquatable<IpamPoolCidr>
    implements Built<IpamPoolCidr, IpamPoolCidrBuilder> {
  /// A CIDR provisioned to an IPAM pool.
  factory IpamPoolCidr({
    String? cidr,
    _i2.IpamPoolCidrState? state,
    _i3.IpamPoolCidrFailureReason? failureReason,
  }) {
    return _$IpamPoolCidr._(
      cidr: cidr,
      state: state,
      failureReason: failureReason,
    );
  }

  /// A CIDR provisioned to an IPAM pool.
  factory IpamPoolCidr.build([void Function(IpamPoolCidrBuilder) updates]) =
      _$IpamPoolCidr;

  const IpamPoolCidr._();

  static const List<_i4.SmithySerializer> serializers = [
    IpamPoolCidrEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(IpamPoolCidrBuilder b) {}

  /// The CIDR provisioned to the IPAM pool. A CIDR is a representation of an IP address and its associated network mask (or netmask) and refers to a range of IP addresses. An IPv4 CIDR example is `10.24.34.0/23`. An IPv6 CIDR example is `2001:DB8::/32`.
  String? get cidr;

  /// The state of the CIDR.
  _i2.IpamPoolCidrState? get state;

  /// Details related to why an IPAM pool CIDR failed to be provisioned.
  _i3.IpamPoolCidrFailureReason? get failureReason;
  @override
  List<Object?> get props => [
        cidr,
        state,
        failureReason,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('IpamPoolCidr');
    helper.add(
      'cidr',
      cidr,
    );
    helper.add(
      'state',
      state,
    );
    helper.add(
      'failureReason',
      failureReason,
    );
    return helper.toString();
  }
}

class IpamPoolCidrEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<IpamPoolCidr> {
  const IpamPoolCidrEc2QuerySerializer() : super('IpamPoolCidr');

  @override
  Iterable<Type> get types => const [
        IpamPoolCidr,
        _$IpamPoolCidr,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  IpamPoolCidr deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IpamPoolCidrBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'cidr':
          result.cidr = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'state':
          result.state = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.IpamPoolCidrState),
          ) as _i2.IpamPoolCidrState);
        case 'failureReason':
          result.failureReason.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.IpamPoolCidrFailureReason),
          ) as _i3.IpamPoolCidrFailureReason));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    IpamPoolCidr object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i4.XmlElementName(
        'IpamPoolCidrResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final IpamPoolCidr(:cidr, :state, :failureReason) = object;
    if (cidr != null) {
      result$
        ..add(const _i4.XmlElementName('Cidr'))
        ..add(serializers.serialize(
          cidr,
          specifiedType: const FullType(String),
        ));
    }
    if (state != null) {
      result$
        ..add(const _i4.XmlElementName('State'))
        ..add(serializers.serialize(
          state,
          specifiedType: const FullType.nullable(_i2.IpamPoolCidrState),
        ));
    }
    if (failureReason != null) {
      result$
        ..add(const _i4.XmlElementName('FailureReason'))
        ..add(serializers.serialize(
          failureReason,
          specifiedType: const FullType(_i3.IpamPoolCidrFailureReason),
        ));
    }
    return result$;
  }
}
