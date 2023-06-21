// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.vpn_gateway; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i7;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i5;
import 'package:smithy/smithy.dart' as _i8;
import 'package:smoke_test/src/sdk/src/ec2/model/gateway_type.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i6;
import 'package:smoke_test/src/sdk/src/ec2/model/vpc_attachment.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/vpn_state.dart' as _i2;

part 'vpn_gateway.g.dart';

/// Describes a virtual private gateway.
abstract class VpnGateway
    with _i1.AWSEquatable<VpnGateway>
    implements Built<VpnGateway, VpnGatewayBuilder> {
  /// Describes a virtual private gateway.
  factory VpnGateway({
    String? availabilityZone,
    _i2.VpnState? state,
    _i3.GatewayType? type,
    List<_i4.VpcAttachment>? vpcAttachments,
    String? vpnGatewayId,
    _i5.Int64? amazonSideAsn,
    List<_i6.Tag>? tags,
  }) {
    amazonSideAsn ??= _i5.Int64.ZERO;
    return _$VpnGateway._(
      availabilityZone: availabilityZone,
      state: state,
      type: type,
      vpcAttachments:
          vpcAttachments == null ? null : _i7.BuiltList(vpcAttachments),
      vpnGatewayId: vpnGatewayId,
      amazonSideAsn: amazonSideAsn,
      tags: tags == null ? null : _i7.BuiltList(tags),
    );
  }

  /// Describes a virtual private gateway.
  factory VpnGateway.build([void Function(VpnGatewayBuilder) updates]) =
      _$VpnGateway;

  const VpnGateway._();

  static const List<_i8.SmithySerializer> serializers = [
    VpnGatewayEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(VpnGatewayBuilder b) {
    b.amazonSideAsn = _i5.Int64.ZERO;
  }

  /// The Availability Zone where the virtual private gateway was created, if applicable. This field may be empty or not returned.
  String? get availabilityZone;

  /// The current state of the virtual private gateway.
  _i2.VpnState? get state;

  /// The type of VPN connection the virtual private gateway supports.
  _i3.GatewayType? get type;

  /// Any VPCs attached to the virtual private gateway.
  _i7.BuiltList<_i4.VpcAttachment>? get vpcAttachments;

  /// The ID of the virtual private gateway.
  String? get vpnGatewayId;

  /// The private Autonomous System Number (ASN) for the Amazon side of a BGP session.
  _i5.Int64 get amazonSideAsn;

  /// Any tags assigned to the virtual private gateway.
  _i7.BuiltList<_i6.Tag>? get tags;
  @override
  List<Object?> get props => [
        availabilityZone,
        state,
        type,
        vpcAttachments,
        vpnGatewayId,
        amazonSideAsn,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('VpnGateway');
    helper.add(
      'availabilityZone',
      availabilityZone,
    );
    helper.add(
      'state',
      state,
    );
    helper.add(
      'type',
      type,
    );
    helper.add(
      'vpcAttachments',
      vpcAttachments,
    );
    helper.add(
      'vpnGatewayId',
      vpnGatewayId,
    );
    helper.add(
      'amazonSideAsn',
      amazonSideAsn,
    );
    helper.add(
      'tags',
      tags,
    );
    return helper.toString();
  }
}

class VpnGatewayEc2QuerySerializer
    extends _i8.StructuredSmithySerializer<VpnGateway> {
  const VpnGatewayEc2QuerySerializer() : super('VpnGateway');

  @override
  Iterable<Type> get types => const [
        VpnGateway,
        _$VpnGateway,
      ];
  @override
  Iterable<_i8.ShapeId> get supportedProtocols => const [
        _i8.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  VpnGateway deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VpnGatewayBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'availabilityZone':
          result.availabilityZone = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'state':
          result.state = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.VpnState),
          ) as _i2.VpnState);
        case 'type':
          result.type = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.GatewayType),
          ) as _i3.GatewayType);
        case 'attachments':
          result.vpcAttachments.replace((const _i8.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i8.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i7.BuiltList,
              [FullType(_i4.VpcAttachment)],
            ),
          ) as _i7.BuiltList<_i4.VpcAttachment>));
        case 'vpnGatewayId':
          result.vpnGatewayId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'amazonSideAsn':
          result.amazonSideAsn = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i5.Int64),
          ) as _i5.Int64);
        case 'tagSet':
          result.tags.replace((const _i8.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i8.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i7.BuiltList,
              [FullType(_i6.Tag)],
            ),
          ) as _i7.BuiltList<_i6.Tag>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    VpnGateway object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i8.XmlElementName(
        'VpnGatewayResponse',
        _i8.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final VpnGateway(
      :availabilityZone,
      :state,
      :type,
      :vpcAttachments,
      :vpnGatewayId,
      :amazonSideAsn,
      :tags
    ) = object;
    if (availabilityZone != null) {
      result$
        ..add(const _i8.XmlElementName('AvailabilityZone'))
        ..add(serializers.serialize(
          availabilityZone,
          specifiedType: const FullType(String),
        ));
    }
    if (state != null) {
      result$
        ..add(const _i8.XmlElementName('State'))
        ..add(serializers.serialize(
          state,
          specifiedType: const FullType.nullable(_i2.VpnState),
        ));
    }
    if (type != null) {
      result$
        ..add(const _i8.XmlElementName('Type'))
        ..add(serializers.serialize(
          type,
          specifiedType: const FullType.nullable(_i3.GatewayType),
        ));
    }
    if (vpcAttachments != null) {
      result$
        ..add(const _i8.XmlElementName('Attachments'))
        ..add(const _i8.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i8.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          vpcAttachments,
          specifiedType: const FullType.nullable(
            _i7.BuiltList,
            [FullType(_i4.VpcAttachment)],
          ),
        ));
    }
    if (vpnGatewayId != null) {
      result$
        ..add(const _i8.XmlElementName('VpnGatewayId'))
        ..add(serializers.serialize(
          vpnGatewayId,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i8.XmlElementName('AmazonSideAsn'))
      ..add(serializers.serialize(
        amazonSideAsn,
        specifiedType: const FullType(_i5.Int64),
      ));
    if (tags != null) {
      result$
        ..add(const _i8.XmlElementName('TagSet'))
        ..add(const _i8.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i8.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          tags,
          specifiedType: const FullType.nullable(
            _i7.BuiltList,
            [FullType(_i6.Tag)],
          ),
        ));
    }
    return result$;
  }
}
