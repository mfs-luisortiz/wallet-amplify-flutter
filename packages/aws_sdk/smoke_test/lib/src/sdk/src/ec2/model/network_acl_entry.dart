// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.network_acl_entry; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/icmp_type_code.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/port_range.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/rule_action.dart' as _i4;

part 'network_acl_entry.g.dart';

/// Describes an entry in a network ACL.
abstract class NetworkAclEntry
    with _i1.AWSEquatable<NetworkAclEntry>
    implements Built<NetworkAclEntry, NetworkAclEntryBuilder> {
  /// Describes an entry in a network ACL.
  factory NetworkAclEntry({
    String? cidrBlock,
    bool? egress,
    _i2.IcmpTypeCode? icmpTypeCode,
    String? ipv6CidrBlock,
    _i3.PortRange? portRange,
    String? protocol,
    _i4.RuleAction? ruleAction,
    int? ruleNumber,
  }) {
    egress ??= false;
    ruleNumber ??= 0;
    return _$NetworkAclEntry._(
      cidrBlock: cidrBlock,
      egress: egress,
      icmpTypeCode: icmpTypeCode,
      ipv6CidrBlock: ipv6CidrBlock,
      portRange: portRange,
      protocol: protocol,
      ruleAction: ruleAction,
      ruleNumber: ruleNumber,
    );
  }

  /// Describes an entry in a network ACL.
  factory NetworkAclEntry.build(
      [void Function(NetworkAclEntryBuilder) updates]) = _$NetworkAclEntry;

  const NetworkAclEntry._();

  static const List<_i5.SmithySerializer> serializers = [
    NetworkAclEntryEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(NetworkAclEntryBuilder b) {
    b.egress = false;
    b.ruleNumber = 0;
  }

  /// The IPv4 network range to allow or deny, in CIDR notation.
  String? get cidrBlock;

  /// Indicates whether the rule is an egress rule (applied to traffic leaving the subnet).
  bool get egress;

  /// ICMP protocol: The ICMP type and code.
  _i2.IcmpTypeCode? get icmpTypeCode;

  /// The IPv6 network range to allow or deny, in CIDR notation.
  String? get ipv6CidrBlock;

  /// TCP or UDP protocols: The range of ports the rule applies to.
  _i3.PortRange? get portRange;

  /// The protocol number. A value of "-1" means all protocols.
  String? get protocol;

  /// Indicates whether to allow or deny the traffic that matches the rule.
  _i4.RuleAction? get ruleAction;

  /// The rule number for the entry. ACL entries are processed in ascending order by rule number.
  int get ruleNumber;
  @override
  List<Object?> get props => [
        cidrBlock,
        egress,
        icmpTypeCode,
        ipv6CidrBlock,
        portRange,
        protocol,
        ruleAction,
        ruleNumber,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('NetworkAclEntry');
    helper.add(
      'cidrBlock',
      cidrBlock,
    );
    helper.add(
      'egress',
      egress,
    );
    helper.add(
      'icmpTypeCode',
      icmpTypeCode,
    );
    helper.add(
      'ipv6CidrBlock',
      ipv6CidrBlock,
    );
    helper.add(
      'portRange',
      portRange,
    );
    helper.add(
      'protocol',
      protocol,
    );
    helper.add(
      'ruleAction',
      ruleAction,
    );
    helper.add(
      'ruleNumber',
      ruleNumber,
    );
    return helper.toString();
  }
}

class NetworkAclEntryEc2QuerySerializer
    extends _i5.StructuredSmithySerializer<NetworkAclEntry> {
  const NetworkAclEntryEc2QuerySerializer() : super('NetworkAclEntry');

  @override
  Iterable<Type> get types => const [
        NetworkAclEntry,
        _$NetworkAclEntry,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  NetworkAclEntry deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NetworkAclEntryBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'cidrBlock':
          result.cidrBlock = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'egress':
          result.egress = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'icmpTypeCode':
          result.icmpTypeCode.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.IcmpTypeCode),
          ) as _i2.IcmpTypeCode));
        case 'ipv6CidrBlock':
          result.ipv6CidrBlock = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'portRange':
          result.portRange.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.PortRange),
          ) as _i3.PortRange));
        case 'protocol':
          result.protocol = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ruleAction':
          result.ruleAction = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.RuleAction),
          ) as _i4.RuleAction);
        case 'ruleNumber':
          result.ruleNumber = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    NetworkAclEntry object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i5.XmlElementName(
        'NetworkAclEntryResponse',
        _i5.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final NetworkAclEntry(
      :cidrBlock,
      :egress,
      :icmpTypeCode,
      :ipv6CidrBlock,
      :portRange,
      :protocol,
      :ruleAction,
      :ruleNumber
    ) = object;
    if (cidrBlock != null) {
      result$
        ..add(const _i5.XmlElementName('CidrBlock'))
        ..add(serializers.serialize(
          cidrBlock,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i5.XmlElementName('Egress'))
      ..add(serializers.serialize(
        egress,
        specifiedType: const FullType(bool),
      ));
    if (icmpTypeCode != null) {
      result$
        ..add(const _i5.XmlElementName('IcmpTypeCode'))
        ..add(serializers.serialize(
          icmpTypeCode,
          specifiedType: const FullType(_i2.IcmpTypeCode),
        ));
    }
    if (ipv6CidrBlock != null) {
      result$
        ..add(const _i5.XmlElementName('Ipv6CidrBlock'))
        ..add(serializers.serialize(
          ipv6CidrBlock,
          specifiedType: const FullType(String),
        ));
    }
    if (portRange != null) {
      result$
        ..add(const _i5.XmlElementName('PortRange'))
        ..add(serializers.serialize(
          portRange,
          specifiedType: const FullType(_i3.PortRange),
        ));
    }
    if (protocol != null) {
      result$
        ..add(const _i5.XmlElementName('Protocol'))
        ..add(serializers.serialize(
          protocol,
          specifiedType: const FullType(String),
        ));
    }
    if (ruleAction != null) {
      result$
        ..add(const _i5.XmlElementName('RuleAction'))
        ..add(serializers.serialize(
          ruleAction,
          specifiedType: const FullType.nullable(_i4.RuleAction),
        ));
    }
    result$
      ..add(const _i5.XmlElementName('RuleNumber'))
      ..add(serializers.serialize(
        ruleNumber,
        specifiedType: const FullType(int),
      ));
    return result$;
  }
}
