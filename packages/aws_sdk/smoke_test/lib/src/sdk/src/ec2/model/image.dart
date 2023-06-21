// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.image; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i16;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i17;
import 'package:smoke_test/src/sdk/src/ec2/model/architecture_values.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/block_device_mapping.dart'
    as _i7;
import 'package:smoke_test/src/sdk/src/ec2/model/boot_mode_values.dart' as _i13;
import 'package:smoke_test/src/sdk/src/ec2/model/device_type.dart' as _i9;
import 'package:smoke_test/src/sdk/src/ec2/model/hypervisor_type.dart' as _i8;
import 'package:smoke_test/src/sdk/src/ec2/model/image_state.dart' as _i6;
import 'package:smoke_test/src/sdk/src/ec2/model/image_type_values.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/imds_support_values.dart'
    as _i15;
import 'package:smoke_test/src/sdk/src/ec2/model/platform_values.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/product_code.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/state_reason.dart' as _i10;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i11;
import 'package:smoke_test/src/sdk/src/ec2/model/tpm_support_values.dart'
    as _i14;
import 'package:smoke_test/src/sdk/src/ec2/model/virtualization_type.dart'
    as _i12;

part 'image.g.dart';

/// Describes an image.
abstract class Image
    with _i1.AWSEquatable<Image>
    implements Built<Image, ImageBuilder> {
  /// Describes an image.
  factory Image({
    _i2.ArchitectureValues? architecture,
    String? creationDate,
    String? imageId,
    String? imageLocation,
    _i3.ImageTypeValues? imageType,
    bool? public,
    String? kernelId,
    String? ownerId,
    _i4.PlatformValues? platform,
    String? platformDetails,
    String? usageOperation,
    List<_i5.ProductCode>? productCodes,
    String? ramdiskId,
    _i6.ImageState? state,
    List<_i7.BlockDeviceMapping>? blockDeviceMappings,
    String? description,
    bool? enaSupport,
    _i8.HypervisorType? hypervisor,
    String? imageOwnerAlias,
    String? name,
    String? rootDeviceName,
    _i9.DeviceType? rootDeviceType,
    String? sriovNetSupport,
    _i10.StateReason? stateReason,
    List<_i11.Tag>? tags,
    _i12.VirtualizationType? virtualizationType,
    _i13.BootModeValues? bootMode,
    _i14.TpmSupportValues? tpmSupport,
    String? deprecationTime,
    _i15.ImdsSupportValues? imdsSupport,
  }) {
    public ??= false;
    enaSupport ??= false;
    return _$Image._(
      architecture: architecture,
      creationDate: creationDate,
      imageId: imageId,
      imageLocation: imageLocation,
      imageType: imageType,
      public: public,
      kernelId: kernelId,
      ownerId: ownerId,
      platform: platform,
      platformDetails: platformDetails,
      usageOperation: usageOperation,
      productCodes: productCodes == null ? null : _i16.BuiltList(productCodes),
      ramdiskId: ramdiskId,
      state: state,
      blockDeviceMappings: blockDeviceMappings == null
          ? null
          : _i16.BuiltList(blockDeviceMappings),
      description: description,
      enaSupport: enaSupport,
      hypervisor: hypervisor,
      imageOwnerAlias: imageOwnerAlias,
      name: name,
      rootDeviceName: rootDeviceName,
      rootDeviceType: rootDeviceType,
      sriovNetSupport: sriovNetSupport,
      stateReason: stateReason,
      tags: tags == null ? null : _i16.BuiltList(tags),
      virtualizationType: virtualizationType,
      bootMode: bootMode,
      tpmSupport: tpmSupport,
      deprecationTime: deprecationTime,
      imdsSupport: imdsSupport,
    );
  }

  /// Describes an image.
  factory Image.build([void Function(ImageBuilder) updates]) = _$Image;

  const Image._();

  static const List<_i17.SmithySerializer> serializers = [
    ImageEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ImageBuilder b) {
    b.public = false;
    b.enaSupport = false;
  }

  /// The architecture of the image.
  _i2.ArchitectureValues? get architecture;

  /// The date and time the image was created.
  String? get creationDate;

  /// The ID of the AMI.
  String? get imageId;

  /// The location of the AMI.
  String? get imageLocation;

  /// The type of image.
  _i3.ImageTypeValues? get imageType;

  /// Indicates whether the image has public launch permissions. The value is `true` if this image has public launch permissions or `false` if it has only implicit and explicit launch permissions.
  bool get public;

  /// The kernel associated with the image, if any. Only applicable for machine images.
  String? get kernelId;

  /// The ID of the Amazon Web Services account that owns the image.
  String? get ownerId;

  /// This value is set to `windows` for Windows AMIs; otherwise, it is blank.
  _i4.PlatformValues? get platform;

  /// The platform details associated with the billing code of the AMI. For more information, see [Understanding AMI billing](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-billing-info.html) in the _Amazon Elastic Compute Cloud User Guide_.
  String? get platformDetails;

  /// The operation of the Amazon EC2 instance and the billing code that is associated with the AMI. `usageOperation` corresponds to the [lineitem/Operation](https://docs.aws.amazon.com/cur/latest/userguide/Lineitem-columns.html#Lineitem-details-O-Operation) column on your Amazon Web Services Cost and Usage Report and in the [Amazon Web Services Price List API](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/price-changes.html). You can view these fields on the **Instances** or **AMIs** pages in the Amazon EC2 console, or in the responses that are returned by the [DescribeImages](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeImages.html) command in the Amazon EC2 API, or the [describe-images](https://docs.aws.amazon.com/cli/latest/reference/ec2/describe-images.html) command in the CLI.
  String? get usageOperation;

  /// Any product codes associated with the AMI.
  _i16.BuiltList<_i5.ProductCode>? get productCodes;

  /// The RAM disk associated with the image, if any. Only applicable for machine images.
  String? get ramdiskId;

  /// The current state of the AMI. If the state is `available`, the image is successfully registered and can be used to launch an instance.
  _i6.ImageState? get state;

  /// Any block device mapping entries.
  _i16.BuiltList<_i7.BlockDeviceMapping>? get blockDeviceMappings;

  /// The description of the AMI that was provided during image creation.
  String? get description;

  /// Specifies whether enhanced networking with ENA is enabled.
  bool get enaSupport;

  /// The hypervisor type of the image.
  _i8.HypervisorType? get hypervisor;

  /// The Amazon Web Services account alias (for example, `amazon`, `self`) or the Amazon Web Services account ID of the AMI owner.
  String? get imageOwnerAlias;

  /// The name of the AMI that was provided during image creation.
  String? get name;

  /// The device name of the root device volume (for example, `/dev/sda1`).
  String? get rootDeviceName;

  /// The type of root device used by the AMI. The AMI can use an Amazon EBS volume or an instance store volume.
  _i9.DeviceType? get rootDeviceType;

  /// Specifies whether enhanced networking with the Intel 82599 Virtual Function interface is enabled.
  String? get sriovNetSupport;

  /// The reason for the state change.
  _i10.StateReason? get stateReason;

  /// Any tags assigned to the image.
  _i16.BuiltList<_i11.Tag>? get tags;

  /// The type of virtualization of the AMI.
  _i12.VirtualizationType? get virtualizationType;

  /// The boot mode of the image. For more information, see [Boot modes](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-boot.html) in the _Amazon Elastic Compute Cloud User Guide_.
  _i13.BootModeValues? get bootMode;

  /// If the image is configured for NitroTPM support, the value is `v2.0`. For more information, see [NitroTPM](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/nitrotpm.html) in the _Amazon Elastic Compute Cloud User Guide_.
  _i14.TpmSupportValues? get tpmSupport;

  /// The date and time to deprecate the AMI, in UTC, in the following format: _YYYY_-_MM_-_DD_T_HH_:_MM_:_SS_Z. If you specified a value for seconds, Amazon EC2 rounds the seconds to the nearest minute.
  String? get deprecationTime;

  /// If `v2.0`, it indicates that IMDSv2 is specified in the AMI. Instances launched from this AMI will have `HttpTokens` automatically set to `required` so that, by default, the instance requires that IMDSv2 is used when requesting instance metadata. In addition, `HttpPutResponseHopLimit` is set to `2`. For more information, see [Configure the AMI](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/configuring-IMDS-new-instances.html#configure-IMDS-new-instances-ami-configuration) in the _Amazon Elastic Compute Cloud User Guide_.
  _i15.ImdsSupportValues? get imdsSupport;
  @override
  List<Object?> get props => [
        architecture,
        creationDate,
        imageId,
        imageLocation,
        imageType,
        public,
        kernelId,
        ownerId,
        platform,
        platformDetails,
        usageOperation,
        productCodes,
        ramdiskId,
        state,
        blockDeviceMappings,
        description,
        enaSupport,
        hypervisor,
        imageOwnerAlias,
        name,
        rootDeviceName,
        rootDeviceType,
        sriovNetSupport,
        stateReason,
        tags,
        virtualizationType,
        bootMode,
        tpmSupport,
        deprecationTime,
        imdsSupport,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Image');
    helper.add(
      'architecture',
      architecture,
    );
    helper.add(
      'creationDate',
      creationDate,
    );
    helper.add(
      'imageId',
      imageId,
    );
    helper.add(
      'imageLocation',
      imageLocation,
    );
    helper.add(
      'imageType',
      imageType,
    );
    helper.add(
      'public',
      public,
    );
    helper.add(
      'kernelId',
      kernelId,
    );
    helper.add(
      'ownerId',
      ownerId,
    );
    helper.add(
      'platform',
      platform,
    );
    helper.add(
      'platformDetails',
      platformDetails,
    );
    helper.add(
      'usageOperation',
      usageOperation,
    );
    helper.add(
      'productCodes',
      productCodes,
    );
    helper.add(
      'ramdiskId',
      ramdiskId,
    );
    helper.add(
      'state',
      state,
    );
    helper.add(
      'blockDeviceMappings',
      blockDeviceMappings,
    );
    helper.add(
      'description',
      description,
    );
    helper.add(
      'enaSupport',
      enaSupport,
    );
    helper.add(
      'hypervisor',
      hypervisor,
    );
    helper.add(
      'imageOwnerAlias',
      imageOwnerAlias,
    );
    helper.add(
      'name',
      name,
    );
    helper.add(
      'rootDeviceName',
      rootDeviceName,
    );
    helper.add(
      'rootDeviceType',
      rootDeviceType,
    );
    helper.add(
      'sriovNetSupport',
      sriovNetSupport,
    );
    helper.add(
      'stateReason',
      stateReason,
    );
    helper.add(
      'tags',
      tags,
    );
    helper.add(
      'virtualizationType',
      virtualizationType,
    );
    helper.add(
      'bootMode',
      bootMode,
    );
    helper.add(
      'tpmSupport',
      tpmSupport,
    );
    helper.add(
      'deprecationTime',
      deprecationTime,
    );
    helper.add(
      'imdsSupport',
      imdsSupport,
    );
    return helper.toString();
  }
}

class ImageEc2QuerySerializer extends _i17.StructuredSmithySerializer<Image> {
  const ImageEc2QuerySerializer() : super('Image');

  @override
  Iterable<Type> get types => const [
        Image,
        _$Image,
      ];
  @override
  Iterable<_i17.ShapeId> get supportedProtocols => const [
        _i17.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  Image deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ImageBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'architecture':
          result.architecture = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.ArchitectureValues),
          ) as _i2.ArchitectureValues);
        case 'creationDate':
          result.creationDate = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'imageId':
          result.imageId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'imageLocation':
          result.imageLocation = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'imageType':
          result.imageType = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.ImageTypeValues),
          ) as _i3.ImageTypeValues);
        case 'isPublic':
          result.public = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'kernelId':
          result.kernelId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'imageOwnerId':
          result.ownerId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'platform':
          result.platform = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.PlatformValues),
          ) as _i4.PlatformValues);
        case 'platformDetails':
          result.platformDetails = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'usageOperation':
          result.usageOperation = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'productCodes':
          result.productCodes.replace((const _i17.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i17.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i16.BuiltList,
              [FullType(_i5.ProductCode)],
            ),
          ) as _i16.BuiltList<_i5.ProductCode>));
        case 'ramdiskId':
          result.ramdiskId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'imageState':
          result.state = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i6.ImageState),
          ) as _i6.ImageState);
        case 'blockDeviceMapping':
          result.blockDeviceMappings.replace((const _i17.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i17.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i16.BuiltList,
              [FullType(_i7.BlockDeviceMapping)],
            ),
          ) as _i16.BuiltList<_i7.BlockDeviceMapping>));
        case 'description':
          result.description = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'enaSupport':
          result.enaSupport = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'hypervisor':
          result.hypervisor = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i8.HypervisorType),
          ) as _i8.HypervisorType);
        case 'imageOwnerAlias':
          result.imageOwnerAlias = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'name':
          result.name = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'rootDeviceName':
          result.rootDeviceName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'rootDeviceType':
          result.rootDeviceType = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i9.DeviceType),
          ) as _i9.DeviceType);
        case 'sriovNetSupport':
          result.sriovNetSupport = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'stateReason':
          result.stateReason.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i10.StateReason),
          ) as _i10.StateReason));
        case 'tagSet':
          result.tags.replace((const _i17.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i17.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i16.BuiltList,
              [FullType(_i11.Tag)],
            ),
          ) as _i16.BuiltList<_i11.Tag>));
        case 'virtualizationType':
          result.virtualizationType = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i12.VirtualizationType),
          ) as _i12.VirtualizationType);
        case 'bootMode':
          result.bootMode = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i13.BootModeValues),
          ) as _i13.BootModeValues);
        case 'tpmSupport':
          result.tpmSupport = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i14.TpmSupportValues),
          ) as _i14.TpmSupportValues);
        case 'deprecationTime':
          result.deprecationTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'imdsSupport':
          result.imdsSupport = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i15.ImdsSupportValues),
          ) as _i15.ImdsSupportValues);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Image object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i17.XmlElementName(
        'ImageResponse',
        _i17.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final Image(
      :architecture,
      :creationDate,
      :imageId,
      :imageLocation,
      :imageType,
      :public,
      :kernelId,
      :ownerId,
      :platform,
      :platformDetails,
      :usageOperation,
      :productCodes,
      :ramdiskId,
      :state,
      :blockDeviceMappings,
      :description,
      :enaSupport,
      :hypervisor,
      :imageOwnerAlias,
      :name,
      :rootDeviceName,
      :rootDeviceType,
      :sriovNetSupport,
      :stateReason,
      :tags,
      :virtualizationType,
      :bootMode,
      :tpmSupport,
      :deprecationTime,
      :imdsSupport
    ) = object;
    if (architecture != null) {
      result$
        ..add(const _i17.XmlElementName('Architecture'))
        ..add(serializers.serialize(
          architecture,
          specifiedType: const FullType.nullable(_i2.ArchitectureValues),
        ));
    }
    if (creationDate != null) {
      result$
        ..add(const _i17.XmlElementName('CreationDate'))
        ..add(serializers.serialize(
          creationDate,
          specifiedType: const FullType(String),
        ));
    }
    if (imageId != null) {
      result$
        ..add(const _i17.XmlElementName('ImageId'))
        ..add(serializers.serialize(
          imageId,
          specifiedType: const FullType(String),
        ));
    }
    if (imageLocation != null) {
      result$
        ..add(const _i17.XmlElementName('ImageLocation'))
        ..add(serializers.serialize(
          imageLocation,
          specifiedType: const FullType(String),
        ));
    }
    if (imageType != null) {
      result$
        ..add(const _i17.XmlElementName('ImageType'))
        ..add(serializers.serialize(
          imageType,
          specifiedType: const FullType.nullable(_i3.ImageTypeValues),
        ));
    }
    result$
      ..add(const _i17.XmlElementName('IsPublic'))
      ..add(serializers.serialize(
        public,
        specifiedType: const FullType(bool),
      ));
    if (kernelId != null) {
      result$
        ..add(const _i17.XmlElementName('KernelId'))
        ..add(serializers.serialize(
          kernelId,
          specifiedType: const FullType(String),
        ));
    }
    if (ownerId != null) {
      result$
        ..add(const _i17.XmlElementName('ImageOwnerId'))
        ..add(serializers.serialize(
          ownerId,
          specifiedType: const FullType(String),
        ));
    }
    if (platform != null) {
      result$
        ..add(const _i17.XmlElementName('Platform'))
        ..add(serializers.serialize(
          platform,
          specifiedType: const FullType.nullable(_i4.PlatformValues),
        ));
    }
    if (platformDetails != null) {
      result$
        ..add(const _i17.XmlElementName('PlatformDetails'))
        ..add(serializers.serialize(
          platformDetails,
          specifiedType: const FullType(String),
        ));
    }
    if (usageOperation != null) {
      result$
        ..add(const _i17.XmlElementName('UsageOperation'))
        ..add(serializers.serialize(
          usageOperation,
          specifiedType: const FullType(String),
        ));
    }
    if (productCodes != null) {
      result$
        ..add(const _i17.XmlElementName('ProductCodes'))
        ..add(const _i17.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i17.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          productCodes,
          specifiedType: const FullType.nullable(
            _i16.BuiltList,
            [FullType(_i5.ProductCode)],
          ),
        ));
    }
    if (ramdiskId != null) {
      result$
        ..add(const _i17.XmlElementName('RamdiskId'))
        ..add(serializers.serialize(
          ramdiskId,
          specifiedType: const FullType(String),
        ));
    }
    if (state != null) {
      result$
        ..add(const _i17.XmlElementName('ImageState'))
        ..add(serializers.serialize(
          state,
          specifiedType: const FullType.nullable(_i6.ImageState),
        ));
    }
    if (blockDeviceMappings != null) {
      result$
        ..add(const _i17.XmlElementName('BlockDeviceMapping'))
        ..add(const _i17.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i17.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          blockDeviceMappings,
          specifiedType: const FullType.nullable(
            _i16.BuiltList,
            [FullType(_i7.BlockDeviceMapping)],
          ),
        ));
    }
    if (description != null) {
      result$
        ..add(const _i17.XmlElementName('Description'))
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i17.XmlElementName('EnaSupport'))
      ..add(serializers.serialize(
        enaSupport,
        specifiedType: const FullType(bool),
      ));
    if (hypervisor != null) {
      result$
        ..add(const _i17.XmlElementName('Hypervisor'))
        ..add(serializers.serialize(
          hypervisor,
          specifiedType: const FullType.nullable(_i8.HypervisorType),
        ));
    }
    if (imageOwnerAlias != null) {
      result$
        ..add(const _i17.XmlElementName('ImageOwnerAlias'))
        ..add(serializers.serialize(
          imageOwnerAlias,
          specifiedType: const FullType(String),
        ));
    }
    if (name != null) {
      result$
        ..add(const _i17.XmlElementName('Name'))
        ..add(serializers.serialize(
          name,
          specifiedType: const FullType(String),
        ));
    }
    if (rootDeviceName != null) {
      result$
        ..add(const _i17.XmlElementName('RootDeviceName'))
        ..add(serializers.serialize(
          rootDeviceName,
          specifiedType: const FullType(String),
        ));
    }
    if (rootDeviceType != null) {
      result$
        ..add(const _i17.XmlElementName('RootDeviceType'))
        ..add(serializers.serialize(
          rootDeviceType,
          specifiedType: const FullType.nullable(_i9.DeviceType),
        ));
    }
    if (sriovNetSupport != null) {
      result$
        ..add(const _i17.XmlElementName('SriovNetSupport'))
        ..add(serializers.serialize(
          sriovNetSupport,
          specifiedType: const FullType(String),
        ));
    }
    if (stateReason != null) {
      result$
        ..add(const _i17.XmlElementName('StateReason'))
        ..add(serializers.serialize(
          stateReason,
          specifiedType: const FullType(_i10.StateReason),
        ));
    }
    if (tags != null) {
      result$
        ..add(const _i17.XmlElementName('TagSet'))
        ..add(const _i17.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i17.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          tags,
          specifiedType: const FullType.nullable(
            _i16.BuiltList,
            [FullType(_i11.Tag)],
          ),
        ));
    }
    if (virtualizationType != null) {
      result$
        ..add(const _i17.XmlElementName('VirtualizationType'))
        ..add(serializers.serialize(
          virtualizationType,
          specifiedType: const FullType.nullable(_i12.VirtualizationType),
        ));
    }
    if (bootMode != null) {
      result$
        ..add(const _i17.XmlElementName('BootMode'))
        ..add(serializers.serialize(
          bootMode,
          specifiedType: const FullType.nullable(_i13.BootModeValues),
        ));
    }
    if (tpmSupport != null) {
      result$
        ..add(const _i17.XmlElementName('TpmSupport'))
        ..add(serializers.serialize(
          tpmSupport,
          specifiedType: const FullType.nullable(_i14.TpmSupportValues),
        ));
    }
    if (deprecationTime != null) {
      result$
        ..add(const _i17.XmlElementName('DeprecationTime'))
        ..add(serializers.serialize(
          deprecationTime,
          specifiedType: const FullType(String),
        ));
    }
    if (imdsSupport != null) {
      result$
        ..add(const _i17.XmlElementName('ImdsSupport'))
        ..add(serializers.serialize(
          imdsSupport,
          specifiedType: const FullType.nullable(_i15.ImdsSupportValues),
        ));
    }
    return result$;
  }
}
