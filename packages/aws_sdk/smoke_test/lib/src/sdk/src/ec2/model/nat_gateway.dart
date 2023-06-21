// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.nat_gateway; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i7;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i8;
import 'package:smoke_test/src/sdk/src/ec2/model/connectivity_type.dart' as _i6;
import 'package:smoke_test/src/sdk/src/ec2/model/nat_gateway_address.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/nat_gateway_state.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/provisioned_bandwidth.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i5;

part 'nat_gateway.g.dart';

/// Describes a NAT gateway.
abstract class NatGateway
    with _i1.AWSEquatable<NatGateway>
    implements Built<NatGateway, NatGatewayBuilder> {
  /// Describes a NAT gateway.
  factory NatGateway({
    DateTime? createTime,
    DateTime? deleteTime,
    String? failureCode,
    String? failureMessage,
    List<_i2.NatGatewayAddress>? natGatewayAddresses,
    String? natGatewayId,
    _i3.ProvisionedBandwidth? provisionedBandwidth,
    _i4.NatGatewayState? state,
    String? subnetId,
    String? vpcId,
    List<_i5.Tag>? tags,
    _i6.ConnectivityType? connectivityType,
  }) {
    return _$NatGateway._(
      createTime: createTime,
      deleteTime: deleteTime,
      failureCode: failureCode,
      failureMessage: failureMessage,
      natGatewayAddresses: natGatewayAddresses == null
          ? null
          : _i7.BuiltList(natGatewayAddresses),
      natGatewayId: natGatewayId,
      provisionedBandwidth: provisionedBandwidth,
      state: state,
      subnetId: subnetId,
      vpcId: vpcId,
      tags: tags == null ? null : _i7.BuiltList(tags),
      connectivityType: connectivityType,
    );
  }

  /// Describes a NAT gateway.
  factory NatGateway.build([void Function(NatGatewayBuilder) updates]) =
      _$NatGateway;

  const NatGateway._();

  static const List<_i8.SmithySerializer> serializers = [
    NatGatewayEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(NatGatewayBuilder b) {}

  /// The date and time the NAT gateway was created.
  DateTime? get createTime;

  /// The date and time the NAT gateway was deleted, if applicable.
  DateTime? get deleteTime;

  /// If the NAT gateway could not be created, specifies the error code for the failure. (`InsufficientFreeAddressesInSubnet` | `Gateway.NotAttached` | `InvalidAllocationID.NotFound` | `Resource.AlreadyAssociated` | `InternalError` | `InvalidSubnetID.NotFound`)
  String? get failureCode;

  /// If the NAT gateway could not be created, specifies the error message for the failure, that corresponds to the error code.
  ///
  /// *   For InsufficientFreeAddressesInSubnet: "Subnet has insufficient free addresses to create this NAT gateway"
  ///
  /// *   For Gateway.NotAttached: "Network vpc-xxxxxxxx has no Internet gateway attached"
  ///
  /// *   For InvalidAllocationID.NotFound: "Elastic IP address eipalloc-xxxxxxxx could not be associated with this NAT gateway"
  ///
  /// *   For Resource.AlreadyAssociated: "Elastic IP address eipalloc-xxxxxxxx is already associated"
  ///
  /// *   For InternalError: "Network interface eni-xxxxxxxx, created and used internally by this NAT gateway is in an invalid state. Please try again."
  ///
  /// *   For InvalidSubnetID.NotFound: "The specified subnet subnet-xxxxxxxx does not exist or could not be found."
  String? get failureMessage;

  /// Information about the IP addresses and network interface associated with the NAT gateway.
  _i7.BuiltList<_i2.NatGatewayAddress>? get natGatewayAddresses;

  /// The ID of the NAT gateway.
  String? get natGatewayId;

  /// Reserved. If you need to sustain traffic greater than the [documented limits](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-nat-gateway.html), contact us through the [Support Center](https://console.aws.amazon.com/support/home?).
  _i3.ProvisionedBandwidth? get provisionedBandwidth;

  /// The state of the NAT gateway.
  ///
  /// *   `pending`: The NAT gateway is being created and is not ready to process traffic.
  ///
  /// *   `failed`: The NAT gateway could not be created. Check the `failureCode` and `failureMessage` fields for the reason.
  ///
  /// *   `available`: The NAT gateway is able to process traffic. This status remains until you delete the NAT gateway, and does not indicate the health of the NAT gateway.
  ///
  /// *   `deleting`: The NAT gateway is in the process of being terminated and may still be processing traffic.
  ///
  /// *   `deleted`: The NAT gateway has been terminated and is no longer processing traffic.
  _i4.NatGatewayState? get state;

  /// The ID of the subnet in which the NAT gateway is located.
  String? get subnetId;

  /// The ID of the VPC in which the NAT gateway is located.
  String? get vpcId;

  /// The tags for the NAT gateway.
  _i7.BuiltList<_i5.Tag>? get tags;

  /// Indicates whether the NAT gateway supports public or private connectivity.
  _i6.ConnectivityType? get connectivityType;
  @override
  List<Object?> get props => [
        createTime,
        deleteTime,
        failureCode,
        failureMessage,
        natGatewayAddresses,
        natGatewayId,
        provisionedBandwidth,
        state,
        subnetId,
        vpcId,
        tags,
        connectivityType,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('NatGateway');
    helper.add(
      'createTime',
      createTime,
    );
    helper.add(
      'deleteTime',
      deleteTime,
    );
    helper.add(
      'failureCode',
      failureCode,
    );
    helper.add(
      'failureMessage',
      failureMessage,
    );
    helper.add(
      'natGatewayAddresses',
      natGatewayAddresses,
    );
    helper.add(
      'natGatewayId',
      natGatewayId,
    );
    helper.add(
      'provisionedBandwidth',
      provisionedBandwidth,
    );
    helper.add(
      'state',
      state,
    );
    helper.add(
      'subnetId',
      subnetId,
    );
    helper.add(
      'vpcId',
      vpcId,
    );
    helper.add(
      'tags',
      tags,
    );
    helper.add(
      'connectivityType',
      connectivityType,
    );
    return helper.toString();
  }
}

class NatGatewayEc2QuerySerializer
    extends _i8.StructuredSmithySerializer<NatGateway> {
  const NatGatewayEc2QuerySerializer() : super('NatGateway');

  @override
  Iterable<Type> get types => const [
        NatGateway,
        _$NatGateway,
      ];
  @override
  Iterable<_i8.ShapeId> get supportedProtocols => const [
        _i8.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  NatGateway deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NatGatewayBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'createTime':
          result.createTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'deleteTime':
          result.deleteTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'failureCode':
          result.failureCode = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'failureMessage':
          result.failureMessage = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'natGatewayAddressSet':
          result.natGatewayAddresses.replace((const _i8.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i8.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i7.BuiltList,
              [FullType(_i2.NatGatewayAddress)],
            ),
          ) as _i7.BuiltList<_i2.NatGatewayAddress>));
        case 'natGatewayId':
          result.natGatewayId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'provisionedBandwidth':
          result.provisionedBandwidth.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.ProvisionedBandwidth),
          ) as _i3.ProvisionedBandwidth));
        case 'state':
          result.state = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.NatGatewayState),
          ) as _i4.NatGatewayState);
        case 'subnetId':
          result.subnetId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'vpcId':
          result.vpcId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'tagSet':
          result.tags.replace((const _i8.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i8.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i7.BuiltList,
              [FullType(_i5.Tag)],
            ),
          ) as _i7.BuiltList<_i5.Tag>));
        case 'connectivityType':
          result.connectivityType = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i6.ConnectivityType),
          ) as _i6.ConnectivityType);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    NatGateway object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i8.XmlElementName(
        'NatGatewayResponse',
        _i8.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final NatGateway(
      :createTime,
      :deleteTime,
      :failureCode,
      :failureMessage,
      :natGatewayAddresses,
      :natGatewayId,
      :provisionedBandwidth,
      :state,
      :subnetId,
      :vpcId,
      :tags,
      :connectivityType
    ) = object;
    if (createTime != null) {
      result$
        ..add(const _i8.XmlElementName('CreateTime'))
        ..add(serializers.serialize(
          createTime,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (deleteTime != null) {
      result$
        ..add(const _i8.XmlElementName('DeleteTime'))
        ..add(serializers.serialize(
          deleteTime,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (failureCode != null) {
      result$
        ..add(const _i8.XmlElementName('FailureCode'))
        ..add(serializers.serialize(
          failureCode,
          specifiedType: const FullType(String),
        ));
    }
    if (failureMessage != null) {
      result$
        ..add(const _i8.XmlElementName('FailureMessage'))
        ..add(serializers.serialize(
          failureMessage,
          specifiedType: const FullType(String),
        ));
    }
    if (natGatewayAddresses != null) {
      result$
        ..add(const _i8.XmlElementName('NatGatewayAddressSet'))
        ..add(const _i8.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i8.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          natGatewayAddresses,
          specifiedType: const FullType.nullable(
            _i7.BuiltList,
            [FullType(_i2.NatGatewayAddress)],
          ),
        ));
    }
    if (natGatewayId != null) {
      result$
        ..add(const _i8.XmlElementName('NatGatewayId'))
        ..add(serializers.serialize(
          natGatewayId,
          specifiedType: const FullType(String),
        ));
    }
    if (provisionedBandwidth != null) {
      result$
        ..add(const _i8.XmlElementName('ProvisionedBandwidth'))
        ..add(serializers.serialize(
          provisionedBandwidth,
          specifiedType: const FullType(_i3.ProvisionedBandwidth),
        ));
    }
    if (state != null) {
      result$
        ..add(const _i8.XmlElementName('State'))
        ..add(serializers.serialize(
          state,
          specifiedType: const FullType.nullable(_i4.NatGatewayState),
        ));
    }
    if (subnetId != null) {
      result$
        ..add(const _i8.XmlElementName('SubnetId'))
        ..add(serializers.serialize(
          subnetId,
          specifiedType: const FullType(String),
        ));
    }
    if (vpcId != null) {
      result$
        ..add(const _i8.XmlElementName('VpcId'))
        ..add(serializers.serialize(
          vpcId,
          specifiedType: const FullType(String),
        ));
    }
    if (tags != null) {
      result$
        ..add(const _i8.XmlElementName('TagSet'))
        ..add(const _i8.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i8.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          tags,
          specifiedType: const FullType.nullable(
            _i7.BuiltList,
            [FullType(_i5.Tag)],
          ),
        ));
    }
    if (connectivityType != null) {
      result$
        ..add(const _i8.XmlElementName('ConnectivityType'))
        ..add(serializers.serialize(
          connectivityType,
          specifiedType: const FullType.nullable(_i6.ConnectivityType),
        ));
    }
    return result$;
  }
}
