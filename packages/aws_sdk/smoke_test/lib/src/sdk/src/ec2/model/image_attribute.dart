// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.image_attribute; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i7;
import 'package:smoke_test/src/sdk/src/ec2/model/attribute_value.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/block_device_mapping.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_permission.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/product_code.dart' as _i4;

part 'image_attribute.g.dart';

/// Describes an image attribute.
abstract class ImageAttribute
    with _i1.AWSEquatable<ImageAttribute>
    implements Built<ImageAttribute, ImageAttributeBuilder> {
  /// Describes an image attribute.
  factory ImageAttribute({
    List<_i2.BlockDeviceMapping>? blockDeviceMappings,
    String? imageId,
    List<_i3.LaunchPermission>? launchPermissions,
    List<_i4.ProductCode>? productCodes,
    _i5.AttributeValue? description,
    _i5.AttributeValue? kernelId,
    _i5.AttributeValue? ramdiskId,
    _i5.AttributeValue? sriovNetSupport,
    _i5.AttributeValue? bootMode,
    _i5.AttributeValue? tpmSupport,
    _i5.AttributeValue? uefiData,
    _i5.AttributeValue? lastLaunchedTime,
    _i5.AttributeValue? imdsSupport,
  }) {
    return _$ImageAttribute._(
      blockDeviceMappings: blockDeviceMappings == null
          ? null
          : _i6.BuiltList(blockDeviceMappings),
      imageId: imageId,
      launchPermissions:
          launchPermissions == null ? null : _i6.BuiltList(launchPermissions),
      productCodes: productCodes == null ? null : _i6.BuiltList(productCodes),
      description: description,
      kernelId: kernelId,
      ramdiskId: ramdiskId,
      sriovNetSupport: sriovNetSupport,
      bootMode: bootMode,
      tpmSupport: tpmSupport,
      uefiData: uefiData,
      lastLaunchedTime: lastLaunchedTime,
      imdsSupport: imdsSupport,
    );
  }

  /// Describes an image attribute.
  factory ImageAttribute.build([void Function(ImageAttributeBuilder) updates]) =
      _$ImageAttribute;

  const ImageAttribute._();

  /// Constructs a [ImageAttribute] from a [payload] and [response].
  factory ImageAttribute.fromResponse(
    ImageAttribute payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i7.SmithySerializer> serializers = [
    ImageAttributeEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ImageAttributeBuilder b) {}

  /// The block device mapping entries.
  _i6.BuiltList<_i2.BlockDeviceMapping>? get blockDeviceMappings;

  /// The ID of the AMI.
  String? get imageId;

  /// The launch permissions.
  _i6.BuiltList<_i3.LaunchPermission>? get launchPermissions;

  /// The product codes.
  _i6.BuiltList<_i4.ProductCode>? get productCodes;

  /// A description for the AMI.
  _i5.AttributeValue? get description;

  /// The kernel ID.
  _i5.AttributeValue? get kernelId;

  /// The RAM disk ID.
  _i5.AttributeValue? get ramdiskId;

  /// Indicates whether enhanced networking with the Intel 82599 Virtual Function interface is enabled.
  _i5.AttributeValue? get sriovNetSupport;

  /// The boot mode.
  _i5.AttributeValue? get bootMode;

  /// If the image is configured for NitroTPM support, the value is `v2.0`.
  _i5.AttributeValue? get tpmSupport;

  /// Base64 representation of the non-volatile UEFI variable store. To retrieve the UEFI data, use the [GetInstanceUefiData](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_GetInstanceUefiData) command. You can inspect and modify the UEFI data by using the [python-uefivars tool](https://github.com/awslabs/python-uefivars) on GitHub. For more information, see [UEFI Secure Boot](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/uefi-secure-boot.html) in the _Amazon Elastic Compute Cloud User Guide_.
  _i5.AttributeValue? get uefiData;

  /// The date and time, in [ISO 8601 date-time format](http://www.iso.org/iso/iso8601), when the AMI was last used to launch an EC2 instance. When the AMI is used to launch an instance, there is a 24-hour delay before that usage is reported.
  ///
  /// `lastLaunchedTime` data is available starting April 2017.
  _i5.AttributeValue? get lastLaunchedTime;

  /// If `v2.0`, it indicates that IMDSv2 is specified in the AMI. Instances launched from this AMI will have `HttpTokens` automatically set to `required` so that, by default, the instance requires that IMDSv2 is used when requesting instance metadata. In addition, `HttpPutResponseHopLimit` is set to `2`. For more information, see [Configure the AMI](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/configuring-IMDS-new-instances.html#configure-IMDS-new-instances-ami-configuration) in the _Amazon Elastic Compute Cloud User Guide_.
  _i5.AttributeValue? get imdsSupport;
  @override
  List<Object?> get props => [
        blockDeviceMappings,
        imageId,
        launchPermissions,
        productCodes,
        description,
        kernelId,
        ramdiskId,
        sriovNetSupport,
        bootMode,
        tpmSupport,
        uefiData,
        lastLaunchedTime,
        imdsSupport,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ImageAttribute');
    helper.add(
      'blockDeviceMappings',
      blockDeviceMappings,
    );
    helper.add(
      'imageId',
      imageId,
    );
    helper.add(
      'launchPermissions',
      launchPermissions,
    );
    helper.add(
      'productCodes',
      productCodes,
    );
    helper.add(
      'description',
      description,
    );
    helper.add(
      'kernelId',
      kernelId,
    );
    helper.add(
      'ramdiskId',
      ramdiskId,
    );
    helper.add(
      'sriovNetSupport',
      sriovNetSupport,
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
      'uefiData',
      uefiData,
    );
    helper.add(
      'lastLaunchedTime',
      lastLaunchedTime,
    );
    helper.add(
      'imdsSupport',
      imdsSupport,
    );
    return helper.toString();
  }
}

class ImageAttributeEc2QuerySerializer
    extends _i7.StructuredSmithySerializer<ImageAttribute> {
  const ImageAttributeEc2QuerySerializer() : super('ImageAttribute');

  @override
  Iterable<Type> get types => const [
        ImageAttribute,
        _$ImageAttribute,
      ];
  @override
  Iterable<_i7.ShapeId> get supportedProtocols => const [
        _i7.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ImageAttribute deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ImageAttributeBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'blockDeviceMapping':
          result.blockDeviceMappings.replace((const _i7.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i7.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i6.BuiltList,
              [FullType(_i2.BlockDeviceMapping)],
            ),
          ) as _i6.BuiltList<_i2.BlockDeviceMapping>));
        case 'imageId':
          result.imageId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'launchPermission':
          result.launchPermissions.replace((const _i7.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i7.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i6.BuiltList,
              [FullType(_i3.LaunchPermission)],
            ),
          ) as _i6.BuiltList<_i3.LaunchPermission>));
        case 'productCodes':
          result.productCodes.replace((const _i7.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i7.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i6.BuiltList,
              [FullType(_i4.ProductCode)],
            ),
          ) as _i6.BuiltList<_i4.ProductCode>));
        case 'description':
          result.description.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i5.AttributeValue),
          ) as _i5.AttributeValue));
        case 'kernel':
          result.kernelId.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i5.AttributeValue),
          ) as _i5.AttributeValue));
        case 'ramdisk':
          result.ramdiskId.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i5.AttributeValue),
          ) as _i5.AttributeValue));
        case 'sriovNetSupport':
          result.sriovNetSupport.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i5.AttributeValue),
          ) as _i5.AttributeValue));
        case 'bootMode':
          result.bootMode.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i5.AttributeValue),
          ) as _i5.AttributeValue));
        case 'tpmSupport':
          result.tpmSupport.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i5.AttributeValue),
          ) as _i5.AttributeValue));
        case 'uefiData':
          result.uefiData.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i5.AttributeValue),
          ) as _i5.AttributeValue));
        case 'lastLaunchedTime':
          result.lastLaunchedTime.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i5.AttributeValue),
          ) as _i5.AttributeValue));
        case 'imdsSupport':
          result.imdsSupport.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i5.AttributeValue),
          ) as _i5.AttributeValue));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ImageAttribute object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i7.XmlElementName(
        'ImageAttributeResponse',
        _i7.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ImageAttribute(
      :blockDeviceMappings,
      :imageId,
      :launchPermissions,
      :productCodes,
      :description,
      :kernelId,
      :ramdiskId,
      :sriovNetSupport,
      :bootMode,
      :tpmSupport,
      :uefiData,
      :lastLaunchedTime,
      :imdsSupport
    ) = object;
    if (blockDeviceMappings != null) {
      result$
        ..add(const _i7.XmlElementName('BlockDeviceMapping'))
        ..add(const _i7.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i7.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          blockDeviceMappings,
          specifiedType: const FullType.nullable(
            _i6.BuiltList,
            [FullType(_i2.BlockDeviceMapping)],
          ),
        ));
    }
    if (imageId != null) {
      result$
        ..add(const _i7.XmlElementName('ImageId'))
        ..add(serializers.serialize(
          imageId,
          specifiedType: const FullType(String),
        ));
    }
    if (launchPermissions != null) {
      result$
        ..add(const _i7.XmlElementName('LaunchPermission'))
        ..add(const _i7.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i7.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          launchPermissions,
          specifiedType: const FullType.nullable(
            _i6.BuiltList,
            [FullType(_i3.LaunchPermission)],
          ),
        ));
    }
    if (productCodes != null) {
      result$
        ..add(const _i7.XmlElementName('ProductCodes'))
        ..add(const _i7.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i7.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          productCodes,
          specifiedType: const FullType.nullable(
            _i6.BuiltList,
            [FullType(_i4.ProductCode)],
          ),
        ));
    }
    if (description != null) {
      result$
        ..add(const _i7.XmlElementName('Description'))
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(_i5.AttributeValue),
        ));
    }
    if (kernelId != null) {
      result$
        ..add(const _i7.XmlElementName('Kernel'))
        ..add(serializers.serialize(
          kernelId,
          specifiedType: const FullType(_i5.AttributeValue),
        ));
    }
    if (ramdiskId != null) {
      result$
        ..add(const _i7.XmlElementName('Ramdisk'))
        ..add(serializers.serialize(
          ramdiskId,
          specifiedType: const FullType(_i5.AttributeValue),
        ));
    }
    if (sriovNetSupport != null) {
      result$
        ..add(const _i7.XmlElementName('SriovNetSupport'))
        ..add(serializers.serialize(
          sriovNetSupport,
          specifiedType: const FullType(_i5.AttributeValue),
        ));
    }
    if (bootMode != null) {
      result$
        ..add(const _i7.XmlElementName('BootMode'))
        ..add(serializers.serialize(
          bootMode,
          specifiedType: const FullType(_i5.AttributeValue),
        ));
    }
    if (tpmSupport != null) {
      result$
        ..add(const _i7.XmlElementName('TpmSupport'))
        ..add(serializers.serialize(
          tpmSupport,
          specifiedType: const FullType(_i5.AttributeValue),
        ));
    }
    if (uefiData != null) {
      result$
        ..add(const _i7.XmlElementName('UefiData'))
        ..add(serializers.serialize(
          uefiData,
          specifiedType: const FullType(_i5.AttributeValue),
        ));
    }
    if (lastLaunchedTime != null) {
      result$
        ..add(const _i7.XmlElementName('LastLaunchedTime'))
        ..add(serializers.serialize(
          lastLaunchedTime,
          specifiedType: const FullType(_i5.AttributeValue),
        ));
    }
    if (imdsSupport != null) {
      result$
        ..add(const _i7.XmlElementName('ImdsSupport'))
        ..add(serializers.serialize(
          imdsSupport,
          specifiedType: const FullType(_i5.AttributeValue),
        ));
    }
    return result$;
  }
}
