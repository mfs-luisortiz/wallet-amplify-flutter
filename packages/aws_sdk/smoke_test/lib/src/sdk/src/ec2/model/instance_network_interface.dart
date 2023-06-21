// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.instance_network_interface; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i10;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i11;
import 'package:smoke_test/src/sdk/src/ec2/model/group_identifier.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_ipv4_prefix.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_ipv6_address.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_ipv6_prefix.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_network_interface_association.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_network_interface_attachment.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_private_ip_address.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/ec2/model/network_interface_status.dart'
    as _i7;

part 'instance_network_interface.g.dart';

/// Describes a network interface.
abstract class InstanceNetworkInterface
    with _i1.AWSEquatable<InstanceNetworkInterface>
    implements
        Built<InstanceNetworkInterface, InstanceNetworkInterfaceBuilder> {
  /// Describes a network interface.
  factory InstanceNetworkInterface({
    _i2.InstanceNetworkInterfaceAssociation? association,
    _i3.InstanceNetworkInterfaceAttachment? attachment,
    String? description,
    List<_i4.GroupIdentifier>? groups,
    List<_i5.InstanceIpv6Address>? ipv6Addresses,
    String? macAddress,
    String? networkInterfaceId,
    String? ownerId,
    String? privateDnsName,
    String? privateIpAddress,
    List<_i6.InstancePrivateIpAddress>? privateIpAddresses,
    bool? sourceDestCheck,
    _i7.NetworkInterfaceStatus? status,
    String? subnetId,
    String? vpcId,
    String? interfaceType,
    List<_i8.InstanceIpv4Prefix>? ipv4Prefixes,
    List<_i9.InstanceIpv6Prefix>? ipv6Prefixes,
  }) {
    sourceDestCheck ??= false;
    return _$InstanceNetworkInterface._(
      association: association,
      attachment: attachment,
      description: description,
      groups: groups == null ? null : _i10.BuiltList(groups),
      ipv6Addresses:
          ipv6Addresses == null ? null : _i10.BuiltList(ipv6Addresses),
      macAddress: macAddress,
      networkInterfaceId: networkInterfaceId,
      ownerId: ownerId,
      privateDnsName: privateDnsName,
      privateIpAddress: privateIpAddress,
      privateIpAddresses: privateIpAddresses == null
          ? null
          : _i10.BuiltList(privateIpAddresses),
      sourceDestCheck: sourceDestCheck,
      status: status,
      subnetId: subnetId,
      vpcId: vpcId,
      interfaceType: interfaceType,
      ipv4Prefixes: ipv4Prefixes == null ? null : _i10.BuiltList(ipv4Prefixes),
      ipv6Prefixes: ipv6Prefixes == null ? null : _i10.BuiltList(ipv6Prefixes),
    );
  }

  /// Describes a network interface.
  factory InstanceNetworkInterface.build(
          [void Function(InstanceNetworkInterfaceBuilder) updates]) =
      _$InstanceNetworkInterface;

  const InstanceNetworkInterface._();

  static const List<_i11.SmithySerializer> serializers = [
    InstanceNetworkInterfaceEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InstanceNetworkInterfaceBuilder b) {
    b.sourceDestCheck = false;
  }

  /// The association information for an Elastic IPv4 associated with the network interface.
  _i2.InstanceNetworkInterfaceAssociation? get association;

  /// The network interface attachment.
  _i3.InstanceNetworkInterfaceAttachment? get attachment;

  /// The description.
  String? get description;

  /// The security groups.
  _i10.BuiltList<_i4.GroupIdentifier>? get groups;

  /// The IPv6 addresses associated with the network interface.
  _i10.BuiltList<_i5.InstanceIpv6Address>? get ipv6Addresses;

  /// The MAC address.
  String? get macAddress;

  /// The ID of the network interface.
  String? get networkInterfaceId;

  /// The ID of the Amazon Web Services account that created the network interface.
  String? get ownerId;

  /// The private DNS name.
  String? get privateDnsName;

  /// The IPv4 address of the network interface within the subnet.
  String? get privateIpAddress;

  /// The private IPv4 addresses associated with the network interface.
  _i10.BuiltList<_i6.InstancePrivateIpAddress>? get privateIpAddresses;

  /// Indicates whether source/destination checking is enabled.
  bool get sourceDestCheck;

  /// The status of the network interface.
  _i7.NetworkInterfaceStatus? get status;

  /// The ID of the subnet.
  String? get subnetId;

  /// The ID of the VPC.
  String? get vpcId;

  /// The type of network interface.
  ///
  /// Valid values: `interface` | `efa` | `trunk`
  String? get interfaceType;

  /// The IPv4 delegated prefixes that are assigned to the network interface.
  _i10.BuiltList<_i8.InstanceIpv4Prefix>? get ipv4Prefixes;

  /// The IPv6 delegated prefixes that are assigned to the network interface.
  _i10.BuiltList<_i9.InstanceIpv6Prefix>? get ipv6Prefixes;
  @override
  List<Object?> get props => [
        association,
        attachment,
        description,
        groups,
        ipv6Addresses,
        macAddress,
        networkInterfaceId,
        ownerId,
        privateDnsName,
        privateIpAddress,
        privateIpAddresses,
        sourceDestCheck,
        status,
        subnetId,
        vpcId,
        interfaceType,
        ipv4Prefixes,
        ipv6Prefixes,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InstanceNetworkInterface');
    helper.add(
      'association',
      association,
    );
    helper.add(
      'attachment',
      attachment,
    );
    helper.add(
      'description',
      description,
    );
    helper.add(
      'groups',
      groups,
    );
    helper.add(
      'ipv6Addresses',
      ipv6Addresses,
    );
    helper.add(
      'macAddress',
      macAddress,
    );
    helper.add(
      'networkInterfaceId',
      networkInterfaceId,
    );
    helper.add(
      'ownerId',
      ownerId,
    );
    helper.add(
      'privateDnsName',
      privateDnsName,
    );
    helper.add(
      'privateIpAddress',
      privateIpAddress,
    );
    helper.add(
      'privateIpAddresses',
      privateIpAddresses,
    );
    helper.add(
      'sourceDestCheck',
      sourceDestCheck,
    );
    helper.add(
      'status',
      status,
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
      'interfaceType',
      interfaceType,
    );
    helper.add(
      'ipv4Prefixes',
      ipv4Prefixes,
    );
    helper.add(
      'ipv6Prefixes',
      ipv6Prefixes,
    );
    return helper.toString();
  }
}

class InstanceNetworkInterfaceEc2QuerySerializer
    extends _i11.StructuredSmithySerializer<InstanceNetworkInterface> {
  const InstanceNetworkInterfaceEc2QuerySerializer()
      : super('InstanceNetworkInterface');

  @override
  Iterable<Type> get types => const [
        InstanceNetworkInterface,
        _$InstanceNetworkInterface,
      ];
  @override
  Iterable<_i11.ShapeId> get supportedProtocols => const [
        _i11.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  InstanceNetworkInterface deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InstanceNetworkInterfaceBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'association':
          result.association.replace((serializers.deserialize(
            value,
            specifiedType:
                const FullType(_i2.InstanceNetworkInterfaceAssociation),
          ) as _i2.InstanceNetworkInterfaceAssociation));
        case 'attachment':
          result.attachment.replace((serializers.deserialize(
            value,
            specifiedType:
                const FullType(_i3.InstanceNetworkInterfaceAttachment),
          ) as _i3.InstanceNetworkInterfaceAttachment));
        case 'description':
          result.description = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'groupSet':
          result.groups.replace((const _i11.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i11.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i10.BuiltList,
              [FullType(_i4.GroupIdentifier)],
            ),
          ) as _i10.BuiltList<_i4.GroupIdentifier>));
        case 'ipv6AddressesSet':
          result.ipv6Addresses.replace((const _i11.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i11.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i10.BuiltList,
              [FullType(_i5.InstanceIpv6Address)],
            ),
          ) as _i10.BuiltList<_i5.InstanceIpv6Address>));
        case 'macAddress':
          result.macAddress = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'networkInterfaceId':
          result.networkInterfaceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ownerId':
          result.ownerId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'privateDnsName':
          result.privateDnsName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'privateIpAddress':
          result.privateIpAddress = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'privateIpAddressesSet':
          result.privateIpAddresses.replace((const _i11.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i11.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i10.BuiltList,
              [FullType(_i6.InstancePrivateIpAddress)],
            ),
          ) as _i10.BuiltList<_i6.InstancePrivateIpAddress>));
        case 'sourceDestCheck':
          result.sourceDestCheck = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'status':
          result.status = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i7.NetworkInterfaceStatus),
          ) as _i7.NetworkInterfaceStatus);
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
        case 'interfaceType':
          result.interfaceType = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ipv4PrefixSet':
          result.ipv4Prefixes.replace((const _i11.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i11.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i10.BuiltList,
              [FullType(_i8.InstanceIpv4Prefix)],
            ),
          ) as _i10.BuiltList<_i8.InstanceIpv4Prefix>));
        case 'ipv6PrefixSet':
          result.ipv6Prefixes.replace((const _i11.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i11.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i10.BuiltList,
              [FullType(_i9.InstanceIpv6Prefix)],
            ),
          ) as _i10.BuiltList<_i9.InstanceIpv6Prefix>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    InstanceNetworkInterface object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i11.XmlElementName(
        'InstanceNetworkInterfaceResponse',
        _i11.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final InstanceNetworkInterface(
      :association,
      :attachment,
      :description,
      :groups,
      :ipv6Addresses,
      :macAddress,
      :networkInterfaceId,
      :ownerId,
      :privateDnsName,
      :privateIpAddress,
      :privateIpAddresses,
      :sourceDestCheck,
      :status,
      :subnetId,
      :vpcId,
      :interfaceType,
      :ipv4Prefixes,
      :ipv6Prefixes
    ) = object;
    if (association != null) {
      result$
        ..add(const _i11.XmlElementName('Association'))
        ..add(serializers.serialize(
          association,
          specifiedType:
              const FullType(_i2.InstanceNetworkInterfaceAssociation),
        ));
    }
    if (attachment != null) {
      result$
        ..add(const _i11.XmlElementName('Attachment'))
        ..add(serializers.serialize(
          attachment,
          specifiedType: const FullType(_i3.InstanceNetworkInterfaceAttachment),
        ));
    }
    if (description != null) {
      result$
        ..add(const _i11.XmlElementName('Description'))
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(String),
        ));
    }
    if (groups != null) {
      result$
        ..add(const _i11.XmlElementName('GroupSet'))
        ..add(const _i11.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i11.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          groups,
          specifiedType: const FullType.nullable(
            _i10.BuiltList,
            [FullType(_i4.GroupIdentifier)],
          ),
        ));
    }
    if (ipv6Addresses != null) {
      result$
        ..add(const _i11.XmlElementName('Ipv6AddressesSet'))
        ..add(const _i11.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i11.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          ipv6Addresses,
          specifiedType: const FullType.nullable(
            _i10.BuiltList,
            [FullType(_i5.InstanceIpv6Address)],
          ),
        ));
    }
    if (macAddress != null) {
      result$
        ..add(const _i11.XmlElementName('MacAddress'))
        ..add(serializers.serialize(
          macAddress,
          specifiedType: const FullType(String),
        ));
    }
    if (networkInterfaceId != null) {
      result$
        ..add(const _i11.XmlElementName('NetworkInterfaceId'))
        ..add(serializers.serialize(
          networkInterfaceId,
          specifiedType: const FullType(String),
        ));
    }
    if (ownerId != null) {
      result$
        ..add(const _i11.XmlElementName('OwnerId'))
        ..add(serializers.serialize(
          ownerId,
          specifiedType: const FullType(String),
        ));
    }
    if (privateDnsName != null) {
      result$
        ..add(const _i11.XmlElementName('PrivateDnsName'))
        ..add(serializers.serialize(
          privateDnsName,
          specifiedType: const FullType(String),
        ));
    }
    if (privateIpAddress != null) {
      result$
        ..add(const _i11.XmlElementName('PrivateIpAddress'))
        ..add(serializers.serialize(
          privateIpAddress,
          specifiedType: const FullType(String),
        ));
    }
    if (privateIpAddresses != null) {
      result$
        ..add(const _i11.XmlElementName('PrivateIpAddressesSet'))
        ..add(const _i11.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i11.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          privateIpAddresses,
          specifiedType: const FullType.nullable(
            _i10.BuiltList,
            [FullType(_i6.InstancePrivateIpAddress)],
          ),
        ));
    }
    result$
      ..add(const _i11.XmlElementName('SourceDestCheck'))
      ..add(serializers.serialize(
        sourceDestCheck,
        specifiedType: const FullType(bool),
      ));
    if (status != null) {
      result$
        ..add(const _i11.XmlElementName('Status'))
        ..add(serializers.serialize(
          status,
          specifiedType: const FullType.nullable(_i7.NetworkInterfaceStatus),
        ));
    }
    if (subnetId != null) {
      result$
        ..add(const _i11.XmlElementName('SubnetId'))
        ..add(serializers.serialize(
          subnetId,
          specifiedType: const FullType(String),
        ));
    }
    if (vpcId != null) {
      result$
        ..add(const _i11.XmlElementName('VpcId'))
        ..add(serializers.serialize(
          vpcId,
          specifiedType: const FullType(String),
        ));
    }
    if (interfaceType != null) {
      result$
        ..add(const _i11.XmlElementName('InterfaceType'))
        ..add(serializers.serialize(
          interfaceType,
          specifiedType: const FullType(String),
        ));
    }
    if (ipv4Prefixes != null) {
      result$
        ..add(const _i11.XmlElementName('Ipv4PrefixSet'))
        ..add(const _i11.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i11.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          ipv4Prefixes,
          specifiedType: const FullType.nullable(
            _i10.BuiltList,
            [FullType(_i8.InstanceIpv4Prefix)],
          ),
        ));
    }
    if (ipv6Prefixes != null) {
      result$
        ..add(const _i11.XmlElementName('Ipv6PrefixSet'))
        ..add(const _i11.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i11.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          ipv6Prefixes,
          specifiedType: const FullType.nullable(
            _i10.BuiltList,
            [FullType(_i9.InstanceIpv6Prefix)],
          ),
        ));
    }
    return result$;
  }
}
