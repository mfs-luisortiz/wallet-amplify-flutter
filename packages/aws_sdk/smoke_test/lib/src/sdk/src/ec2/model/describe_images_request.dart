// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_images_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart' as _i3;

part 'describe_images_request.g.dart';

abstract class DescribeImagesRequest
    with
        _i1.HttpInput<DescribeImagesRequest>,
        _i2.AWSEquatable<DescribeImagesRequest>
    implements Built<DescribeImagesRequest, DescribeImagesRequestBuilder> {
  factory DescribeImagesRequest({
    List<String>? executableUsers,
    List<_i3.Filter>? filters,
    List<String>? imageIds,
    List<String>? owners,
    bool? includeDeprecated,
    bool? dryRun,
  }) {
    includeDeprecated ??= false;
    dryRun ??= false;
    return _$DescribeImagesRequest._(
      executableUsers:
          executableUsers == null ? null : _i4.BuiltList(executableUsers),
      filters: filters == null ? null : _i4.BuiltList(filters),
      imageIds: imageIds == null ? null : _i4.BuiltList(imageIds),
      owners: owners == null ? null : _i4.BuiltList(owners),
      includeDeprecated: includeDeprecated,
      dryRun: dryRun,
    );
  }

  factory DescribeImagesRequest.build(
          [void Function(DescribeImagesRequestBuilder) updates]) =
      _$DescribeImagesRequest;

  const DescribeImagesRequest._();

  factory DescribeImagesRequest.fromRequest(
    DescribeImagesRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DescribeImagesRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeImagesRequestBuilder b) {
    b.includeDeprecated = false;
    b.dryRun = false;
  }

  /// Scopes the images by users with explicit launch permissions. Specify an Amazon Web Services account ID, `self` (the sender of the request), or `all` (public AMIs).
  ///
  /// *   If you specify an Amazon Web Services account ID that is not your own, only AMIs shared with that specific Amazon Web Services account ID are returned. However, AMIs that are shared with the account’s organization or organizational unit (OU) are not returned.
  ///
  /// *   If you specify `self` or your own Amazon Web Services account ID, AMIs shared with your account are returned. In addition, AMIs that are shared with the organization or OU of which you are member are also returned.
  ///
  /// *   If you specify `all`, all public AMIs are returned.
  _i4.BuiltList<String>? get executableUsers;

  /// The filters.
  ///
  /// *   `architecture` \- The image architecture (`i386` | `x86_64` | `arm64`).
  ///
  /// *   `block-device-mapping.delete-on-termination` \- A Boolean value that indicates whether the Amazon EBS volume is deleted on instance termination.
  ///
  /// *   `block-device-mapping.device-name` \- The device name specified in the block device mapping (for example, `/dev/sdh` or `xvdh`).
  ///
  /// *   `block-device-mapping.snapshot-id` \- The ID of the snapshot used for the Amazon EBS volume.
  ///
  /// *   `block-device-mapping.volume-size` \- The volume size of the Amazon EBS volume, in GiB.
  ///
  /// *   `block-device-mapping.volume-type` \- The volume type of the Amazon EBS volume (`io1` | `io2` | `gp2` | `gp3` | `sc1` | `st1` | `standard`).
  ///
  /// *   `block-device-mapping.encrypted` \- A Boolean that indicates whether the Amazon EBS volume is encrypted.
  ///
  /// *   `creation-date` \- The time when the image was created, in the ISO 8601 format in the UTC time zone (YYYY-MM-DDThh:mm:ss.sssZ), for example, `2021-09-29T11:04:43.305Z`. You can use a wildcard (`*`), for example, `2021-09-29T*`, which matches an entire day.
  ///
  /// *   `description` \- The description of the image (provided during image creation).
  ///
  /// *   `ena-support` \- A Boolean that indicates whether enhanced networking with ENA is enabled.
  ///
  /// *   `hypervisor` \- The hypervisor type (`ovm` | `xen`).
  ///
  /// *   `image-id` \- The ID of the image.
  ///
  /// *   `image-type` \- The image type (`machine` | `kernel` | `ramdisk`).
  ///
  /// *   `is-public` \- A Boolean that indicates whether the image is public.
  ///
  /// *   `kernel-id` \- The kernel ID.
  ///
  /// *   `manifest-location` \- The location of the image manifest.
  ///
  /// *   `name` \- The name of the AMI (provided during image creation).
  ///
  /// *   `owner-alias` \- The owner alias (`amazon` | `aws-marketplace`). The valid aliases are defined in an Amazon-maintained list. This is not the Amazon Web Services account alias that can be set using the IAM console. We recommend that you use the **Owner** request parameter instead of this filter.
  ///
  /// *   `owner-id` \- The Amazon Web Services account ID of the owner. We recommend that you use the **Owner** request parameter instead of this filter.
  ///
  /// *   `platform` \- The platform. To only list Windows-based AMIs, use `windows`.
  ///
  /// *   `product-code` \- The product code.
  ///
  /// *   `product-code.type` \- The type of the product code (`marketplace`).
  ///
  /// *   `ramdisk-id` \- The RAM disk ID.
  ///
  /// *   `root-device-name` \- The device name of the root device volume (for example, `/dev/sda1`).
  ///
  /// *   `root-device-type` \- The type of the root device volume (`ebs` | `instance-store`).
  ///
  /// *   `state` \- The state of the image (`available` | `pending` | `failed`).
  ///
  /// *   `state-reason-code` \- The reason code for the state change.
  ///
  /// *   `state-reason-message` \- The message for the state change.
  ///
  /// *   `sriov-net-support` \- A value of `simple` indicates that enhanced networking with the Intel 82599 VF interface is enabled.
  ///
  /// *   `tag`: \- The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `TeamA`, specify `tag:Owner` for the filter name and `TeamA` for the filter value.
  ///
  /// *   `tag-key` \- The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
  ///
  /// *   `virtualization-type` \- The virtualization type (`paravirtual` | `hvm`).
  _i4.BuiltList<_i3.Filter>? get filters;

  /// The image IDs.
  ///
  /// Default: Describes all images available to you.
  _i4.BuiltList<String>? get imageIds;

  /// Scopes the results to images with the specified owners. You can specify a combination of Amazon Web Services account IDs, `self`, `amazon`, and `aws-marketplace`. If you omit this parameter, the results include all images for which you have launch permissions, regardless of ownership.
  _i4.BuiltList<String>? get owners;

  /// Specifies whether to include deprecated AMIs.
  ///
  /// Default: No deprecated AMIs are included in the response.
  ///
  /// If you are the AMI owner, all deprecated AMIs appear in the response regardless of what you specify for this parameter.
  bool get includeDeprecated;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  DescribeImagesRequest getPayload() => this;
  @override
  List<Object?> get props => [
        executableUsers,
        filters,
        imageIds,
        owners,
        includeDeprecated,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeImagesRequest');
    helper.add(
      'executableUsers',
      executableUsers,
    );
    helper.add(
      'filters',
      filters,
    );
    helper.add(
      'imageIds',
      imageIds,
    );
    helper.add(
      'owners',
      owners,
    );
    helper.add(
      'includeDeprecated',
      includeDeprecated,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    return helper.toString();
  }
}

class DescribeImagesRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DescribeImagesRequest> {
  const DescribeImagesRequestEc2QuerySerializer()
      : super('DescribeImagesRequest');

  @override
  Iterable<Type> get types => const [
        DescribeImagesRequest,
        _$DescribeImagesRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeImagesRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeImagesRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'ExecutableBy':
          if (value != null) {
            result.executableUsers.replace((const _i1.XmlBuiltListSerializer(
              memberName: 'ExecutableBy',
              indexer: _i1.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(String)],
              ),
            ) as _i4.BuiltList<String>));
          }
          break;
        case 'Filter':
          if (value != null) {
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
          }
          break;
        case 'ImageId':
          if (value != null) {
            result.imageIds.replace((const _i1.XmlBuiltListSerializer(
              memberName: 'ImageId',
              indexer: _i1.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(String)],
              ),
            ) as _i4.BuiltList<String>));
          }
          break;
        case 'Owner':
          if (value != null) {
            result.owners.replace((const _i1.XmlBuiltListSerializer(
              memberName: 'Owner',
              indexer: _i1.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(String)],
              ),
            ) as _i4.BuiltList<String>));
          }
          break;
        case 'IncludeDeprecated':
          result.includeDeprecated = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'dryRun':
          result.dryRun = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
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
    final payload = (object as DescribeImagesRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DescribeImagesRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.executableUsers != null) {
      result
        ..add(const _i1.XmlElementName('ExecutableBy'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'ExecutableBy',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.executableUsers!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.filters != null) {
      result
        ..add(const _i1.XmlElementName('Filter'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'Filter',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.filters!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i3.Filter)],
          ),
        ));
    }
    if (payload.imageIds != null) {
      result
        ..add(const _i1.XmlElementName('ImageId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'ImageId',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.imageIds!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.owners != null) {
      result
        ..add(const _i1.XmlElementName('Owner'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'Owner',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.owners!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    result
      ..add(const _i1.XmlElementName('IncludeDeprecated'))
      ..add(serializers.serialize(
        payload.includeDeprecated,
        specifiedType: const FullType(bool),
      ));
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    return result;
  }
}
