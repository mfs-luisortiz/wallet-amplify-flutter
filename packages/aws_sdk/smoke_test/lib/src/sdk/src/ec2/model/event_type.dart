// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.event_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class EventType extends _i1.SmithyEnum<EventType> {
  const EventType._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const EventType._sdkUnknown(String value) : super.sdkUnknown(value);

  static const batchChange = EventType._(
    0,
    'BATCH_CHANGE',
    'fleetRequestChange',
  );

  static const error = EventType._(
    1,
    'ERROR',
    'error',
  );

  static const information = EventType._(
    2,
    'INFORMATION',
    'information',
  );

  static const instanceChange = EventType._(
    3,
    'INSTANCE_CHANGE',
    'instanceChange',
  );

  /// All values of [EventType].
  static const values = <EventType>[
    EventType.batchChange,
    EventType.error,
    EventType.information,
    EventType.instanceChange,
  ];

  static const List<_i1.SmithySerializer<EventType>> serializers = [
    _i1.SmithyEnumSerializer(
      'EventType',
      values: values,
      sdkUnknown: EventType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension EventTypeHelpers on List<EventType> {
  /// Returns the value of [EventType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  EventType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [EventType] whose value matches [value].
  EventType byValue(String value) => firstWhere((el) => el.value == value);
}
