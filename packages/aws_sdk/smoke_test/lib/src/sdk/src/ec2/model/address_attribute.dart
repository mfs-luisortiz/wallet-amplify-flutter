// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.address_attribute; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/ptr_update_status.dart' as _i2;

part 'address_attribute.g.dart';

/// The attributes associated with an Elastic IP address.
abstract class AddressAttribute
    with _i1.AWSEquatable<AddressAttribute>
    implements Built<AddressAttribute, AddressAttributeBuilder> {
  /// The attributes associated with an Elastic IP address.
  factory AddressAttribute({
    String? publicIp,
    String? allocationId,
    String? ptrRecord,
    _i2.PtrUpdateStatus? ptrRecordUpdate,
  }) {
    return _$AddressAttribute._(
      publicIp: publicIp,
      allocationId: allocationId,
      ptrRecord: ptrRecord,
      ptrRecordUpdate: ptrRecordUpdate,
    );
  }

  /// The attributes associated with an Elastic IP address.
  factory AddressAttribute.build(
      [void Function(AddressAttributeBuilder) updates]) = _$AddressAttribute;

  const AddressAttribute._();

  static const List<_i3.SmithySerializer> serializers = [
    AddressAttributeEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AddressAttributeBuilder b) {}

  /// The public IP address.
  String? get publicIp;

  /// \[EC2-VPC\] The allocation ID.
  String? get allocationId;

  /// The pointer (PTR) record for the IP address.
  String? get ptrRecord;

  /// The updated PTR record for the IP address.
  _i2.PtrUpdateStatus? get ptrRecordUpdate;
  @override
  List<Object?> get props => [
        publicIp,
        allocationId,
        ptrRecord,
        ptrRecordUpdate,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AddressAttribute');
    helper.add(
      'publicIp',
      publicIp,
    );
    helper.add(
      'allocationId',
      allocationId,
    );
    helper.add(
      'ptrRecord',
      ptrRecord,
    );
    helper.add(
      'ptrRecordUpdate',
      ptrRecordUpdate,
    );
    return helper.toString();
  }
}

class AddressAttributeEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<AddressAttribute> {
  const AddressAttributeEc2QuerySerializer() : super('AddressAttribute');

  @override
  Iterable<Type> get types => const [
        AddressAttribute,
        _$AddressAttribute,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AddressAttribute deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AddressAttributeBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'publicIp':
          result.publicIp = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'allocationId':
          result.allocationId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ptrRecord':
          result.ptrRecord = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ptrRecordUpdate':
          result.ptrRecordUpdate.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.PtrUpdateStatus),
          ) as _i2.PtrUpdateStatus));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    AddressAttribute object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'AddressAttributeResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final AddressAttribute(
      :publicIp,
      :allocationId,
      :ptrRecord,
      :ptrRecordUpdate
    ) = object;
    if (publicIp != null) {
      result$
        ..add(const _i3.XmlElementName('PublicIp'))
        ..add(serializers.serialize(
          publicIp,
          specifiedType: const FullType(String),
        ));
    }
    if (allocationId != null) {
      result$
        ..add(const _i3.XmlElementName('AllocationId'))
        ..add(serializers.serialize(
          allocationId,
          specifiedType: const FullType(String),
        ));
    }
    if (ptrRecord != null) {
      result$
        ..add(const _i3.XmlElementName('PtrRecord'))
        ..add(serializers.serialize(
          ptrRecord,
          specifiedType: const FullType(String),
        ));
    }
    if (ptrRecordUpdate != null) {
      result$
        ..add(const _i3.XmlElementName('PtrRecordUpdate'))
        ..add(serializers.serialize(
          ptrRecordUpdate,
          specifiedType: const FullType(_i2.PtrUpdateStatus),
        ));
    }
    return result$;
  }
}
