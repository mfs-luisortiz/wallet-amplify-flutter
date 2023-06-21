// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.authorize_security_group_ingress_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/security_group_rule.dart'
    as _i2;

part 'authorize_security_group_ingress_result.g.dart';

abstract class AuthorizeSecurityGroupIngressResult
    with
        _i1.AWSEquatable<AuthorizeSecurityGroupIngressResult>
    implements
        Built<AuthorizeSecurityGroupIngressResult,
            AuthorizeSecurityGroupIngressResultBuilder> {
  factory AuthorizeSecurityGroupIngressResult({
    bool? return_,
    List<_i2.SecurityGroupRule>? securityGroupRules,
  }) {
    return_ ??= false;
    return _$AuthorizeSecurityGroupIngressResult._(
      return_: return_,
      securityGroupRules:
          securityGroupRules == null ? null : _i3.BuiltList(securityGroupRules),
    );
  }

  factory AuthorizeSecurityGroupIngressResult.build(
          [void Function(AuthorizeSecurityGroupIngressResultBuilder) updates]) =
      _$AuthorizeSecurityGroupIngressResult;

  const AuthorizeSecurityGroupIngressResult._();

  /// Constructs a [AuthorizeSecurityGroupIngressResult] from a [payload] and [response].
  factory AuthorizeSecurityGroupIngressResult.fromResponse(
    AuthorizeSecurityGroupIngressResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    AuthorizeSecurityGroupIngressResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AuthorizeSecurityGroupIngressResultBuilder b) {
    b.return_ = false;
  }

  /// Returns `true` if the request succeeds; otherwise, returns an error.
  bool get return_;

  /// Information about the inbound (ingress) security group rules that were added.
  _i3.BuiltList<_i2.SecurityGroupRule>? get securityGroupRules;
  @override
  List<Object?> get props => [
        return_,
        securityGroupRules,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('AuthorizeSecurityGroupIngressResult');
    helper.add(
      'return_',
      return_,
    );
    helper.add(
      'securityGroupRules',
      securityGroupRules,
    );
    return helper.toString();
  }
}

class AuthorizeSecurityGroupIngressResultEc2QuerySerializer extends _i4
    .StructuredSmithySerializer<AuthorizeSecurityGroupIngressResult> {
  const AuthorizeSecurityGroupIngressResultEc2QuerySerializer()
      : super('AuthorizeSecurityGroupIngressResult');

  @override
  Iterable<Type> get types => const [
        AuthorizeSecurityGroupIngressResult,
        _$AuthorizeSecurityGroupIngressResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AuthorizeSecurityGroupIngressResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AuthorizeSecurityGroupIngressResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'return':
          result.return_ = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'securityGroupRuleSet':
          result.securityGroupRules.replace((const _i4.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i4.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(_i2.SecurityGroupRule)],
            ),
          ) as _i3.BuiltList<_i2.SecurityGroupRule>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    AuthorizeSecurityGroupIngressResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i4.XmlElementName(
        'AuthorizeSecurityGroupIngressResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final AuthorizeSecurityGroupIngressResult(:return_, :securityGroupRules) =
        object;
    result$
      ..add(const _i4.XmlElementName('Return'))
      ..add(serializers.serialize(
        return_,
        specifiedType: const FullType(bool),
      ));
    if (securityGroupRules != null) {
      result$
        ..add(const _i4.XmlElementName('SecurityGroupRuleSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          securityGroupRules,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.SecurityGroupRule)],
          ),
        ));
    }
    return result$;
  }
}
