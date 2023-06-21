// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.transit_gateway_route_table_announcement; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i6;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_route_table_announcement_direction.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_route_table_announcement_state.dart'
    as _i3;

part 'transit_gateway_route_table_announcement.g.dart';

/// Describes a transit gateway route table announcement.
abstract class TransitGatewayRouteTableAnnouncement
    with
        _i1.AWSEquatable<TransitGatewayRouteTableAnnouncement>
    implements
        Built<TransitGatewayRouteTableAnnouncement,
            TransitGatewayRouteTableAnnouncementBuilder> {
  /// Describes a transit gateway route table announcement.
  factory TransitGatewayRouteTableAnnouncement({
    String? transitGatewayRouteTableAnnouncementId,
    String? transitGatewayId,
    String? coreNetworkId,
    String? peerTransitGatewayId,
    String? peerCoreNetworkId,
    String? peeringAttachmentId,
    _i2.TransitGatewayRouteTableAnnouncementDirection? announcementDirection,
    String? transitGatewayRouteTableId,
    _i3.TransitGatewayRouteTableAnnouncementState? state,
    DateTime? creationTime,
    List<_i4.Tag>? tags,
  }) {
    return _$TransitGatewayRouteTableAnnouncement._(
      transitGatewayRouteTableAnnouncementId:
          transitGatewayRouteTableAnnouncementId,
      transitGatewayId: transitGatewayId,
      coreNetworkId: coreNetworkId,
      peerTransitGatewayId: peerTransitGatewayId,
      peerCoreNetworkId: peerCoreNetworkId,
      peeringAttachmentId: peeringAttachmentId,
      announcementDirection: announcementDirection,
      transitGatewayRouteTableId: transitGatewayRouteTableId,
      state: state,
      creationTime: creationTime,
      tags: tags == null ? null : _i5.BuiltList(tags),
    );
  }

  /// Describes a transit gateway route table announcement.
  factory TransitGatewayRouteTableAnnouncement.build(
      [void Function(TransitGatewayRouteTableAnnouncementBuilder)
          updates]) = _$TransitGatewayRouteTableAnnouncement;

  const TransitGatewayRouteTableAnnouncement._();

  static const List<_i6.SmithySerializer> serializers = [
    TransitGatewayRouteTableAnnouncementEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TransitGatewayRouteTableAnnouncementBuilder b) {}

  /// The ID of the transit gateway route table announcement.
  String? get transitGatewayRouteTableAnnouncementId;

  /// The ID of the transit gateway.
  String? get transitGatewayId;

  /// The ID of the core network for the transit gateway route table announcement.
  String? get coreNetworkId;

  /// The ID of the peer transit gateway.
  String? get peerTransitGatewayId;

  /// The ID of the core network ID for the peer.
  String? get peerCoreNetworkId;

  /// The ID of the peering attachment.
  String? get peeringAttachmentId;

  /// The direction for the route table announcement.
  _i2.TransitGatewayRouteTableAnnouncementDirection? get announcementDirection;

  /// The ID of the transit gateway route table.
  String? get transitGatewayRouteTableId;

  /// The state of the transit gateway announcement.
  _i3.TransitGatewayRouteTableAnnouncementState? get state;

  /// The timestamp when the transit gateway route table announcement was created.
  DateTime? get creationTime;

  /// The key-value pairs associated with the route table announcement.
  _i5.BuiltList<_i4.Tag>? get tags;
  @override
  List<Object?> get props => [
        transitGatewayRouteTableAnnouncementId,
        transitGatewayId,
        coreNetworkId,
        peerTransitGatewayId,
        peerCoreNetworkId,
        peeringAttachmentId,
        announcementDirection,
        transitGatewayRouteTableId,
        state,
        creationTime,
        tags,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('TransitGatewayRouteTableAnnouncement');
    helper.add(
      'transitGatewayRouteTableAnnouncementId',
      transitGatewayRouteTableAnnouncementId,
    );
    helper.add(
      'transitGatewayId',
      transitGatewayId,
    );
    helper.add(
      'coreNetworkId',
      coreNetworkId,
    );
    helper.add(
      'peerTransitGatewayId',
      peerTransitGatewayId,
    );
    helper.add(
      'peerCoreNetworkId',
      peerCoreNetworkId,
    );
    helper.add(
      'peeringAttachmentId',
      peeringAttachmentId,
    );
    helper.add(
      'announcementDirection',
      announcementDirection,
    );
    helper.add(
      'transitGatewayRouteTableId',
      transitGatewayRouteTableId,
    );
    helper.add(
      'state',
      state,
    );
    helper.add(
      'creationTime',
      creationTime,
    );
    helper.add(
      'tags',
      tags,
    );
    return helper.toString();
  }
}

class TransitGatewayRouteTableAnnouncementEc2QuerySerializer extends _i6
    .StructuredSmithySerializer<TransitGatewayRouteTableAnnouncement> {
  const TransitGatewayRouteTableAnnouncementEc2QuerySerializer()
      : super('TransitGatewayRouteTableAnnouncement');

  @override
  Iterable<Type> get types => const [
        TransitGatewayRouteTableAnnouncement,
        _$TransitGatewayRouteTableAnnouncement,
      ];
  @override
  Iterable<_i6.ShapeId> get supportedProtocols => const [
        _i6.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TransitGatewayRouteTableAnnouncement deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TransitGatewayRouteTableAnnouncementBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'transitGatewayRouteTableAnnouncementId':
          result.transitGatewayRouteTableAnnouncementId =
              (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'transitGatewayId':
          result.transitGatewayId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'coreNetworkId':
          result.coreNetworkId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'peerTransitGatewayId':
          result.peerTransitGatewayId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'peerCoreNetworkId':
          result.peerCoreNetworkId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'peeringAttachmentId':
          result.peeringAttachmentId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'announcementDirection':
          result.announcementDirection = (serializers.deserialize(
            value,
            specifiedType: const FullType(
                _i2.TransitGatewayRouteTableAnnouncementDirection),
          ) as _i2.TransitGatewayRouteTableAnnouncementDirection);
        case 'transitGatewayRouteTableId':
          result.transitGatewayRouteTableId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'state':
          result.state = (serializers.deserialize(
            value,
            specifiedType:
                const FullType(_i3.TransitGatewayRouteTableAnnouncementState),
          ) as _i3.TransitGatewayRouteTableAnnouncementState);
        case 'creationTime':
          result.creationTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'tagSet':
          result.tags.replace((const _i6.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i6.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i5.BuiltList,
              [FullType(_i4.Tag)],
            ),
          ) as _i5.BuiltList<_i4.Tag>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    TransitGatewayRouteTableAnnouncement object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i6.XmlElementName(
        'TransitGatewayRouteTableAnnouncementResponse',
        _i6.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final TransitGatewayRouteTableAnnouncement(
      :transitGatewayRouteTableAnnouncementId,
      :transitGatewayId,
      :coreNetworkId,
      :peerTransitGatewayId,
      :peerCoreNetworkId,
      :peeringAttachmentId,
      :announcementDirection,
      :transitGatewayRouteTableId,
      :state,
      :creationTime,
      :tags
    ) = object;
    if (transitGatewayRouteTableAnnouncementId != null) {
      result$
        ..add(
            const _i6.XmlElementName('TransitGatewayRouteTableAnnouncementId'))
        ..add(serializers.serialize(
          transitGatewayRouteTableAnnouncementId,
          specifiedType: const FullType(String),
        ));
    }
    if (transitGatewayId != null) {
      result$
        ..add(const _i6.XmlElementName('TransitGatewayId'))
        ..add(serializers.serialize(
          transitGatewayId,
          specifiedType: const FullType(String),
        ));
    }
    if (coreNetworkId != null) {
      result$
        ..add(const _i6.XmlElementName('CoreNetworkId'))
        ..add(serializers.serialize(
          coreNetworkId,
          specifiedType: const FullType(String),
        ));
    }
    if (peerTransitGatewayId != null) {
      result$
        ..add(const _i6.XmlElementName('PeerTransitGatewayId'))
        ..add(serializers.serialize(
          peerTransitGatewayId,
          specifiedType: const FullType(String),
        ));
    }
    if (peerCoreNetworkId != null) {
      result$
        ..add(const _i6.XmlElementName('PeerCoreNetworkId'))
        ..add(serializers.serialize(
          peerCoreNetworkId,
          specifiedType: const FullType(String),
        ));
    }
    if (peeringAttachmentId != null) {
      result$
        ..add(const _i6.XmlElementName('PeeringAttachmentId'))
        ..add(serializers.serialize(
          peeringAttachmentId,
          specifiedType: const FullType(String),
        ));
    }
    if (announcementDirection != null) {
      result$
        ..add(const _i6.XmlElementName('AnnouncementDirection'))
        ..add(serializers.serialize(
          announcementDirection,
          specifiedType: const FullType.nullable(
              _i2.TransitGatewayRouteTableAnnouncementDirection),
        ));
    }
    if (transitGatewayRouteTableId != null) {
      result$
        ..add(const _i6.XmlElementName('TransitGatewayRouteTableId'))
        ..add(serializers.serialize(
          transitGatewayRouteTableId,
          specifiedType: const FullType(String),
        ));
    }
    if (state != null) {
      result$
        ..add(const _i6.XmlElementName('State'))
        ..add(serializers.serialize(
          state,
          specifiedType: const FullType.nullable(
              _i3.TransitGatewayRouteTableAnnouncementState),
        ));
    }
    if (creationTime != null) {
      result$
        ..add(const _i6.XmlElementName('CreationTime'))
        ..add(serializers.serialize(
          creationTime,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (tags != null) {
      result$
        ..add(const _i6.XmlElementName('TagSet'))
        ..add(const _i6.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i6.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          tags,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(_i4.Tag)],
          ),
        ));
    }
    return result$;
  }
}
