// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.transit_gateway_peering_attachment; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i7;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i8;
import 'package:smoke_test/src/sdk/src/ec2/model/peering_attachment_status.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/peering_tgw_info.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i6;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_attachment_state.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_peering_attachment_options.dart'
    as _i3;

part 'transit_gateway_peering_attachment.g.dart';

/// Describes the transit gateway peering attachment.
abstract class TransitGatewayPeeringAttachment
    with
        _i1.AWSEquatable<TransitGatewayPeeringAttachment>
    implements
        Built<TransitGatewayPeeringAttachment,
            TransitGatewayPeeringAttachmentBuilder> {
  /// Describes the transit gateway peering attachment.
  factory TransitGatewayPeeringAttachment({
    String? transitGatewayAttachmentId,
    String? accepterTransitGatewayAttachmentId,
    _i2.PeeringTgwInfo? requesterTgwInfo,
    _i2.PeeringTgwInfo? accepterTgwInfo,
    _i3.TransitGatewayPeeringAttachmentOptions? options,
    _i4.PeeringAttachmentStatus? status,
    _i5.TransitGatewayAttachmentState? state,
    DateTime? creationTime,
    List<_i6.Tag>? tags,
  }) {
    return _$TransitGatewayPeeringAttachment._(
      transitGatewayAttachmentId: transitGatewayAttachmentId,
      accepterTransitGatewayAttachmentId: accepterTransitGatewayAttachmentId,
      requesterTgwInfo: requesterTgwInfo,
      accepterTgwInfo: accepterTgwInfo,
      options: options,
      status: status,
      state: state,
      creationTime: creationTime,
      tags: tags == null ? null : _i7.BuiltList(tags),
    );
  }

  /// Describes the transit gateway peering attachment.
  factory TransitGatewayPeeringAttachment.build(
          [void Function(TransitGatewayPeeringAttachmentBuilder) updates]) =
      _$TransitGatewayPeeringAttachment;

  const TransitGatewayPeeringAttachment._();

  static const List<_i8.SmithySerializer> serializers = [
    TransitGatewayPeeringAttachmentEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TransitGatewayPeeringAttachmentBuilder b) {}

  /// The ID of the transit gateway peering attachment.
  String? get transitGatewayAttachmentId;

  /// The ID of the accepter transit gateway attachment.
  String? get accepterTransitGatewayAttachmentId;

  /// Information about the requester transit gateway.
  _i2.PeeringTgwInfo? get requesterTgwInfo;

  /// Information about the accepter transit gateway.
  _i2.PeeringTgwInfo? get accepterTgwInfo;

  /// Details about the transit gateway peering attachment.
  _i3.TransitGatewayPeeringAttachmentOptions? get options;

  /// The status of the transit gateway peering attachment.
  _i4.PeeringAttachmentStatus? get status;

  /// The state of the transit gateway peering attachment. Note that the `initiating` state has been deprecated.
  _i5.TransitGatewayAttachmentState? get state;

  /// The time the transit gateway peering attachment was created.
  DateTime? get creationTime;

  /// The tags for the transit gateway peering attachment.
  _i7.BuiltList<_i6.Tag>? get tags;
  @override
  List<Object?> get props => [
        transitGatewayAttachmentId,
        accepterTransitGatewayAttachmentId,
        requesterTgwInfo,
        accepterTgwInfo,
        options,
        status,
        state,
        creationTime,
        tags,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('TransitGatewayPeeringAttachment');
    helper.add(
      'transitGatewayAttachmentId',
      transitGatewayAttachmentId,
    );
    helper.add(
      'accepterTransitGatewayAttachmentId',
      accepterTransitGatewayAttachmentId,
    );
    helper.add(
      'requesterTgwInfo',
      requesterTgwInfo,
    );
    helper.add(
      'accepterTgwInfo',
      accepterTgwInfo,
    );
    helper.add(
      'options',
      options,
    );
    helper.add(
      'status',
      status,
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

class TransitGatewayPeeringAttachmentEc2QuerySerializer
    extends _i8.StructuredSmithySerializer<TransitGatewayPeeringAttachment> {
  const TransitGatewayPeeringAttachmentEc2QuerySerializer()
      : super('TransitGatewayPeeringAttachment');

  @override
  Iterable<Type> get types => const [
        TransitGatewayPeeringAttachment,
        _$TransitGatewayPeeringAttachment,
      ];
  @override
  Iterable<_i8.ShapeId> get supportedProtocols => const [
        _i8.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TransitGatewayPeeringAttachment deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TransitGatewayPeeringAttachmentBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'transitGatewayAttachmentId':
          result.transitGatewayAttachmentId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'accepterTransitGatewayAttachmentId':
          result.accepterTransitGatewayAttachmentId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'requesterTgwInfo':
          result.requesterTgwInfo.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.PeeringTgwInfo),
          ) as _i2.PeeringTgwInfo));
        case 'accepterTgwInfo':
          result.accepterTgwInfo.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.PeeringTgwInfo),
          ) as _i2.PeeringTgwInfo));
        case 'options':
          result.options.replace((serializers.deserialize(
            value,
            specifiedType:
                const FullType(_i3.TransitGatewayPeeringAttachmentOptions),
          ) as _i3.TransitGatewayPeeringAttachmentOptions));
        case 'status':
          result.status.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.PeeringAttachmentStatus),
          ) as _i4.PeeringAttachmentStatus));
        case 'state':
          result.state = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i5.TransitGatewayAttachmentState),
          ) as _i5.TransitGatewayAttachmentState);
        case 'creationTime':
          result.creationTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
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
    TransitGatewayPeeringAttachment object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i8.XmlElementName(
        'TransitGatewayPeeringAttachmentResponse',
        _i8.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final TransitGatewayPeeringAttachment(
      :transitGatewayAttachmentId,
      :accepterTransitGatewayAttachmentId,
      :requesterTgwInfo,
      :accepterTgwInfo,
      :options,
      :status,
      :state,
      :creationTime,
      :tags
    ) = object;
    if (transitGatewayAttachmentId != null) {
      result$
        ..add(const _i8.XmlElementName('TransitGatewayAttachmentId'))
        ..add(serializers.serialize(
          transitGatewayAttachmentId,
          specifiedType: const FullType(String),
        ));
    }
    if (accepterTransitGatewayAttachmentId != null) {
      result$
        ..add(const _i8.XmlElementName('AccepterTransitGatewayAttachmentId'))
        ..add(serializers.serialize(
          accepterTransitGatewayAttachmentId,
          specifiedType: const FullType(String),
        ));
    }
    if (requesterTgwInfo != null) {
      result$
        ..add(const _i8.XmlElementName('RequesterTgwInfo'))
        ..add(serializers.serialize(
          requesterTgwInfo,
          specifiedType: const FullType(_i2.PeeringTgwInfo),
        ));
    }
    if (accepterTgwInfo != null) {
      result$
        ..add(const _i8.XmlElementName('AccepterTgwInfo'))
        ..add(serializers.serialize(
          accepterTgwInfo,
          specifiedType: const FullType(_i2.PeeringTgwInfo),
        ));
    }
    if (options != null) {
      result$
        ..add(const _i8.XmlElementName('Options'))
        ..add(serializers.serialize(
          options,
          specifiedType:
              const FullType(_i3.TransitGatewayPeeringAttachmentOptions),
        ));
    }
    if (status != null) {
      result$
        ..add(const _i8.XmlElementName('Status'))
        ..add(serializers.serialize(
          status,
          specifiedType: const FullType(_i4.PeeringAttachmentStatus),
        ));
    }
    if (state != null) {
      result$
        ..add(const _i8.XmlElementName('State'))
        ..add(serializers.serialize(
          state,
          specifiedType:
              const FullType.nullable(_i5.TransitGatewayAttachmentState),
        ));
    }
    if (creationTime != null) {
      result$
        ..add(const _i8.XmlElementName('CreationTime'))
        ..add(serializers.serialize(
          creationTime,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
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
