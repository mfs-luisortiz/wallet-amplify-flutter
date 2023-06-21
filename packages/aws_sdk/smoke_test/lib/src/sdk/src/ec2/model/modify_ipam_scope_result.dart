// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.modify_ipam_scope_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_scope.dart' as _i2;

part 'modify_ipam_scope_result.g.dart';

abstract class ModifyIpamScopeResult
    with _i1.AWSEquatable<ModifyIpamScopeResult>
    implements Built<ModifyIpamScopeResult, ModifyIpamScopeResultBuilder> {
  factory ModifyIpamScopeResult({_i2.IpamScope? ipamScope}) {
    return _$ModifyIpamScopeResult._(ipamScope: ipamScope);
  }

  factory ModifyIpamScopeResult.build(
          [void Function(ModifyIpamScopeResultBuilder) updates]) =
      _$ModifyIpamScopeResult;

  const ModifyIpamScopeResult._();

  /// Constructs a [ModifyIpamScopeResult] from a [payload] and [response].
  factory ModifyIpamScopeResult.fromResponse(
    ModifyIpamScopeResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    ModifyIpamScopeResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyIpamScopeResultBuilder b) {}

  /// The results of the modification.
  _i2.IpamScope? get ipamScope;
  @override
  List<Object?> get props => [ipamScope];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ModifyIpamScopeResult');
    helper.add(
      'ipamScope',
      ipamScope,
    );
    return helper.toString();
  }
}

class ModifyIpamScopeResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<ModifyIpamScopeResult> {
  const ModifyIpamScopeResultEc2QuerySerializer()
      : super('ModifyIpamScopeResult');

  @override
  Iterable<Type> get types => const [
        ModifyIpamScopeResult,
        _$ModifyIpamScopeResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyIpamScopeResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyIpamScopeResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ipamScope':
          result.ipamScope.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.IpamScope),
          ) as _i2.IpamScope));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ModifyIpamScopeResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'ModifyIpamScopeResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ModifyIpamScopeResult(:ipamScope) = object;
    if (ipamScope != null) {
      result$
        ..add(const _i3.XmlElementName('IpamScope'))
        ..add(serializers.serialize(
          ipamScope,
          specifiedType: const FullType(_i2.IpamScope),
        ));
    }
    return result$;
  }
}
