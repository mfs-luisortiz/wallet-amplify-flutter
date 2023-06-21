// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.get_ipam_pool_allocations_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart' as _i3;

part 'get_ipam_pool_allocations_request.g.dart';

abstract class GetIpamPoolAllocationsRequest
    with
        _i1.HttpInput<GetIpamPoolAllocationsRequest>,
        _i2.AWSEquatable<GetIpamPoolAllocationsRequest>
    implements
        Built<GetIpamPoolAllocationsRequest,
            GetIpamPoolAllocationsRequestBuilder> {
  factory GetIpamPoolAllocationsRequest({
    bool? dryRun,
    required String ipamPoolId,
    String? ipamPoolAllocationId,
    List<_i3.Filter>? filters,
    int? maxResults,
    String? nextToken,
  }) {
    dryRun ??= false;
    maxResults ??= 0;
    return _$GetIpamPoolAllocationsRequest._(
      dryRun: dryRun,
      ipamPoolId: ipamPoolId,
      ipamPoolAllocationId: ipamPoolAllocationId,
      filters: filters == null ? null : _i4.BuiltList(filters),
      maxResults: maxResults,
      nextToken: nextToken,
    );
  }

  factory GetIpamPoolAllocationsRequest.build(
          [void Function(GetIpamPoolAllocationsRequestBuilder) updates]) =
      _$GetIpamPoolAllocationsRequest;

  const GetIpamPoolAllocationsRequest._();

  factory GetIpamPoolAllocationsRequest.fromRequest(
    GetIpamPoolAllocationsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    GetIpamPoolAllocationsRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetIpamPoolAllocationsRequestBuilder b) {
    b.dryRun = false;
    b.maxResults = 0;
  }

  /// A check for whether you have the required permissions for the action without actually making the request and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the IPAM pool you want to see the allocations for.
  String get ipamPoolId;

  /// The ID of the allocation.
  String? get ipamPoolAllocationId;

  /// One or more filters for the request. For more information about filtering, see [Filtering CLI output](https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-filter.html).
  _i4.BuiltList<_i3.Filter>? get filters;

  /// The maximum number of results you would like returned per page.
  int get maxResults;

  /// The token for the next page of results.
  String? get nextToken;
  @override
  GetIpamPoolAllocationsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        ipamPoolId,
        ipamPoolAllocationId,
        filters,
        maxResults,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetIpamPoolAllocationsRequest');
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'ipamPoolId',
      ipamPoolId,
    );
    helper.add(
      'ipamPoolAllocationId',
      ipamPoolAllocationId,
    );
    helper.add(
      'filters',
      filters,
    );
    helper.add(
      'maxResults',
      maxResults,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class GetIpamPoolAllocationsRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<GetIpamPoolAllocationsRequest> {
  const GetIpamPoolAllocationsRequestEc2QuerySerializer()
      : super('GetIpamPoolAllocationsRequest');

  @override
  Iterable<Type> get types => const [
        GetIpamPoolAllocationsRequest,
        _$GetIpamPoolAllocationsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetIpamPoolAllocationsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetIpamPoolAllocationsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'IpamPoolId':
          result.ipamPoolId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'IpamPoolAllocationId':
          result.ipamPoolAllocationId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Filter':
          result.filters.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'Filter',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(_i3.Filter)],
            ),
          ) as _i4.BuiltList<_i3.Filter>));
        case 'MaxResults':
          result.maxResults = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'NextToken':
          result.nextToken = (serializers.deserialize(
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
    GetIpamPoolAllocationsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'GetIpamPoolAllocationsRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final GetIpamPoolAllocationsRequest(
      :dryRun,
      :ipamPoolId,
      :ipamPoolAllocationId,
      :filters,
      :maxResults,
      :nextToken
    ) = object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    result$
      ..add(const _i1.XmlElementName('IpamPoolId'))
      ..add(serializers.serialize(
        ipamPoolId,
        specifiedType: const FullType(String),
      ));
    if (ipamPoolAllocationId != null) {
      result$
        ..add(const _i1.XmlElementName('IpamPoolAllocationId'))
        ..add(serializers.serialize(
          ipamPoolAllocationId,
          specifiedType: const FullType(String),
        ));
    }
    if (filters != null) {
      result$
        ..add(const _i1.XmlElementName('Filter'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'Filter',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          filters,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i3.Filter)],
          ),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('MaxResults'))
      ..add(serializers.serialize(
        maxResults,
        specifiedType: const FullType(int),
      ));
    if (nextToken != null) {
      result$
        ..add(const _i1.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
