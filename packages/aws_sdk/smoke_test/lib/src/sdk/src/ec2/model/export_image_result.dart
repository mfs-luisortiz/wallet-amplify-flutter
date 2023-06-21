// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.export_image_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i6;
import 'package:smoke_test/src/sdk/src/ec2/model/disk_image_format.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/export_task_s3_location.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i4;

part 'export_image_result.g.dart';

abstract class ExportImageResult
    with _i1.AWSEquatable<ExportImageResult>
    implements Built<ExportImageResult, ExportImageResultBuilder> {
  factory ExportImageResult({
    String? description,
    _i2.DiskImageFormat? diskImageFormat,
    String? exportImageTaskId,
    String? imageId,
    String? roleName,
    String? progress,
    _i3.ExportTaskS3Location? s3ExportLocation,
    String? status,
    String? statusMessage,
    List<_i4.Tag>? tags,
  }) {
    return _$ExportImageResult._(
      description: description,
      diskImageFormat: diskImageFormat,
      exportImageTaskId: exportImageTaskId,
      imageId: imageId,
      roleName: roleName,
      progress: progress,
      s3ExportLocation: s3ExportLocation,
      status: status,
      statusMessage: statusMessage,
      tags: tags == null ? null : _i5.BuiltList(tags),
    );
  }

  factory ExportImageResult.build(
      [void Function(ExportImageResultBuilder) updates]) = _$ExportImageResult;

  const ExportImageResult._();

  /// Constructs a [ExportImageResult] from a [payload] and [response].
  factory ExportImageResult.fromResponse(
    ExportImageResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i6.SmithySerializer> serializers = [
    ExportImageResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ExportImageResultBuilder b) {}

  /// A description of the image being exported.
  String? get description;

  /// The disk image format for the exported image.
  _i2.DiskImageFormat? get diskImageFormat;

  /// The ID of the export image task.
  String? get exportImageTaskId;

  /// The ID of the image.
  String? get imageId;

  /// The name of the role that grants VM Import/Export permission to export images to your Amazon S3 bucket.
  String? get roleName;

  /// The percent complete of the export image task.
  String? get progress;

  /// Information about the destination Amazon S3 bucket.
  _i3.ExportTaskS3Location? get s3ExportLocation;

  /// The status of the export image task. The possible values are `active`, `completed`, `deleting`, and `deleted`.
  String? get status;

  /// The status message for the export image task.
  String? get statusMessage;

  /// Any tags assigned to the export image task.
  _i5.BuiltList<_i4.Tag>? get tags;
  @override
  List<Object?> get props => [
        description,
        diskImageFormat,
        exportImageTaskId,
        imageId,
        roleName,
        progress,
        s3ExportLocation,
        status,
        statusMessage,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ExportImageResult');
    helper.add(
      'description',
      description,
    );
    helper.add(
      'diskImageFormat',
      diskImageFormat,
    );
    helper.add(
      'exportImageTaskId',
      exportImageTaskId,
    );
    helper.add(
      'imageId',
      imageId,
    );
    helper.add(
      'roleName',
      roleName,
    );
    helper.add(
      'progress',
      progress,
    );
    helper.add(
      's3ExportLocation',
      s3ExportLocation,
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
      'tags',
      tags,
    );
    return helper.toString();
  }
}

class ExportImageResultEc2QuerySerializer
    extends _i6.StructuredSmithySerializer<ExportImageResult> {
  const ExportImageResultEc2QuerySerializer() : super('ExportImageResult');

  @override
  Iterable<Type> get types => const [
        ExportImageResult,
        _$ExportImageResult,
      ];
  @override
  Iterable<_i6.ShapeId> get supportedProtocols => const [
        _i6.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ExportImageResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExportImageResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'description':
          result.description = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'diskImageFormat':
          result.diskImageFormat = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.DiskImageFormat),
          ) as _i2.DiskImageFormat);
        case 'exportImageTaskId':
          result.exportImageTaskId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'imageId':
          result.imageId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'roleName':
          result.roleName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'progress':
          result.progress = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 's3ExportLocation':
          result.s3ExportLocation.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.ExportTaskS3Location),
          ) as _i3.ExportTaskS3Location));
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
        case 'tagSet':
          result.tags.replace((const _i6.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i6.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i5.BuiltList,
              [FullType(_i4.Tag)],
            ),
          ) as _i5.BuiltList<_i4.Tag>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ExportImageResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i6.XmlElementName(
        'ExportImageResultResponse',
        _i6.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ExportImageResult(
      :description,
      :diskImageFormat,
      :exportImageTaskId,
      :imageId,
      :roleName,
      :progress,
      :s3ExportLocation,
      :status,
      :statusMessage,
      :tags
    ) = object;
    if (description != null) {
      result$
        ..add(const _i6.XmlElementName('Description'))
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(String),
        ));
    }
    if (diskImageFormat != null) {
      result$
        ..add(const _i6.XmlElementName('DiskImageFormat'))
        ..add(serializers.serialize(
          diskImageFormat,
          specifiedType: const FullType.nullable(_i2.DiskImageFormat),
        ));
    }
    if (exportImageTaskId != null) {
      result$
        ..add(const _i6.XmlElementName('ExportImageTaskId'))
        ..add(serializers.serialize(
          exportImageTaskId,
          specifiedType: const FullType(String),
        ));
    }
    if (imageId != null) {
      result$
        ..add(const _i6.XmlElementName('ImageId'))
        ..add(serializers.serialize(
          imageId,
          specifiedType: const FullType(String),
        ));
    }
    if (roleName != null) {
      result$
        ..add(const _i6.XmlElementName('RoleName'))
        ..add(serializers.serialize(
          roleName,
          specifiedType: const FullType(String),
        ));
    }
    if (progress != null) {
      result$
        ..add(const _i6.XmlElementName('Progress'))
        ..add(serializers.serialize(
          progress,
          specifiedType: const FullType(String),
        ));
    }
    if (s3ExportLocation != null) {
      result$
        ..add(const _i6.XmlElementName('S3ExportLocation'))
        ..add(serializers.serialize(
          s3ExportLocation,
          specifiedType: const FullType(_i3.ExportTaskS3Location),
        ));
    }
    if (status != null) {
      result$
        ..add(const _i6.XmlElementName('Status'))
        ..add(serializers.serialize(
          status,
          specifiedType: const FullType(String),
        ));
    }
    if (statusMessage != null) {
      result$
        ..add(const _i6.XmlElementName('StatusMessage'))
        ..add(serializers.serialize(
          statusMessage,
          specifiedType: const FullType(String),
        ));
    }
    if (tags != null) {
      result$
        ..add(const _i6.XmlElementName('TagSet'))
        ..add(const _i6.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i6.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          tags,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(_i4.Tag)],
          ),
        ));
    }
    return result$;
  }
}
