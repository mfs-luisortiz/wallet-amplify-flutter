// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.associate_instance_event_window_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_event_window.dart'
    as _i2;

part 'associate_instance_event_window_result.g.dart';

abstract class AssociateInstanceEventWindowResult
    with
        _i1.AWSEquatable<AssociateInstanceEventWindowResult>
    implements
        Built<AssociateInstanceEventWindowResult,
            AssociateInstanceEventWindowResultBuilder> {
  factory AssociateInstanceEventWindowResult(
      {_i2.InstanceEventWindow? instanceEventWindow}) {
    return _$AssociateInstanceEventWindowResult._(
        instanceEventWindow: instanceEventWindow);
  }

  factory AssociateInstanceEventWindowResult.build(
          [void Function(AssociateInstanceEventWindowResultBuilder) updates]) =
      _$AssociateInstanceEventWindowResult;

  const AssociateInstanceEventWindowResult._();

  /// Constructs a [AssociateInstanceEventWindowResult] from a [payload] and [response].
  factory AssociateInstanceEventWindowResult.fromResponse(
    AssociateInstanceEventWindowResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    AssociateInstanceEventWindowResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AssociateInstanceEventWindowResultBuilder b) {}

  /// Information about the event window.
  _i2.InstanceEventWindow? get instanceEventWindow;
  @override
  List<Object?> get props => [instanceEventWindow];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('AssociateInstanceEventWindowResult');
    helper.add(
      'instanceEventWindow',
      instanceEventWindow,
    );
    return helper.toString();
  }
}

class AssociateInstanceEventWindowResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<AssociateInstanceEventWindowResult> {
  const AssociateInstanceEventWindowResultEc2QuerySerializer()
      : super('AssociateInstanceEventWindowResult');

  @override
  Iterable<Type> get types => const [
        AssociateInstanceEventWindowResult,
        _$AssociateInstanceEventWindowResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AssociateInstanceEventWindowResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AssociateInstanceEventWindowResultBuilder();
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
    AssociateInstanceEventWindowResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'AssociateInstanceEventWindowResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final AssociateInstanceEventWindowResult(:instanceEventWindow) = object;
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
