// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.api_gateway.model.get_authorizers_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'get_authorizers_request.g.dart';

/// Request to describe an existing Authorizers resource.
abstract class GetAuthorizersRequest
    with
        _i1.HttpInput<GetAuthorizersRequestPayload>,
        _i2.AWSEquatable<GetAuthorizersRequest>
    implements
        Built<GetAuthorizersRequest, GetAuthorizersRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<GetAuthorizersRequestPayload> {
  /// Request to describe an existing Authorizers resource.
  factory GetAuthorizersRequest({
    required String restApiId,
    String? position,
    int? limit,
  }) {
    return _$GetAuthorizersRequest._(
      restApiId: restApiId,
      position: position,
      limit: limit,
    );
  }

  /// Request to describe an existing Authorizers resource.
  factory GetAuthorizersRequest.build(
          [void Function(GetAuthorizersRequestBuilder) updates]) =
      _$GetAuthorizersRequest;

  const GetAuthorizersRequest._();

  factory GetAuthorizersRequest.fromRequest(
    GetAuthorizersRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      GetAuthorizersRequest.build((b) {
        if (request.queryParameters['position'] != null) {
          b.position = request.queryParameters['position']!;
        }
        if (request.queryParameters['limit'] != null) {
          b.limit = int.parse(request.queryParameters['limit']!);
        }
        if (labels['restApiId'] != null) {
          b.restApiId = labels['restApiId']!;
        }
      });

  static const List<_i1.SmithySerializer<GetAuthorizersRequestPayload>>
      serializers = [GetAuthorizersRequestRestJson1Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetAuthorizersRequestBuilder b) {}

  /// The string identifier of the associated RestApi.
  String get restApiId;

  /// The current pagination position in the paged result set.
  String? get position;

  /// The maximum number of returned results per page. The default value is 25 and the maximum value is 500.
  int? get limit;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'restApiId':
        return restApiId;
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  GetAuthorizersRequestPayload getPayload() => GetAuthorizersRequestPayload();
  @override
  List<Object?> get props => [
        restApiId,
        position,
        limit,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetAuthorizersRequest')
      ..add(
        'restApiId',
        restApiId,
      )
      ..add(
        'position',
        position,
      )
      ..add(
        'limit',
        limit,
      );
    return helper.toString();
  }
}

@_i3.internal
abstract class GetAuthorizersRequestPayload
    with
        _i2.AWSEquatable<GetAuthorizersRequestPayload>
    implements
        Built<GetAuthorizersRequestPayload,
            GetAuthorizersRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory GetAuthorizersRequestPayload(
          [void Function(GetAuthorizersRequestPayloadBuilder) updates]) =
      _$GetAuthorizersRequestPayload;

  const GetAuthorizersRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetAuthorizersRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetAuthorizersRequestPayload');
    return helper.toString();
  }
}

class GetAuthorizersRequestRestJson1Serializer
    extends _i1.StructuredSmithySerializer<GetAuthorizersRequestPayload> {
  const GetAuthorizersRequestRestJson1Serializer()
      : super('GetAuthorizersRequest');

  @override
  Iterable<Type> get types => const [
        GetAuthorizersRequest,
        _$GetAuthorizersRequest,
        GetAuthorizersRequestPayload,
        _$GetAuthorizersRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  GetAuthorizersRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return GetAuthorizersRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetAuthorizersRequestPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
