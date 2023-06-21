// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.associate_iam_instance_profile_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/iam_instance_profile_association.dart'
    as _i2;

part 'associate_iam_instance_profile_result.g.dart';

abstract class AssociateIamInstanceProfileResult
    with
        _i1.AWSEquatable<AssociateIamInstanceProfileResult>
    implements
        Built<AssociateIamInstanceProfileResult,
            AssociateIamInstanceProfileResultBuilder> {
  factory AssociateIamInstanceProfileResult(
      {_i2.IamInstanceProfileAssociation? iamInstanceProfileAssociation}) {
    return _$AssociateIamInstanceProfileResult._(
        iamInstanceProfileAssociation: iamInstanceProfileAssociation);
  }

  factory AssociateIamInstanceProfileResult.build(
          [void Function(AssociateIamInstanceProfileResultBuilder) updates]) =
      _$AssociateIamInstanceProfileResult;

  const AssociateIamInstanceProfileResult._();

  /// Constructs a [AssociateIamInstanceProfileResult] from a [payload] and [response].
  factory AssociateIamInstanceProfileResult.fromResponse(
    AssociateIamInstanceProfileResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    AssociateIamInstanceProfileResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AssociateIamInstanceProfileResultBuilder b) {}

  /// Information about the IAM instance profile association.
  _i2.IamInstanceProfileAssociation? get iamInstanceProfileAssociation;
  @override
  List<Object?> get props => [iamInstanceProfileAssociation];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('AssociateIamInstanceProfileResult');
    helper.add(
      'iamInstanceProfileAssociation',
      iamInstanceProfileAssociation,
    );
    return helper.toString();
  }
}

class AssociateIamInstanceProfileResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<AssociateIamInstanceProfileResult> {
  const AssociateIamInstanceProfileResultEc2QuerySerializer()
      : super('AssociateIamInstanceProfileResult');

  @override
  Iterable<Type> get types => const [
        AssociateIamInstanceProfileResult,
        _$AssociateIamInstanceProfileResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AssociateIamInstanceProfileResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AssociateIamInstanceProfileResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'iamInstanceProfileAssociation':
          result.iamInstanceProfileAssociation.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.IamInstanceProfileAssociation),
          ) as _i2.IamInstanceProfileAssociation));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    AssociateIamInstanceProfileResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'AssociateIamInstanceProfileResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final AssociateIamInstanceProfileResult(:iamInstanceProfileAssociation) =
        object;
    if (iamInstanceProfileAssociation != null) {
      result$
        ..add(const _i3.XmlElementName('IamInstanceProfileAssociation'))
        ..add(serializers.serialize(
          iamInstanceProfileAssociation,
          specifiedType: const FullType(_i2.IamInstanceProfileAssociation),
        ));
    }
    return result$;
  }
}
