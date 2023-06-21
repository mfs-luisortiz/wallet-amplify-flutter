// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.transit_gateway_connect; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i6;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_attachment_state.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_connect_options.dart'
    as _i3;

part 'transit_gateway_connect.g.dart';

/// Describes a transit gateway Connect attachment.
abstract class TransitGatewayConnect
    with _i1.AWSEquatable<TransitGatewayConnect>
    implements Built<TransitGatewayConnect, TransitGatewayConnectBuilder> {
  /// Describes a transit gateway Connect attachment.
  factory TransitGatewayConnect({
    String? transitGatewayAttachmentId,
    String? transportTransitGatewayAttachmentId,
    String? transitGatewayId,
    _i2.TransitGatewayAttachmentState? state,
    DateTime? creationTime,
    _i3.TransitGatewayConnectOptions? options,
    List<_i4.Tag>? tags,
  }) {
    return _$TransitGatewayConnect._(
      transitGatewayAttachmentId: transitGatewayAttachmentId,
      transportTransitGatewayAttachmentId: transportTransitGatewayAttachmentId,
      transitGatewayId: transitGatewayId,
      state: state,
      creationTime: creationTime,
      options: options,
      tags: tags == null ? null : _i5.BuiltList(tags),
    );
  }

  /// Describes a transit gateway Connect attachment.
  factory TransitGatewayConnect.build(
          [void Function(TransitGatewayConnectBuilder) updates]) =
      _$TransitGatewayConnect;

  const TransitGatewayConnect._();

  static const List<_i6.SmithySerializer> serializers = [
    TransitGatewayConnectEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TransitGatewayConnectBuilder b) {}

  /// The ID of the Connect attachment.
  String? get transitGatewayAttachmentId;

  /// The ID of the attachment from which the Connect attachment was created.
  String? get transportTransitGatewayAttachmentId;

  /// The ID of the transit gateway.
  String? get transitGatewayId;

  /// The state of the attachment.
  _i2.TransitGatewayAttachmentState? get state;

  /// The creation time.
  DateTime? get creationTime;

  /// The Connect attachment options.
  _i3.TransitGatewayConnectOptions? get options;

  /// The tags for the attachment.
  _i5.BuiltList<_i4.Tag>? get tags;
  @override
  List<Object?> get props => [
        transitGatewayAttachmentId,
        transportTransitGatewayAttachmentId,
        transitGatewayId,
        state,
        creationTime,
        options,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TransitGatewayConnect');
    helper.add(
      'transitGatewayAttachmentId',
      transitGatewayAttachmentId,
    );
    helper.add(
      'transportTransitGatewayAttachmentId',
      transportTransitGatewayAttachmentId,
    );
    helper.add(
      'transitGatewayId',
      transitGatewayId,
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
      'options',
      options,
    );
    helper.add(
      'tags',
      tags,
    );
    return helper.toString();
  }
}

class TransitGatewayConnectEc2QuerySerializer
    extends _i6.StructuredSmithySerializer<TransitGatewayConnect> {
  const TransitGatewayConnectEc2QuerySerializer()
      : super('TransitGatewayConnect');

  @override
  Iterable<Type> get types => const [
        TransitGatewayConnect,
        _$TransitGatewayConnect,
      ];
  @override
  Iterable<_i6.ShapeId> get supportedProtocols => const [
        _i6.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TransitGatewayConnect deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TransitGatewayConnectBuilder();
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
        case 'transportTransitGatewayAttachmentId':
          result.transportTransitGatewayAttachmentId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'transitGatewayId':
          result.transitGatewayId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'state':
          result.state = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.TransitGatewayAttachmentState),
          ) as _i2.TransitGatewayAttachmentState);
        case 'creationTime':
          result.creationTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'options':
          result.options.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.TransitGatewayConnectOptions),
          ) as _i3.TransitGatewayConnectOptions));
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
    TransitGatewayConnect object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i6.XmlElementName(
        'TransitGatewayConnectResponse',
        _i6.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final TransitGatewayConnect(
      :transitGatewayAttachmentId,
      :transportTransitGatewayAttachmentId,
      :transitGatewayId,
      :state,
      :creationTime,
      :options,
      :tags
    ) = object;
    if (transitGatewayAttachmentId != null) {
      result$
        ..add(const _i6.XmlElementName('TransitGatewayAttachmentId'))
        ..add(serializers.serialize(
          transitGatewayAttachmentId,
          specifiedType: const FullType(String),
        ));
    }
    if (transportTransitGatewayAttachmentId != null) {
      result$
        ..add(const _i6.XmlElementName('TransportTransitGatewayAttachmentId'))
        ..add(serializers.serialize(
          transportTransitGatewayAttachmentId,
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
    if (state != null) {
      result$
        ..add(const _i6.XmlElementName('State'))
        ..add(serializers.serialize(
          state,
          specifiedType:
              const FullType.nullable(_i2.TransitGatewayAttachmentState),
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
    if (options != null) {
      result$
        ..add(const _i6.XmlElementName('Options'))
        ..add(serializers.serialize(
          options,
          specifiedType: const FullType(_i3.TransitGatewayConnectOptions),
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
