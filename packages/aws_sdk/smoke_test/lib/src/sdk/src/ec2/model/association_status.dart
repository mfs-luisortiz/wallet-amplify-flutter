// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.association_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/association_status_code.dart'
    as _i2;

part 'association_status.g.dart';

/// Describes the state of a target network association.
abstract class AssociationStatus
    with _i1.AWSEquatable<AssociationStatus>
    implements Built<AssociationStatus, AssociationStatusBuilder> {
  /// Describes the state of a target network association.
  factory AssociationStatus({
    _i2.AssociationStatusCode? code,
    String? message,
  }) {
    return _$AssociationStatus._(
      code: code,
      message: message,
    );
  }

  /// Describes the state of a target network association.
  factory AssociationStatus.build(
      [void Function(AssociationStatusBuilder) updates]) = _$AssociationStatus;

  const AssociationStatus._();

  static const List<_i3.SmithySerializer> serializers = [
    AssociationStatusEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AssociationStatusBuilder b) {}

  /// The state of the target network association.
  _i2.AssociationStatusCode? get code;

  /// A message about the status of the target network association, if applicable.
  String? get message;
  @override
  List<Object?> get props => [
        code,
        message,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AssociationStatus');
    helper.add(
      'code',
      code,
    );
    helper.add(
      'message',
      message,
    );
    return helper.toString();
  }
}

class AssociationStatusEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<AssociationStatus> {
  const AssociationStatusEc2QuerySerializer() : super('AssociationStatus');

  @override
  Iterable<Type> get types => const [
        AssociationStatus,
        _$AssociationStatus,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AssociationStatus deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AssociationStatusBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'code':
          result.code = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.AssociationStatusCode),
          ) as _i2.AssociationStatusCode);
        case 'message':
          result.message = (serializers.deserialize(
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
    AssociationStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'AssociationStatusResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final AssociationStatus(:code, :message) = object;
    if (code != null) {
      result$
        ..add(const _i3.XmlElementName('Code'))
        ..add(serializers.serialize(
          code,
          specifiedType: const FullType.nullable(_i2.AssociationStatusCode),
        ));
    }
    if (message != null) {
      result$
        ..add(const _i3.XmlElementName('Message'))
        ..add(serializers.serialize(
          message,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
