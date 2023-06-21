// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.account_attribute; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/account_attribute_value.dart'
    as _i2;

part 'account_attribute.g.dart';

/// Describes an account attribute.
abstract class AccountAttribute
    with _i1.AWSEquatable<AccountAttribute>
    implements Built<AccountAttribute, AccountAttributeBuilder> {
  /// Describes an account attribute.
  factory AccountAttribute({
    String? attributeName,
    List<_i2.AccountAttributeValue>? attributeValues,
  }) {
    return _$AccountAttribute._(
      attributeName: attributeName,
      attributeValues:
          attributeValues == null ? null : _i3.BuiltList(attributeValues),
    );
  }

  /// Describes an account attribute.
  factory AccountAttribute.build(
      [void Function(AccountAttributeBuilder) updates]) = _$AccountAttribute;

  const AccountAttribute._();

  static const List<_i4.SmithySerializer> serializers = [
    AccountAttributeEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AccountAttributeBuilder b) {}

  /// The name of the account attribute.
  String? get attributeName;

  /// The values for the account attribute.
  _i3.BuiltList<_i2.AccountAttributeValue>? get attributeValues;
  @override
  List<Object?> get props => [
        attributeName,
        attributeValues,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AccountAttribute');
    helper.add(
      'attributeName',
      attributeName,
    );
    helper.add(
      'attributeValues',
      attributeValues,
    );
    return helper.toString();
  }
}

class AccountAttributeEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<AccountAttribute> {
  const AccountAttributeEc2QuerySerializer() : super('AccountAttribute');

  @override
  Iterable<Type> get types => const [
        AccountAttribute,
        _$AccountAttribute,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AccountAttribute deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AccountAttributeBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'attributeName':
          result.attributeName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'attributeValueSet':
          result.attributeValues.replace((const _i4.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i4.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(_i2.AccountAttributeValue)],
            ),
          ) as _i3.BuiltList<_i2.AccountAttributeValue>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    AccountAttribute object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i4.XmlElementName(
        'AccountAttributeResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final AccountAttribute(:attributeName, :attributeValues) = object;
    if (attributeName != null) {
      result$
        ..add(const _i4.XmlElementName('AttributeName'))
        ..add(serializers.serialize(
          attributeName,
          specifiedType: const FullType(String),
        ));
    }
    if (attributeValues != null) {
      result$
        ..add(const _i4.XmlElementName('AttributeValueSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          attributeValues,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.AccountAttributeValue)],
          ),
        ));
    }
    return result$;
  }
}
