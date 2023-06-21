// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.get_network_insights_access_scope_content_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/network_insights_access_scope_content.dart'
    as _i2;

part 'get_network_insights_access_scope_content_result.g.dart';

abstract class GetNetworkInsightsAccessScopeContentResult
    with
        _i1.AWSEquatable<GetNetworkInsightsAccessScopeContentResult>
    implements
        Built<GetNetworkInsightsAccessScopeContentResult,
            GetNetworkInsightsAccessScopeContentResultBuilder> {
  factory GetNetworkInsightsAccessScopeContentResult(
      {_i2.NetworkInsightsAccessScopeContent?
          networkInsightsAccessScopeContent}) {
    return _$GetNetworkInsightsAccessScopeContentResult._(
        networkInsightsAccessScopeContent: networkInsightsAccessScopeContent);
  }

  factory GetNetworkInsightsAccessScopeContentResult.build(
      [void Function(GetNetworkInsightsAccessScopeContentResultBuilder)
          updates]) = _$GetNetworkInsightsAccessScopeContentResult;

  const GetNetworkInsightsAccessScopeContentResult._();

  /// Constructs a [GetNetworkInsightsAccessScopeContentResult] from a [payload] and [response].
  factory GetNetworkInsightsAccessScopeContentResult.fromResponse(
    GetNetworkInsightsAccessScopeContentResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    GetNetworkInsightsAccessScopeContentResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetNetworkInsightsAccessScopeContentResultBuilder b) {}

  /// The Network Access Scope content.
  _i2.NetworkInsightsAccessScopeContent? get networkInsightsAccessScopeContent;
  @override
  List<Object?> get props => [networkInsightsAccessScopeContent];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'GetNetworkInsightsAccessScopeContentResult');
    helper.add(
      'networkInsightsAccessScopeContent',
      networkInsightsAccessScopeContent,
    );
    return helper.toString();
  }
}

class GetNetworkInsightsAccessScopeContentResultEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<GetNetworkInsightsAccessScopeContentResult> {
  const GetNetworkInsightsAccessScopeContentResultEc2QuerySerializer()
      : super('GetNetworkInsightsAccessScopeContentResult');

  @override
  Iterable<Type> get types => const [
        GetNetworkInsightsAccessScopeContentResult,
        _$GetNetworkInsightsAccessScopeContentResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetNetworkInsightsAccessScopeContentResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetNetworkInsightsAccessScopeContentResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'networkInsightsAccessScopeContent':
          result.networkInsightsAccessScopeContent
              .replace((serializers.deserialize(
            value,
            specifiedType:
                const FullType(_i2.NetworkInsightsAccessScopeContent),
          ) as _i2.NetworkInsightsAccessScopeContent));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetNetworkInsightsAccessScopeContentResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'GetNetworkInsightsAccessScopeContentResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final GetNetworkInsightsAccessScopeContentResult(
      :networkInsightsAccessScopeContent
    ) = object;
    if (networkInsightsAccessScopeContent != null) {
      result$
        ..add(const _i3.XmlElementName('NetworkInsightsAccessScopeContent'))
        ..add(serializers.serialize(
          networkInsightsAccessScopeContent,
          specifiedType: const FullType(_i2.NetworkInsightsAccessScopeContent),
        ));
    }
    return result$;
  }
}
