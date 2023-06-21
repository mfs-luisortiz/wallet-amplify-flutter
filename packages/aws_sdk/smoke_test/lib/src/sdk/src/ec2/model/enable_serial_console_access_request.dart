// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.enable_serial_console_access_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'enable_serial_console_access_request.g.dart';

abstract class EnableSerialConsoleAccessRequest
    with
        _i1.HttpInput<EnableSerialConsoleAccessRequest>,
        _i2.AWSEquatable<EnableSerialConsoleAccessRequest>
    implements
        Built<EnableSerialConsoleAccessRequest,
            EnableSerialConsoleAccessRequestBuilder> {
  factory EnableSerialConsoleAccessRequest({bool? dryRun}) {
    dryRun ??= false;
    return _$EnableSerialConsoleAccessRequest._(dryRun: dryRun);
  }

  factory EnableSerialConsoleAccessRequest.build(
          [void Function(EnableSerialConsoleAccessRequestBuilder) updates]) =
      _$EnableSerialConsoleAccessRequest;

  const EnableSerialConsoleAccessRequest._();

  factory EnableSerialConsoleAccessRequest.fromRequest(
    EnableSerialConsoleAccessRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    EnableSerialConsoleAccessRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(EnableSerialConsoleAccessRequestBuilder b) {
    b.dryRun = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  EnableSerialConsoleAccessRequest getPayload() => this;
  @override
  List<Object?> get props => [dryRun];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('EnableSerialConsoleAccessRequest');
    helper.add(
      'dryRun',
      dryRun,
    );
    return helper.toString();
  }
}

class EnableSerialConsoleAccessRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<EnableSerialConsoleAccessRequest> {
  const EnableSerialConsoleAccessRequestEc2QuerySerializer()
      : super('EnableSerialConsoleAccessRequest');

  @override
  Iterable<Type> get types => const [
        EnableSerialConsoleAccessRequest,
        _$EnableSerialConsoleAccessRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  EnableSerialConsoleAccessRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EnableSerialConsoleAccessRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    EnableSerialConsoleAccessRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'EnableSerialConsoleAccessRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final EnableSerialConsoleAccessRequest(:dryRun) = object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
