// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.snapshot_disk_container; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/user_bucket.dart' as _i2;

part 'snapshot_disk_container.g.dart';

/// The disk container object for the import snapshot request.
abstract class SnapshotDiskContainer
    with _i1.AWSEquatable<SnapshotDiskContainer>
    implements Built<SnapshotDiskContainer, SnapshotDiskContainerBuilder> {
  /// The disk container object for the import snapshot request.
  factory SnapshotDiskContainer({
    String? description,
    String? format,
    String? url,
    _i2.UserBucket? userBucket,
  }) {
    return _$SnapshotDiskContainer._(
      description: description,
      format: format,
      url: url,
      userBucket: userBucket,
    );
  }

  /// The disk container object for the import snapshot request.
  factory SnapshotDiskContainer.build(
          [void Function(SnapshotDiskContainerBuilder) updates]) =
      _$SnapshotDiskContainer;

  const SnapshotDiskContainer._();

  static const List<_i3.SmithySerializer> serializers = [
    SnapshotDiskContainerEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SnapshotDiskContainerBuilder b) {}

  /// The description of the disk image being imported.
  String? get description;

  /// The format of the disk image being imported.
  ///
  /// Valid values: `VHD` | `VMDK` | `RAW`
  String? get format;

  /// The URL to the Amazon S3-based disk image being imported. It can either be a https URL (https://..) or an Amazon S3 URL (s3://..).
  String? get url;

  /// The Amazon S3 bucket for the disk image.
  _i2.UserBucket? get userBucket;
  @override
  List<Object?> get props => [
        description,
        format,
        url,
        userBucket,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SnapshotDiskContainer');
    helper.add(
      'description',
      description,
    );
    helper.add(
      'format',
      format,
    );
    helper.add(
      'url',
      url,
    );
    helper.add(
      'userBucket',
      userBucket,
    );
    return helper.toString();
  }
}

class SnapshotDiskContainerEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<SnapshotDiskContainer> {
  const SnapshotDiskContainerEc2QuerySerializer()
      : super('SnapshotDiskContainer');

  @override
  Iterable<Type> get types => const [
        SnapshotDiskContainer,
        _$SnapshotDiskContainer,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  SnapshotDiskContainer deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SnapshotDiskContainerBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Description':
          result.description = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Format':
          result.format = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Url':
          result.url = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'UserBucket':
          result.userBucket.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.UserBucket),
          ) as _i2.UserBucket));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    SnapshotDiskContainer object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'SnapshotDiskContainerResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final SnapshotDiskContainer(:description, :format, :url, :userBucket) =
        object;
    if (description != null) {
      result$
        ..add(const _i3.XmlElementName('Description'))
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(String),
        ));
    }
    if (format != null) {
      result$
        ..add(const _i3.XmlElementName('Format'))
        ..add(serializers.serialize(
          format,
          specifiedType: const FullType(String),
        ));
    }
    if (url != null) {
      result$
        ..add(const _i3.XmlElementName('Url'))
        ..add(serializers.serialize(
          url,
          specifiedType: const FullType(String),
        ));
    }
    if (userBucket != null) {
      result$
        ..add(const _i3.XmlElementName('UserBucket'))
        ..add(serializers.serialize(
          userBucket,
          specifiedType: const FullType(_i2.UserBucket),
        ));
    }
    return result$;
  }
}
