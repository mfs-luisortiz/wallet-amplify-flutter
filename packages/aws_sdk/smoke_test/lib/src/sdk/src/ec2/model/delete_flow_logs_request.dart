// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.delete_flow_logs_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_flow_logs_request.g.dart';

abstract class DeleteFlowLogsRequest
    with
        _i1.HttpInput<DeleteFlowLogsRequest>,
        _i2.AWSEquatable<DeleteFlowLogsRequest>
    implements Built<DeleteFlowLogsRequest, DeleteFlowLogsRequestBuilder> {
  factory DeleteFlowLogsRequest({
    bool? dryRun,
    required List<String> flowLogIds,
  }) {
    dryRun ??= false;
    return _$DeleteFlowLogsRequest._(
      dryRun: dryRun,
      flowLogIds: _i3.BuiltList(flowLogIds),
    );
  }

  factory DeleteFlowLogsRequest.build(
          [void Function(DeleteFlowLogsRequestBuilder) updates]) =
      _$DeleteFlowLogsRequest;

  const DeleteFlowLogsRequest._();

  factory DeleteFlowLogsRequest.fromRequest(
    DeleteFlowLogsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DeleteFlowLogsRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteFlowLogsRequestBuilder b) {
    b.dryRun = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// One or more flow log IDs.
  ///
  /// Constraint: Maximum of 1000 flow log IDs.
  _i3.BuiltList<String> get flowLogIds;
  @override
  DeleteFlowLogsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        flowLogIds,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteFlowLogsRequest');
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'flowLogIds',
      flowLogIds,
    );
    return helper.toString();
  }
}

class DeleteFlowLogsRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DeleteFlowLogsRequest> {
  const DeleteFlowLogsRequestEc2QuerySerializer()
      : super('DeleteFlowLogsRequest');

  @override
  Iterable<Type> get types => const [
        DeleteFlowLogsRequest,
        _$DeleteFlowLogsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteFlowLogsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteFlowLogsRequestBuilder();
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
        case 'FlowLogId':
          result.flowLogIds.replace((const _i1.XmlBuiltListSerializer(
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
    final payload = (object as DeleteFlowLogsRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DeleteFlowLogsRequestResponse',
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
      ..add(const _i1.XmlElementName('FlowLogId'))
      ..add(const _i1.XmlBuiltListSerializer(
        memberName: 'item',
        indexer: _i1.XmlIndexer.ec2QueryList,
      ).serialize(
        serializers,
        payload.flowLogIds,
        specifiedType: const FullType.nullable(
          _i3.BuiltList,
          [FullType(String)],
        ),
      ));
    return result;
  }
}
