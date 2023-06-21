// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.reserved_instances_modification; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/reserved_instances_id.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/reserved_instances_modification_result.dart'
    as _i2;

part 'reserved_instances_modification.g.dart';

/// Describes a Reserved Instance modification.
abstract class ReservedInstancesModification
    with
        _i1.AWSEquatable<ReservedInstancesModification>
    implements
        Built<ReservedInstancesModification,
            ReservedInstancesModificationBuilder> {
  /// Describes a Reserved Instance modification.
  factory ReservedInstancesModification({
    String? clientToken,
    DateTime? createDate,
    DateTime? effectiveDate,
    List<_i2.ReservedInstancesModificationResult>? modificationResults,
    List<_i3.ReservedInstancesId>? reservedInstancesIds,
    String? reservedInstancesModificationId,
    String? status,
    String? statusMessage,
    DateTime? updateDate,
  }) {
    return _$ReservedInstancesModification._(
      clientToken: clientToken,
      createDate: createDate,
      effectiveDate: effectiveDate,
      modificationResults: modificationResults == null
          ? null
          : _i4.BuiltList(modificationResults),
      reservedInstancesIds: reservedInstancesIds == null
          ? null
          : _i4.BuiltList(reservedInstancesIds),
      reservedInstancesModificationId: reservedInstancesModificationId,
      status: status,
      statusMessage: statusMessage,
      updateDate: updateDate,
    );
  }

  /// Describes a Reserved Instance modification.
  factory ReservedInstancesModification.build(
          [void Function(ReservedInstancesModificationBuilder) updates]) =
      _$ReservedInstancesModification;

  const ReservedInstancesModification._();

  static const List<_i5.SmithySerializer> serializers = [
    ReservedInstancesModificationEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ReservedInstancesModificationBuilder b) {}

  /// A unique, case-sensitive key supplied by the client to ensure that the request is idempotent. For more information, see [Ensuring Idempotency](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).
  String? get clientToken;

  /// The time when the modification request was created.
  DateTime? get createDate;

  /// The time for the modification to become effective.
  DateTime? get effectiveDate;

  /// Contains target configurations along with their corresponding new Reserved Instance IDs.
  _i4.BuiltList<_i2.ReservedInstancesModificationResult>?
      get modificationResults;

  /// The IDs of one or more Reserved Instances.
  _i4.BuiltList<_i3.ReservedInstancesId>? get reservedInstancesIds;

  /// A unique ID for the Reserved Instance modification.
  String? get reservedInstancesModificationId;

  /// The status of the Reserved Instances modification request.
  String? get status;

  /// The reason for the status.
  String? get statusMessage;

  /// The time when the modification request was last updated.
  DateTime? get updateDate;
  @override
  List<Object?> get props => [
        clientToken,
        createDate,
        effectiveDate,
        modificationResults,
        reservedInstancesIds,
        reservedInstancesModificationId,
        status,
        statusMessage,
        updateDate,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ReservedInstancesModification');
    helper.add(
      'clientToken',
      clientToken,
    );
    helper.add(
      'createDate',
      createDate,
    );
    helper.add(
      'effectiveDate',
      effectiveDate,
    );
    helper.add(
      'modificationResults',
      modificationResults,
    );
    helper.add(
      'reservedInstancesIds',
      reservedInstancesIds,
    );
    helper.add(
      'reservedInstancesModificationId',
      reservedInstancesModificationId,
    );
    helper.add(
      'status',
      status,
    );
    helper.add(
      'statusMessage',
      statusMessage,
    );
    helper.add(
      'updateDate',
      updateDate,
    );
    return helper.toString();
  }
}

class ReservedInstancesModificationEc2QuerySerializer
    extends _i5.StructuredSmithySerializer<ReservedInstancesModification> {
  const ReservedInstancesModificationEc2QuerySerializer()
      : super('ReservedInstancesModification');

  @override
  Iterable<Type> get types => const [
        ReservedInstancesModification,
        _$ReservedInstancesModification,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ReservedInstancesModification deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReservedInstancesModificationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'clientToken':
          result.clientToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'createDate':
          result.createDate = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'effectiveDate':
          result.effectiveDate = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'modificationResultSet':
          result.modificationResults.replace((const _i5.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i5.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(_i2.ReservedInstancesModificationResult)],
            ),
          ) as _i4.BuiltList<_i2.ReservedInstancesModificationResult>));
        case 'reservedInstancesSet':
          result.reservedInstancesIds.replace((const _i5.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i5.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(_i3.ReservedInstancesId)],
            ),
          ) as _i4.BuiltList<_i3.ReservedInstancesId>));
        case 'reservedInstancesModificationId':
          result.reservedInstancesModificationId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'status':
          result.status = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'statusMessage':
          result.statusMessage = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'updateDate':
          result.updateDate = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ReservedInstancesModification object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i5.XmlElementName(
        'ReservedInstancesModificationResponse',
        _i5.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ReservedInstancesModification(
      :clientToken,
      :createDate,
      :effectiveDate,
      :modificationResults,
      :reservedInstancesIds,
      :reservedInstancesModificationId,
      :status,
      :statusMessage,
      :updateDate
    ) = object;
    if (clientToken != null) {
      result$
        ..add(const _i5.XmlElementName('ClientToken'))
        ..add(serializers.serialize(
          clientToken,
          specifiedType: const FullType(String),
        ));
    }
    if (createDate != null) {
      result$
        ..add(const _i5.XmlElementName('CreateDate'))
        ..add(serializers.serialize(
          createDate,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (effectiveDate != null) {
      result$
        ..add(const _i5.XmlElementName('EffectiveDate'))
        ..add(serializers.serialize(
          effectiveDate,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (modificationResults != null) {
      result$
        ..add(const _i5.XmlElementName('ModificationResultSet'))
        ..add(const _i5.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i5.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          modificationResults,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i2.ReservedInstancesModificationResult)],
          ),
        ));
    }
    if (reservedInstancesIds != null) {
      result$
        ..add(const _i5.XmlElementName('ReservedInstancesSet'))
        ..add(const _i5.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i5.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          reservedInstancesIds,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i3.ReservedInstancesId)],
          ),
        ));
    }
    if (reservedInstancesModificationId != null) {
      result$
        ..add(const _i5.XmlElementName('ReservedInstancesModificationId'))
        ..add(serializers.serialize(
          reservedInstancesModificationId,
          specifiedType: const FullType(String),
        ));
    }
    if (status != null) {
      result$
        ..add(const _i5.XmlElementName('Status'))
        ..add(serializers.serialize(
          status,
          specifiedType: const FullType(String),
        ));
    }
    if (statusMessage != null) {
      result$
        ..add(const _i5.XmlElementName('StatusMessage'))
        ..add(serializers.serialize(
          statusMessage,
          specifiedType: const FullType(String),
        ));
    }
    if (updateDate != null) {
      result$
        ..add(const _i5.XmlElementName('UpdateDate'))
        ..add(serializers.serialize(
          updateDate,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    return result$;
  }
}
