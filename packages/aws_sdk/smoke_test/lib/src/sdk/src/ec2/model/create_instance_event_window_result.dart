// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.create_instance_event_window_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_event_window.dart'
    as _i2;

part 'create_instance_event_window_result.g.dart';

abstract class CreateInstanceEventWindowResult
    with
        _i1.AWSEquatable<CreateInstanceEventWindowResult>
    implements
        Built<CreateInstanceEventWindowResult,
            CreateInstanceEventWindowResultBuilder> {
  factory CreateInstanceEventWindowResult(
      {_i2.InstanceEventWindow? instanceEventWindow}) {
    return _$CreateInstanceEventWindowResult._(
        instanceEventWindow: instanceEventWindow);
  }

  factory CreateInstanceEventWindowResult.build(
          [void Function(CreateInstanceEventWindowResultBuilder) updates]) =
      _$CreateInstanceEventWindowResult;

  const CreateInstanceEventWindowResult._();

  /// Constructs a [CreateInstanceEventWindowResult] from a [payload] and [response].
  factory CreateInstanceEventWindowResult.fromResponse(
    CreateInstanceEventWindowResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    CreateInstanceEventWindowResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateInstanceEventWindowResultBuilder b) {}

  /// Information about the event window.
  _i2.InstanceEventWindow? get instanceEventWindow;
  @override
  List<Object?> get props => [instanceEventWindow];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateInstanceEventWindowResult');
    helper.add(
      'instanceEventWindow',
      instanceEventWindow,
    );
    return helper.toString();
  }
}

class CreateInstanceEventWindowResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<CreateInstanceEventWindowResult> {
  const CreateInstanceEventWindowResultEc2QuerySerializer()
      : super('CreateInstanceEventWindowResult');

  @override
  Iterable<Type> get types => const [
        CreateInstanceEventWindowResult,
        _$CreateInstanceEventWindowResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateInstanceEventWindowResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateInstanceEventWindowResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'instanceEventWindow':
          if (value != null) {
            result.instanceEventWindow.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.InstanceEventWindow),
            ) as _i2.InstanceEventWindow));
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as CreateInstanceEventWindowResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'CreateInstanceEventWindowResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.instanceEventWindow != null) {
      result
        ..add(const _i3.XmlElementName('InstanceEventWindow'))
        ..add(serializers.serialize(
          payload.instanceEventWindow!,
          specifiedType: const FullType(_i2.InstanceEventWindow),
        ));
    }
    return result;
  }
}
