// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.modify_instance_placement_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/affinity.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/host_tenancy.dart' as _i4;

part 'modify_instance_placement_request.g.dart';

abstract class ModifyInstancePlacementRequest
    with
        _i1.HttpInput<ModifyInstancePlacementRequest>,
        _i2.AWSEquatable<ModifyInstancePlacementRequest>
    implements
        Built<ModifyInstancePlacementRequest,
            ModifyInstancePlacementRequestBuilder> {
  factory ModifyInstancePlacementRequest({
    _i3.Affinity? affinity,
    String? groupName,
    String? hostId,
    required String instanceId,
    _i4.HostTenancy? tenancy,
    int? partitionNumber,
    String? hostResourceGroupArn,
  }) {
    partitionNumber ??= 0;
    return _$ModifyInstancePlacementRequest._(
      affinity: affinity,
      groupName: groupName,
      hostId: hostId,
      instanceId: instanceId,
      tenancy: tenancy,
      partitionNumber: partitionNumber,
      hostResourceGroupArn: hostResourceGroupArn,
    );
  }

  factory ModifyInstancePlacementRequest.build(
          [void Function(ModifyInstancePlacementRequestBuilder) updates]) =
      _$ModifyInstancePlacementRequest;

  const ModifyInstancePlacementRequest._();

  factory ModifyInstancePlacementRequest.fromRequest(
    ModifyInstancePlacementRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    ModifyInstancePlacementRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyInstancePlacementRequestBuilder b) {
    b.partitionNumber = 0;
  }

  /// The affinity setting for the instance.
  _i3.Affinity? get affinity;

  /// The name of the placement group in which to place the instance. For spread placement groups, the instance must have a tenancy of `default`. For cluster and partition placement groups, the instance must have a tenancy of `default` or `dedicated`.
  ///
  /// To remove an instance from a placement group, specify an empty string ("").
  String? get groupName;

  /// The ID of the Dedicated Host with which to associate the instance.
  String? get hostId;

  /// The ID of the instance that you are modifying.
  String get instanceId;

  /// The tenancy for the instance.
  ///
  /// For T3 instances, you can't change the tenancy from `dedicated` to `host`, or from `host` to `dedicated`. Attempting to make one of these unsupported tenancy changes results in the `InvalidTenancy` error code.
  _i4.HostTenancy? get tenancy;

  /// The number of the partition in which to place the instance. Valid only if the placement group strategy is set to `partition`.
  int get partitionNumber;

  /// The ARN of the host resource group in which to place the instance.
  String? get hostResourceGroupArn;
  @override
  ModifyInstancePlacementRequest getPayload() => this;
  @override
  List<Object?> get props => [
        affinity,
        groupName,
        hostId,
        instanceId,
        tenancy,
        partitionNumber,
        hostResourceGroupArn,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ModifyInstancePlacementRequest');
    helper.add(
      'affinity',
      affinity,
    );
    helper.add(
      'groupName',
      groupName,
    );
    helper.add(
      'hostId',
      hostId,
    );
    helper.add(
      'instanceId',
      instanceId,
    );
    helper.add(
      'tenancy',
      tenancy,
    );
    helper.add(
      'partitionNumber',
      partitionNumber,
    );
    helper.add(
      'hostResourceGroupArn',
      hostResourceGroupArn,
    );
    return helper.toString();
  }
}

class ModifyInstancePlacementRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<ModifyInstancePlacementRequest> {
  const ModifyInstancePlacementRequestEc2QuerySerializer()
      : super('ModifyInstancePlacementRequest');

  @override
  Iterable<Type> get types => const [
        ModifyInstancePlacementRequest,
        _$ModifyInstancePlacementRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyInstancePlacementRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyInstancePlacementRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'affinity':
          result.affinity = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.Affinity),
          ) as _i3.Affinity);
        case 'GroupName':
          result.groupName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'hostId':
          result.hostId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'instanceId':
          result.instanceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'tenancy':
          result.tenancy = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.HostTenancy),
          ) as _i4.HostTenancy);
        case 'PartitionNumber':
          result.partitionNumber = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'HostResourceGroupArn':
          result.hostResourceGroupArn = (serializers.deserialize(
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
    ModifyInstancePlacementRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ModifyInstancePlacementRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ModifyInstancePlacementRequest(
      :affinity,
      :groupName,
      :hostId,
      :instanceId,
      :tenancy,
      :partitionNumber,
      :hostResourceGroupArn
    ) = object;
    if (affinity != null) {
      result$
        ..add(const _i1.XmlElementName('Affinity'))
        ..add(serializers.serialize(
          affinity,
          specifiedType: const FullType.nullable(_i3.Affinity),
        ));
    }
    if (groupName != null) {
      result$
        ..add(const _i1.XmlElementName('GroupName'))
        ..add(serializers.serialize(
          groupName,
          specifiedType: const FullType(String),
        ));
    }
    if (hostId != null) {
      result$
        ..add(const _i1.XmlElementName('HostId'))
        ..add(serializers.serialize(
          hostId,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('InstanceId'))
      ..add(serializers.serialize(
        instanceId,
        specifiedType: const FullType(String),
      ));
    if (tenancy != null) {
      result$
        ..add(const _i1.XmlElementName('Tenancy'))
        ..add(serializers.serialize(
          tenancy,
          specifiedType: const FullType.nullable(_i4.HostTenancy),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('PartitionNumber'))
      ..add(serializers.serialize(
        partitionNumber,
        specifiedType: const FullType(int),
      ));
    if (hostResourceGroupArn != null) {
      result$
        ..add(const _i1.XmlElementName('HostResourceGroupArn'))
        ..add(serializers.serialize(
          hostResourceGroupArn,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
