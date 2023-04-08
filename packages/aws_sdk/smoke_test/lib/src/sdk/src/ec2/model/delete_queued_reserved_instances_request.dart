// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.delete_queued_reserved_instances_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_queued_reserved_instances_request.g.dart';

abstract class DeleteQueuedReservedInstancesRequest
    with
        _i1.HttpInput<DeleteQueuedReservedInstancesRequest>,
        _i2.AWSEquatable<DeleteQueuedReservedInstancesRequest>
    implements
        Built<DeleteQueuedReservedInstancesRequest,
            DeleteQueuedReservedInstancesRequestBuilder> {
  factory DeleteQueuedReservedInstancesRequest({
    bool? dryRun,
    required List<String> reservedInstancesIds,
  }) {
    dryRun ??= false;
    return _$DeleteQueuedReservedInstancesRequest._(
      dryRun: dryRun,
      reservedInstancesIds: _i3.BuiltList(reservedInstancesIds),
    );
  }

  factory DeleteQueuedReservedInstancesRequest.build(
      [void Function(DeleteQueuedReservedInstancesRequestBuilder)
          updates]) = _$DeleteQueuedReservedInstancesRequest;

  const DeleteQueuedReservedInstancesRequest._();

  factory DeleteQueuedReservedInstancesRequest.fromRequest(
    DeleteQueuedReservedInstancesRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DeleteQueuedReservedInstancesRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteQueuedReservedInstancesRequestBuilder b) {
    b.dryRun = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The IDs of the Reserved Instances.
  _i3.BuiltList<String> get reservedInstancesIds;
  @override
  DeleteQueuedReservedInstancesRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        reservedInstancesIds,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteQueuedReservedInstancesRequest');
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'reservedInstancesIds',
      reservedInstancesIds,
    );
    return helper.toString();
  }
}

class DeleteQueuedReservedInstancesRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<DeleteQueuedReservedInstancesRequest> {
  const DeleteQueuedReservedInstancesRequestEc2QuerySerializer()
      : super('DeleteQueuedReservedInstancesRequest');

  @override
  Iterable<Type> get types => const [
        DeleteQueuedReservedInstancesRequest,
        _$DeleteQueuedReservedInstancesRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteQueuedReservedInstancesRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteQueuedReservedInstancesRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'ReservedInstancesId':
          result.reservedInstancesIds.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as DeleteQueuedReservedInstancesRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DeleteQueuedReservedInstancesRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    result
      ..add(const _i1.XmlElementName('ReservedInstancesId'))
      ..add(const _i1.XmlBuiltListSerializer(
        memberName: 'item',
        indexer: _i1.XmlIndexer.ec2QueryList,
      ).serialize(
        serializers,
        payload.reservedInstancesIds,
        specifiedType: const FullType.nullable(
          _i3.BuiltList,
          [FullType(String)],
        ),
      ));
    return result;
  }
}
