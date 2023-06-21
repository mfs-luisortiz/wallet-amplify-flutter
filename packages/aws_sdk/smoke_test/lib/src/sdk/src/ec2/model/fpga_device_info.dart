// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.fpga_device_info; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/fpga_device_memory_info.dart'
    as _i2;

part 'fpga_device_info.g.dart';

/// Describes the FPGA accelerator for the instance type.
abstract class FpgaDeviceInfo
    with _i1.AWSEquatable<FpgaDeviceInfo>
    implements Built<FpgaDeviceInfo, FpgaDeviceInfoBuilder> {
  /// Describes the FPGA accelerator for the instance type.
  factory FpgaDeviceInfo({
    String? name,
    String? manufacturer,
    int? count,
    _i2.FpgaDeviceMemoryInfo? memoryInfo,
  }) {
    return _$FpgaDeviceInfo._(
      name: name,
      manufacturer: manufacturer,
      count: count,
      memoryInfo: memoryInfo,
    );
  }

  /// Describes the FPGA accelerator for the instance type.
  factory FpgaDeviceInfo.build([void Function(FpgaDeviceInfoBuilder) updates]) =
      _$FpgaDeviceInfo;

  const FpgaDeviceInfo._();

  static const List<_i3.SmithySerializer> serializers = [
    FpgaDeviceInfoEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(FpgaDeviceInfoBuilder b) {}

  /// The name of the FPGA accelerator.
  String? get name;

  /// The manufacturer of the FPGA accelerator.
  String? get manufacturer;

  /// The count of FPGA accelerators for the instance type.
  int? get count;

  /// Describes the memory for the FPGA accelerator for the instance type.
  _i2.FpgaDeviceMemoryInfo? get memoryInfo;
  @override
  List<Object?> get props => [
        name,
        manufacturer,
        count,
        memoryInfo,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('FpgaDeviceInfo');
    helper.add(
      'name',
      name,
    );
    helper.add(
      'manufacturer',
      manufacturer,
    );
    helper.add(
      'count',
      count,
    );
    helper.add(
      'memoryInfo',
      memoryInfo,
    );
    return helper.toString();
  }
}

class FpgaDeviceInfoEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<FpgaDeviceInfo> {
  const FpgaDeviceInfoEc2QuerySerializer() : super('FpgaDeviceInfo');

  @override
  Iterable<Type> get types => const [
        FpgaDeviceInfo,
        _$FpgaDeviceInfo,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  FpgaDeviceInfo deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FpgaDeviceInfoBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'name':
          result.name = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'manufacturer':
          result.manufacturer = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'count':
          result.count = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'memoryInfo':
          result.memoryInfo.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.FpgaDeviceMemoryInfo),
          ) as _i2.FpgaDeviceMemoryInfo));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    FpgaDeviceInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'FpgaDeviceInfoResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final FpgaDeviceInfo(:name, :manufacturer, :count, :memoryInfo) = object;
    if (name != null) {
      result$
        ..add(const _i3.XmlElementName('Name'))
        ..add(serializers.serialize(
          name,
          specifiedType: const FullType(String),
        ));
    }
    if (manufacturer != null) {
      result$
        ..add(const _i3.XmlElementName('Manufacturer'))
        ..add(serializers.serialize(
          manufacturer,
          specifiedType: const FullType(String),
        ));
    }
    if (count != null) {
      result$
        ..add(const _i3.XmlElementName('Count'))
        ..add(serializers.serialize(
          count,
          specifiedType: const FullType.nullable(int),
        ));
    }
    if (memoryInfo != null) {
      result$
        ..add(const _i3.XmlElementName('MemoryInfo'))
        ..add(serializers.serialize(
          memoryInfo,
          specifiedType: const FullType(_i2.FpgaDeviceMemoryInfo),
        ));
    }
    return result$;
  }
}
