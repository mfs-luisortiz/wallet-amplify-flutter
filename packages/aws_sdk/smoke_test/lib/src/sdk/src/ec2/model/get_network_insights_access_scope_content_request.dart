// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.get_network_insights_access_scope_content_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'get_network_insights_access_scope_content_request.g.dart';

abstract class GetNetworkInsightsAccessScopeContentRequest
    with
        _i1.HttpInput<GetNetworkInsightsAccessScopeContentRequest>,
        _i2.AWSEquatable<GetNetworkInsightsAccessScopeContentRequest>
    implements
        Built<GetNetworkInsightsAccessScopeContentRequest,
            GetNetworkInsightsAccessScopeContentRequestBuilder> {
  factory GetNetworkInsightsAccessScopeContentRequest({
    required String networkInsightsAccessScopeId,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$GetNetworkInsightsAccessScopeContentRequest._(
      networkInsightsAccessScopeId: networkInsightsAccessScopeId,
      dryRun: dryRun,
    );
  }

  factory GetNetworkInsightsAccessScopeContentRequest.build(
      [void Function(GetNetworkInsightsAccessScopeContentRequestBuilder)
          updates]) = _$GetNetworkInsightsAccessScopeContentRequest;

  const GetNetworkInsightsAccessScopeContentRequest._();

  factory GetNetworkInsightsAccessScopeContentRequest.fromRequest(
    GetNetworkInsightsAccessScopeContentRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    GetNetworkInsightsAccessScopeContentRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetNetworkInsightsAccessScopeContentRequestBuilder b) {
    b.dryRun = false;
  }

  /// The ID of the Network Access Scope.
  String get networkInsightsAccessScopeId;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  GetNetworkInsightsAccessScopeContentRequest getPayload() => this;
  @override
  List<Object?> get props => [
        networkInsightsAccessScopeId,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'GetNetworkInsightsAccessScopeContentRequest');
    helper.add(
      'networkInsightsAccessScopeId',
      networkInsightsAccessScopeId,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    return helper.toString();
  }
}

class GetNetworkInsightsAccessScopeContentRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<GetNetworkInsightsAccessScopeContentRequest> {
  const GetNetworkInsightsAccessScopeContentRequestEc2QuerySerializer()
      : super('GetNetworkInsightsAccessScopeContentRequest');

  @override
  Iterable<Type> get types => const [
        GetNetworkInsightsAccessScopeContentRequest,
        _$GetNetworkInsightsAccessScopeContentRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetNetworkInsightsAccessScopeContentRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetNetworkInsightsAccessScopeContentRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'NetworkInsightsAccessScopeId':
          result.networkInsightsAccessScopeId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetNetworkInsightsAccessScopeContentRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'GetNetworkInsightsAccessScopeContentRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final GetNetworkInsightsAccessScopeContentRequest(
      :networkInsightsAccessScopeId,
      :dryRun
    ) = object;
    result$
      ..add(const _i1.XmlElementName('NetworkInsightsAccessScopeId'))
      ..add(serializers.serialize(
        networkInsightsAccessScopeId,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
