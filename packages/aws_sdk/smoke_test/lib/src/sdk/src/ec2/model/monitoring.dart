// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.monitoring; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/monitoring_state.dart' as _i2;

part 'monitoring.g.dart';

/// Describes the monitoring of an instance.
abstract class Monitoring
    with _i1.AWSEquatable<Monitoring>
    implements Built<Monitoring, MonitoringBuilder> {
  /// Describes the monitoring of an instance.
  factory Monitoring({_i2.MonitoringState? state}) {
    return _$Monitoring._(state: state);
  }

  /// Describes the monitoring of an instance.
  factory Monitoring.build([void Function(MonitoringBuilder) updates]) =
      _$Monitoring;

  const Monitoring._();

  static const List<_i3.SmithySerializer> serializers = [
    MonitoringEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MonitoringBuilder b) {}

  /// Indicates whether detailed monitoring is enabled. Otherwise, basic monitoring is enabled.
  _i2.MonitoringState? get state;
  @override
  List<Object?> get props => [state];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Monitoring');
    helper.add(
      'state',
      state,
    );
    return helper.toString();
  }
}

class MonitoringEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<Monitoring> {
  const MonitoringEc2QuerySerializer() : super('Monitoring');

  @override
  Iterable<Type> get types => const [
        Monitoring,
        _$Monitoring,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  Monitoring deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MonitoringBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'state':
          result.state = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.MonitoringState),
          ) as _i2.MonitoringState);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Monitoring object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'MonitoringResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final Monitoring(:state) = object;
    if (state != null) {
      result$
        ..add(const _i3.XmlElementName('State'))
        ..add(serializers.serialize(
          state,
          specifiedType: const FullType.nullable(_i2.MonitoringState),
        ));
    }
    return result$;
  }
}
