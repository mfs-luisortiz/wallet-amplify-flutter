// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.reservation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/group_identifier.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/instance.dart' as _i3;

part 'reservation.g.dart';

/// Describes a launch request for one or more instances, and includes owner, requester, and security group information that applies to all instances in the launch request.
abstract class Reservation
    with _i1.AWSEquatable<Reservation>
    implements Built<Reservation, ReservationBuilder> {
  /// Describes a launch request for one or more instances, and includes owner, requester, and security group information that applies to all instances in the launch request.
  factory Reservation({
    List<_i2.GroupIdentifier>? groups,
    List<_i3.Instance>? instances,
    String? ownerId,
    String? requesterId,
    String? reservationId,
  }) {
    return _$Reservation._(
      groups: groups == null ? null : _i4.BuiltList(groups),
      instances: instances == null ? null : _i4.BuiltList(instances),
      ownerId: ownerId,
      requesterId: requesterId,
      reservationId: reservationId,
    );
  }

  /// Describes a launch request for one or more instances, and includes owner, requester, and security group information that applies to all instances in the launch request.
  factory Reservation.build([void Function(ReservationBuilder) updates]) =
      _$Reservation;

  const Reservation._();

  /// Constructs a [Reservation] from a [payload] and [response].
  factory Reservation.fromResponse(
    Reservation payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i5.SmithySerializer> serializers = [
    ReservationEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ReservationBuilder b) {}

  /// \[EC2-Classic only\] The security groups.
  _i4.BuiltList<_i2.GroupIdentifier>? get groups;

  /// The instances.
  _i4.BuiltList<_i3.Instance>? get instances;

  /// The ID of the Amazon Web Services account that owns the reservation.
  String? get ownerId;

  /// The ID of the requester that launched the instances on your behalf (for example, Amazon Web Services Management Console or Auto Scaling).
  String? get requesterId;

  /// The ID of the reservation.
  String? get reservationId;
  @override
  List<Object?> get props => [
        groups,
        instances,
        ownerId,
        requesterId,
        reservationId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Reservation');
    helper.add(
      'groups',
      groups,
    );
    helper.add(
      'instances',
      instances,
    );
    helper.add(
      'ownerId',
      ownerId,
    );
    helper.add(
      'requesterId',
      requesterId,
    );
    helper.add(
      'reservationId',
      reservationId,
    );
    return helper.toString();
  }
}

class ReservationEc2QuerySerializer
    extends _i5.StructuredSmithySerializer<Reservation> {
  const ReservationEc2QuerySerializer() : super('Reservation');

  @override
  Iterable<Type> get types => const [
        Reservation,
        _$Reservation,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  Reservation deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReservationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'groupSet':
          result.groups.replace((const _i5.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i5.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(_i2.GroupIdentifier)],
            ),
          ) as _i4.BuiltList<_i2.GroupIdentifier>));
        case 'instancesSet':
          result.instances.replace((const _i5.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i5.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(_i3.Instance)],
            ),
          ) as _i4.BuiltList<_i3.Instance>));
        case 'ownerId':
          result.ownerId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'requesterId':
          result.requesterId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'reservationId':
          result.reservationId = (serializers.deserialize(
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
    Reservation object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i5.XmlElementName(
        'ReservationResponse',
        _i5.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final Reservation(
      :groups,
      :instances,
      :ownerId,
      :requesterId,
      :reservationId
    ) = object;
    if (groups != null) {
      result$
        ..add(const _i5.XmlElementName('GroupSet'))
        ..add(const _i5.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i5.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          groups,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i2.GroupIdentifier)],
          ),
        ));
    }
    if (instances != null) {
      result$
        ..add(const _i5.XmlElementName('InstancesSet'))
        ..add(const _i5.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i5.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          instances,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i3.Instance)],
          ),
        ));
    }
    if (ownerId != null) {
      result$
        ..add(const _i5.XmlElementName('OwnerId'))
        ..add(serializers.serialize(
          ownerId,
          specifiedType: const FullType(String),
        ));
    }
    if (requesterId != null) {
      result$
        ..add(const _i5.XmlElementName('RequesterId'))
        ..add(serializers.serialize(
          requesterId,
          specifiedType: const FullType(String),
        ));
    }
    if (reservationId != null) {
      result$
        ..add(const _i5.XmlElementName('ReservationId'))
        ..add(serializers.serialize(
          reservationId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
