// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.authorize_security_group_egress_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/security_group_rule.dart'
    as _i2;

part 'authorize_security_group_egress_result.g.dart';

abstract class AuthorizeSecurityGroupEgressResult
    with
        _i1.AWSEquatable<AuthorizeSecurityGroupEgressResult>
    implements
        Built<AuthorizeSecurityGroupEgressResult,
            AuthorizeSecurityGroupEgressResultBuilder> {
  factory AuthorizeSecurityGroupEgressResult({
    bool? return_,
    List<_i2.SecurityGroupRule>? securityGroupRules,
  }) {
    return_ ??= false;
    return _$AuthorizeSecurityGroupEgressResult._(
      return_: return_,
      securityGroupRules:
          securityGroupRules == null ? null : _i3.BuiltList(securityGroupRules),
    );
  }

  factory AuthorizeSecurityGroupEgressResult.build(
          [void Function(AuthorizeSecurityGroupEgressResultBuilder) updates]) =
      _$AuthorizeSecurityGroupEgressResult;

  const AuthorizeSecurityGroupEgressResult._();

  /// Constructs a [AuthorizeSecurityGroupEgressResult] from a [payload] and [response].
  factory AuthorizeSecurityGroupEgressResult.fromResponse(
    AuthorizeSecurityGroupEgressResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    AuthorizeSecurityGroupEgressResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AuthorizeSecurityGroupEgressResultBuilder b) {
    b.return_ = false;
  }

  /// Returns `true` if the request succeeds; otherwise, returns an error.
  bool get return_;

  /// Information about the outbound (egress) security group rules that were added.
  _i3.BuiltList<_i2.SecurityGroupRule>? get securityGroupRules;
  @override
  List<Object?> get props => [
        return_,
        securityGroupRules,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('AuthorizeSecurityGroupEgressResult');
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

class AuthorizeSecurityGroupEgressResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<AuthorizeSecurityGroupEgressResult> {
  const AuthorizeSecurityGroupEgressResultEc2QuerySerializer()
      : super('AuthorizeSecurityGroupEgressResult');

  @override
  Iterable<Type> get types => const [
        AuthorizeSecurityGroupEgressResult,
        _$AuthorizeSecurityGroupEgressResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AuthorizeSecurityGroupEgressResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AuthorizeSecurityGroupEgressResultBuilder();
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
    AuthorizeSecurityGroupEgressResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i4.XmlElementName(
        'AuthorizeSecurityGroupEgressResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final AuthorizeSecurityGroupEgressResult(:return_, :securityGroupRules) =
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
