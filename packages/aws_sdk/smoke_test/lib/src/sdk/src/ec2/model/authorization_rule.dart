// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.authorization_rule; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/client_vpn_authorization_rule_status.dart'
    as _i2;

part 'authorization_rule.g.dart';

/// Information about an authorization rule.
abstract class AuthorizationRule
    with _i1.AWSEquatable<AuthorizationRule>
    implements Built<AuthorizationRule, AuthorizationRuleBuilder> {
  /// Information about an authorization rule.
  factory AuthorizationRule({
    String? clientVpnEndpointId,
    String? description,
    String? groupId,
    bool? accessAll,
    String? destinationCidr,
    _i2.ClientVpnAuthorizationRuleStatus? status,
  }) {
    accessAll ??= false;
    return _$AuthorizationRule._(
      clientVpnEndpointId: clientVpnEndpointId,
      description: description,
      groupId: groupId,
      accessAll: accessAll,
      destinationCidr: destinationCidr,
      status: status,
    );
  }

  /// Information about an authorization rule.
  factory AuthorizationRule.build(
      [void Function(AuthorizationRuleBuilder) updates]) = _$AuthorizationRule;

  const AuthorizationRule._();

  static const List<_i3.SmithySerializer> serializers = [
    AuthorizationRuleEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AuthorizationRuleBuilder b) {
    b.accessAll = false;
  }

  /// The ID of the Client VPN endpoint with which the authorization rule is associated.
  String? get clientVpnEndpointId;

  /// A brief description of the authorization rule.
  String? get description;

  /// The ID of the Active Directory group to which the authorization rule grants access.
  String? get groupId;

  /// Indicates whether the authorization rule grants access to all clients.
  bool get accessAll;

  /// The IPv4 address range, in CIDR notation, of the network to which the authorization rule applies.
  String? get destinationCidr;

  /// The current state of the authorization rule.
  _i2.ClientVpnAuthorizationRuleStatus? get status;
  @override
  List<Object?> get props => [
        clientVpnEndpointId,
        description,
        groupId,
        accessAll,
        destinationCidr,
        status,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AuthorizationRule');
    helper.add(
      'clientVpnEndpointId',
      clientVpnEndpointId,
    );
    helper.add(
      'description',
      description,
    );
    helper.add(
      'groupId',
      groupId,
    );
    helper.add(
      'accessAll',
      accessAll,
    );
    helper.add(
      'destinationCidr',
      destinationCidr,
    );
    helper.add(
      'status',
      status,
    );
    return helper.toString();
  }
}

class AuthorizationRuleEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<AuthorizationRule> {
  const AuthorizationRuleEc2QuerySerializer() : super('AuthorizationRule');

  @override
  Iterable<Type> get types => const [
        AuthorizationRule,
        _$AuthorizationRule,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AuthorizationRule deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AuthorizationRuleBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'clientVpnEndpointId':
          result.clientVpnEndpointId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'description':
          result.description = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'groupId':
          result.groupId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'accessAll':
          result.accessAll = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'destinationCidr':
          result.destinationCidr = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'status':
          result.status.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.ClientVpnAuthorizationRuleStatus),
          ) as _i2.ClientVpnAuthorizationRuleStatus));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    AuthorizationRule object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'AuthorizationRuleResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final AuthorizationRule(
      :clientVpnEndpointId,
      :description,
      :groupId,
      :accessAll,
      :destinationCidr,
      :status
    ) = object;
    if (clientVpnEndpointId != null) {
      result$
        ..add(const _i3.XmlElementName('ClientVpnEndpointId'))
        ..add(serializers.serialize(
          clientVpnEndpointId,
          specifiedType: const FullType(String),
        ));
    }
    if (description != null) {
      result$
        ..add(const _i3.XmlElementName('Description'))
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(String),
        ));
    }
    if (groupId != null) {
      result$
        ..add(const _i3.XmlElementName('GroupId'))
        ..add(serializers.serialize(
          groupId,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('AccessAll'))
      ..add(serializers.serialize(
        accessAll,
        specifiedType: const FullType(bool),
      ));
    if (destinationCidr != null) {
      result$
        ..add(const _i3.XmlElementName('DestinationCidr'))
        ..add(serializers.serialize(
          destinationCidr,
          specifiedType: const FullType(String),
        ));
    }
    if (status != null) {
      result$
        ..add(const _i3.XmlElementName('Status'))
        ..add(serializers.serialize(
          status,
          specifiedType: const FullType(_i2.ClientVpnAuthorizationRuleStatus),
        ));
    }
    return result$;
  }
}
