// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.list_images_in_recycle_bin_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/image_recycle_bin_info.dart'
    as _i2;

part 'list_images_in_recycle_bin_result.g.dart';

abstract class ListImagesInRecycleBinResult
    with
        _i1.AWSEquatable<ListImagesInRecycleBinResult>
    implements
        Built<ListImagesInRecycleBinResult,
            ListImagesInRecycleBinResultBuilder> {
  factory ListImagesInRecycleBinResult({
    List<_i2.ImageRecycleBinInfo>? images,
    String? nextToken,
  }) {
    return _$ListImagesInRecycleBinResult._(
      images: images == null ? null : _i3.BuiltList(images),
      nextToken: nextToken,
    );
  }

  factory ListImagesInRecycleBinResult.build(
          [void Function(ListImagesInRecycleBinResultBuilder) updates]) =
      _$ListImagesInRecycleBinResult;

  const ListImagesInRecycleBinResult._();

  /// Constructs a [ListImagesInRecycleBinResult] from a [payload] and [response].
  factory ListImagesInRecycleBinResult.fromResponse(
    ListImagesInRecycleBinResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    ListImagesInRecycleBinResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListImagesInRecycleBinResultBuilder b) {}

  /// Information about the AMIs.
  _i3.BuiltList<_i2.ImageRecycleBinInfo>? get images;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        images,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ListImagesInRecycleBinResult');
    helper.add(
      'images',
      images,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class ListImagesInRecycleBinResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<ListImagesInRecycleBinResult> {
  const ListImagesInRecycleBinResultEc2QuerySerializer()
      : super('ListImagesInRecycleBinResult');

  @override
  Iterable<Type> get types => const [
        ListImagesInRecycleBinResult,
        _$ListImagesInRecycleBinResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ListImagesInRecycleBinResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListImagesInRecycleBinResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'imageSet':
          result.images.replace((const _i4.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i4.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(_i2.ImageRecycleBinInfo)],
            ),
          ) as _i3.BuiltList<_i2.ImageRecycleBinInfo>));
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
    ListImagesInRecycleBinResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i4.XmlElementName(
        'ListImagesInRecycleBinResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ListImagesInRecycleBinResult(:images, :nextToken) = object;
    if (images != null) {
      result$
        ..add(const _i4.XmlElementName('ImageSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          images,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.ImageRecycleBinInfo)],
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
