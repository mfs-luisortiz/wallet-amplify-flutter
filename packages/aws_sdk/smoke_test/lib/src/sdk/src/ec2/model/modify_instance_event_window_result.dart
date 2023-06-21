// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.modify_instance_event_window_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_event_window.dart'
    as _i2;

part 'modify_instance_event_window_result.g.dart';

abstract class ModifyInstanceEventWindowResult
    with
        _i1.AWSEquatable<ModifyInstanceEventWindowResult>
    implements
        Built<ModifyInstanceEventWindowResult,
            ModifyInstanceEventWindowResultBuilder> {
  factory ModifyInstanceEventWindowResult(
      {_i2.InstanceEventWindow? instanceEventWindow}) {
    return _$ModifyInstanceEventWindowResult._(
        instanceEventWindow: instanceEventWindow);
  }

  factory ModifyInstanceEventWindowResult.build(
          [void Function(ModifyInstanceEventWindowResultBuilder) updates]) =
      _$ModifyInstanceEventWindowResult;

  const ModifyInstanceEventWindowResult._();

  /// Constructs a [ModifyInstanceEventWindowResult] from a [payload] and [response].
  factory ModifyInstanceEventWindowResult.fromResponse(
    ModifyInstanceEventWindowResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    ModifyInstanceEventWindowResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyInstanceEventWindowResultBuilder b) {}

  /// Information about the event window.
  _i2.InstanceEventWindow? get instanceEventWindow;
  @override
  List<Object?> get props => [instanceEventWindow];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ModifyInstanceEventWindowResult');
    helper.add(
      'instanceEventWindow',
      instanceEventWindow,
    );
    return helper.toString();
  }
}

class ModifyInstanceEventWindowResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<ModifyInstanceEventWindowResult> {
  const ModifyInstanceEventWindowResultEc2QuerySerializer()
      : super('ModifyInstanceEventWindowResult');

  @override
  Iterable<Type> get types => const [
        ModifyInstanceEventWindowResult,
        _$ModifyInstanceEventWindowResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyInstanceEventWindowResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyInstanceEventWindowResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'instanceEventWindow':
          result.instanceEventWindow.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.InstanceEventWindow),
          ) as _i2.InstanceEventWindow));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ModifyInstanceEventWindowResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'ModifyInstanceEventWindowResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ModifyInstanceEventWindowResult(:instanceEventWindow) = object;
    if (instanceEventWindow != null) {
      result$
        ..add(const _i3.XmlElementName('InstanceEventWindow'))
        ..add(serializers.serialize(
          instanceEventWindow,
          specifiedType: const FullType(_i2.InstanceEventWindow),
        ));
    }
    return result$;
  }
}
