// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.transit_gateway_request_options; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i9;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i2;
import 'package:smithy/smithy.dart' as _i10;
import 'package:smoke_test/src/sdk/src/ec2/model/auto_accept_shared_attachments_value.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/default_route_table_association_value.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/default_route_table_propagation_value.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/dns_support_value.dart' as _i7;
import 'package:smoke_test/src/sdk/src/ec2/model/multicast_support_value.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/ec2/model/vpn_ecmp_support_value.dart'
    as _i6;

part 'transit_gateway_request_options.g.dart';

/// Describes the options for a transit gateway.
abstract class TransitGatewayRequestOptions
    with
        _i1.AWSEquatable<TransitGatewayRequestOptions>
    implements
        Built<TransitGatewayRequestOptions,
            TransitGatewayRequestOptionsBuilder> {
  /// Describes the options for a transit gateway.
  factory TransitGatewayRequestOptions({
    _i2.Int64? amazonSideAsn,
    _i3.AutoAcceptSharedAttachmentsValue? autoAcceptSharedAttachments,
    _i4.DefaultRouteTableAssociationValue? defaultRouteTableAssociation,
    _i5.DefaultRouteTablePropagationValue? defaultRouteTablePropagation,
    _i6.VpnEcmpSupportValue? vpnEcmpSupport,
    _i7.DnsSupportValue? dnsSupport,
    _i8.MulticastSupportValue? multicastSupport,
    List<String>? transitGatewayCidrBlocks,
  }) {
    amazonSideAsn ??= _i2.Int64.ZERO;
    return _$TransitGatewayRequestOptions._(
      amazonSideAsn: amazonSideAsn,
      autoAcceptSharedAttachments: autoAcceptSharedAttachments,
      defaultRouteTableAssociation: defaultRouteTableAssociation,
      defaultRouteTablePropagation: defaultRouteTablePropagation,
      vpnEcmpSupport: vpnEcmpSupport,
      dnsSupport: dnsSupport,
      multicastSupport: multicastSupport,
      transitGatewayCidrBlocks: transitGatewayCidrBlocks == null
          ? null
          : _i9.BuiltList(transitGatewayCidrBlocks),
    );
  }

  /// Describes the options for a transit gateway.
  factory TransitGatewayRequestOptions.build(
          [void Function(TransitGatewayRequestOptionsBuilder) updates]) =
      _$TransitGatewayRequestOptions;

  const TransitGatewayRequestOptions._();

  static const List<_i10.SmithySerializer> serializers = [
    TransitGatewayRequestOptionsEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TransitGatewayRequestOptionsBuilder b) {
    b.amazonSideAsn = _i2.Int64.ZERO;
  }

  /// A private Autonomous System Number (ASN) for the Amazon side of a BGP session. The range is 64512 to 65534 for 16-bit ASNs and 4200000000 to 4294967294 for 32-bit ASNs. The default is `64512`.
  _i2.Int64 get amazonSideAsn;

  /// Enable or disable automatic acceptance of attachment requests. Disabled by default.
  _i3.AutoAcceptSharedAttachmentsValue? get autoAcceptSharedAttachments;

  /// Enable or disable automatic association with the default association route table. Enabled by default.
  _i4.DefaultRouteTableAssociationValue? get defaultRouteTableAssociation;

  /// Enable or disable automatic propagation of routes to the default propagation route table. Enabled by default.
  _i5.DefaultRouteTablePropagationValue? get defaultRouteTablePropagation;

  /// Enable or disable Equal Cost Multipath Protocol support. Enabled by default.
  _i6.VpnEcmpSupportValue? get vpnEcmpSupport;

  /// Enable or disable DNS support. Enabled by default.
  _i7.DnsSupportValue? get dnsSupport;

  /// Indicates whether multicast is enabled on the transit gateway
  _i8.MulticastSupportValue? get multicastSupport;

  /// One or more IPv4 or IPv6 CIDR blocks for the transit gateway. Must be a size /24 CIDR block or larger for IPv4, or a size /64 CIDR block or larger for IPv6.
  _i9.BuiltList<String>? get transitGatewayCidrBlocks;
  @override
  List<Object?> get props => [
        amazonSideAsn,
        autoAcceptSharedAttachments,
        defaultRouteTableAssociation,
        defaultRouteTablePropagation,
        vpnEcmpSupport,
        dnsSupport,
        multicastSupport,
        transitGatewayCidrBlocks,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TransitGatewayRequestOptions');
    helper.add(
      'amazonSideAsn',
      amazonSideAsn,
    );
    helper.add(
      'autoAcceptSharedAttachments',
      autoAcceptSharedAttachments,
    );
    helper.add(
      'defaultRouteTableAssociation',
      defaultRouteTableAssociation,
    );
    helper.add(
      'defaultRouteTablePropagation',
      defaultRouteTablePropagation,
    );
    helper.add(
      'vpnEcmpSupport',
      vpnEcmpSupport,
    );
    helper.add(
      'dnsSupport',
      dnsSupport,
    );
    helper.add(
      'multicastSupport',
      multicastSupport,
    );
    helper.add(
      'transitGatewayCidrBlocks',
      transitGatewayCidrBlocks,
    );
    return helper.toString();
  }
}

class TransitGatewayRequestOptionsEc2QuerySerializer
    extends _i10.StructuredSmithySerializer<TransitGatewayRequestOptions> {
  const TransitGatewayRequestOptionsEc2QuerySerializer()
      : super('TransitGatewayRequestOptions');

  @override
  Iterable<Type> get types => const [
        TransitGatewayRequestOptions,
        _$TransitGatewayRequestOptions,
      ];
  @override
  Iterable<_i10.ShapeId> get supportedProtocols => const [
        _i10.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TransitGatewayRequestOptions deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TransitGatewayRequestOptionsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'AmazonSideAsn':
          result.amazonSideAsn = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.Int64),
          ) as _i2.Int64);
        case 'AutoAcceptSharedAttachments':
          result.autoAcceptSharedAttachments = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.AutoAcceptSharedAttachmentsValue),
          ) as _i3.AutoAcceptSharedAttachmentsValue);
        case 'DefaultRouteTableAssociation':
          result.defaultRouteTableAssociation = (serializers.deserialize(
            value,
            specifiedType:
                const FullType(_i4.DefaultRouteTableAssociationValue),
          ) as _i4.DefaultRouteTableAssociationValue);
        case 'DefaultRouteTablePropagation':
          result.defaultRouteTablePropagation = (serializers.deserialize(
            value,
            specifiedType:
                const FullType(_i5.DefaultRouteTablePropagationValue),
          ) as _i5.DefaultRouteTablePropagationValue);
        case 'VpnEcmpSupport':
          result.vpnEcmpSupport = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i6.VpnEcmpSupportValue),
          ) as _i6.VpnEcmpSupportValue);
        case 'DnsSupport':
          result.dnsSupport = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i7.DnsSupportValue),
          ) as _i7.DnsSupportValue);
        case 'MulticastSupport':
          result.multicastSupport = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i8.MulticastSupportValue),
          ) as _i8.MulticastSupportValue);
        case 'TransitGatewayCidrBlocks':
          result.transitGatewayCidrBlocks
              .replace((const _i10.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i10.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i9.BuiltList,
              [FullType(String)],
            ),
          ) as _i9.BuiltList<String>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    TransitGatewayRequestOptions object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i10.XmlElementName(
        'TransitGatewayRequestOptionsResponse',
        _i10.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final TransitGatewayRequestOptions(
      :amazonSideAsn,
      :autoAcceptSharedAttachments,
      :defaultRouteTableAssociation,
      :defaultRouteTablePropagation,
      :vpnEcmpSupport,
      :dnsSupport,
      :multicastSupport,
      :transitGatewayCidrBlocks
    ) = object;
    result$
      ..add(const _i10.XmlElementName('AmazonSideAsn'))
      ..add(serializers.serialize(
        amazonSideAsn,
        specifiedType: const FullType(_i2.Int64),
      ));
    if (autoAcceptSharedAttachments != null) {
      result$
        ..add(const _i10.XmlElementName('AutoAcceptSharedAttachments'))
        ..add(serializers.serialize(
          autoAcceptSharedAttachments,
          specifiedType:
              const FullType.nullable(_i3.AutoAcceptSharedAttachmentsValue),
        ));
    }
    if (defaultRouteTableAssociation != null) {
      result$
        ..add(const _i10.XmlElementName('DefaultRouteTableAssociation'))
        ..add(serializers.serialize(
          defaultRouteTableAssociation,
          specifiedType:
              const FullType.nullable(_i4.DefaultRouteTableAssociationValue),
        ));
    }
    if (defaultRouteTablePropagation != null) {
      result$
        ..add(const _i10.XmlElementName('DefaultRouteTablePropagation'))
        ..add(serializers.serialize(
          defaultRouteTablePropagation,
          specifiedType:
              const FullType.nullable(_i5.DefaultRouteTablePropagationValue),
        ));
    }
    if (vpnEcmpSupport != null) {
      result$
        ..add(const _i10.XmlElementName('VpnEcmpSupport'))
        ..add(serializers.serialize(
          vpnEcmpSupport,
          specifiedType: const FullType.nullable(_i6.VpnEcmpSupportValue),
        ));
    }
    if (dnsSupport != null) {
      result$
        ..add(const _i10.XmlElementName('DnsSupport'))
        ..add(serializers.serialize(
          dnsSupport,
          specifiedType: const FullType.nullable(_i7.DnsSupportValue),
        ));
    }
    if (multicastSupport != null) {
      result$
        ..add(const _i10.XmlElementName('MulticastSupport'))
        ..add(serializers.serialize(
          multicastSupport,
          specifiedType: const FullType.nullable(_i8.MulticastSupportValue),
        ));
    }
    if (transitGatewayCidrBlocks != null) {
      result$
        ..add(const _i10.XmlElementName('TransitGatewayCidrBlocks'))
        ..add(const _i10.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i10.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          transitGatewayCidrBlocks,
          specifiedType: const FullType.nullable(
            _i9.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    return result$;
  }
}
