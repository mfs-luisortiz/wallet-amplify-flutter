// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.describe_transit_gateway_vpc_attachments_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_vpc_attachment.dart'
    as _i2;

part 'describe_transit_gateway_vpc_attachments_result.g.dart';

abstract class DescribeTransitGatewayVpcAttachmentsResult
    with
        _i1.AWSEquatable<DescribeTransitGatewayVpcAttachmentsResult>
    implements
        Built<DescribeTransitGatewayVpcAttachmentsResult,
            DescribeTransitGatewayVpcAttachmentsResultBuilder> {
  factory DescribeTransitGatewayVpcAttachmentsResult({
    List<_i2.TransitGatewayVpcAttachment>? transitGatewayVpcAttachments,
    String? nextToken,
  }) {
    return _$DescribeTransitGatewayVpcAttachmentsResult._(
      transitGatewayVpcAttachments: transitGatewayVpcAttachments == null
          ? null
          : _i3.BuiltList(transitGatewayVpcAttachments),
      nextToken: nextToken,
    );
  }

  factory DescribeTransitGatewayVpcAttachmentsResult.build(
      [void Function(DescribeTransitGatewayVpcAttachmentsResultBuilder)
          updates]) = _$DescribeTransitGatewayVpcAttachmentsResult;

  const DescribeTransitGatewayVpcAttachmentsResult._();

  /// Constructs a [DescribeTransitGatewayVpcAttachmentsResult] from a [payload] and [response].
  factory DescribeTransitGatewayVpcAttachmentsResult.fromResponse(
    DescribeTransitGatewayVpcAttachmentsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeTransitGatewayVpcAttachmentsResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeTransitGatewayVpcAttachmentsResultBuilder b) {}

  /// Information about the VPC attachments.
  _i3.BuiltList<_i2.TransitGatewayVpcAttachment>?
      get transitGatewayVpcAttachments;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        transitGatewayVpcAttachments,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DescribeTransitGatewayVpcAttachmentsResult');
    helper.add(
      'transitGatewayVpcAttachments',
      transitGatewayVpcAttachments,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeTransitGatewayVpcAttachmentsResultEc2QuerySerializer extends _i4
    .StructuredSmithySerializer<DescribeTransitGatewayVpcAttachmentsResult> {
  const DescribeTransitGatewayVpcAttachmentsResultEc2QuerySerializer()
      : super('DescribeTransitGatewayVpcAttachmentsResult');

  @override
  Iterable<Type> get types => const [
        DescribeTransitGatewayVpcAttachmentsResult,
        _$DescribeTransitGatewayVpcAttachmentsResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeTransitGatewayVpcAttachmentsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeTransitGatewayVpcAttachmentsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'transitGatewayVpcAttachments':
          result.transitGatewayVpcAttachments
              .replace((const _i4.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i4.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(_i2.TransitGatewayVpcAttachment)],
            ),
          ) as _i3.BuiltList<_i2.TransitGatewayVpcAttachment>));
        case 'nextToken':
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
    DescribeTransitGatewayVpcAttachmentsResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i4.XmlElementName(
        'DescribeTransitGatewayVpcAttachmentsResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeTransitGatewayVpcAttachmentsResult(
      :transitGatewayVpcAttachments,
      :nextToken
    ) = object;
    if (transitGatewayVpcAttachments != null) {
      result$
        ..add(const _i4.XmlElementName('TransitGatewayVpcAttachments'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          transitGatewayVpcAttachments,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.TransitGatewayVpcAttachment)],
          ),
        ));
    }
    if (nextToken != null) {
      result$
        ..add(const _i4.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
