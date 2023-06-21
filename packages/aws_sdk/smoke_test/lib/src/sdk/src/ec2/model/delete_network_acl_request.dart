// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.delete_network_acl_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_network_acl_request.g.dart';

abstract class DeleteNetworkAclRequest
    with
        _i1.HttpInput<DeleteNetworkAclRequest>,
        _i2.AWSEquatable<DeleteNetworkAclRequest>
    implements Built<DeleteNetworkAclRequest, DeleteNetworkAclRequestBuilder> {
  factory DeleteNetworkAclRequest({
    bool? dryRun,
    required String networkAclId,
  }) {
    dryRun ??= false;
    return _$DeleteNetworkAclRequest._(
      dryRun: dryRun,
      networkAclId: networkAclId,
    );
  }

  factory DeleteNetworkAclRequest.build(
          [void Function(DeleteNetworkAclRequestBuilder) updates]) =
      _$DeleteNetworkAclRequest;

  const DeleteNetworkAclRequest._();

  factory DeleteNetworkAclRequest.fromRequest(
    DeleteNetworkAclRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DeleteNetworkAclRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteNetworkAclRequestBuilder b) {
    b.dryRun = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the network ACL.
  String get networkAclId;
  @override
  DeleteNetworkAclRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        networkAclId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteNetworkAclRequest');
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'networkAclId',
      networkAclId,
    );
    return helper.toString();
  }
}

class DeleteNetworkAclRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DeleteNetworkAclRequest> {
  const DeleteNetworkAclRequestEc2QuerySerializer()
      : super('DeleteNetworkAclRequest');

  @override
  Iterable<Type> get types => const [
        DeleteNetworkAclRequest,
        _$DeleteNetworkAclRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteNetworkAclRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteNetworkAclRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'dryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'networkAclId':
          result.networkAclId = (serializers.deserialize(
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
    DeleteNetworkAclRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DeleteNetworkAclRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DeleteNetworkAclRequest(:dryRun, :networkAclId) = object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    result$
      ..add(const _i1.XmlElementName('NetworkAclId'))
      ..add(serializers.serialize(
        networkAclId,
        specifiedType: const FullType(String),
      ));
    return result$;
  }
}
