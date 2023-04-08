// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.connection_notification_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ConnectionNotificationType
    extends _i1.SmithyEnum<ConnectionNotificationType> {
  const ConnectionNotificationType._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const ConnectionNotificationType._sdkUnknown(String value)
      : super.sdkUnknown(value);

  static const topic = ConnectionNotificationType._(
    0,
    'Topic',
    'Topic',
  );

  /// All values of [ConnectionNotificationType].
  static const values = <ConnectionNotificationType>[
    ConnectionNotificationType.topic
  ];

  static const List<_i1.SmithySerializer<ConnectionNotificationType>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'ConnectionNotificationType',
      values: values,
      sdkUnknown: ConnectionNotificationType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension ConnectionNotificationTypeHelpers
    on List<ConnectionNotificationType> {
  /// Returns the value of [ConnectionNotificationType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ConnectionNotificationType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ConnectionNotificationType] whose value matches [value].
  ConnectionNotificationType byValue(String value) =>
      firstWhere((el) => el.value == value);
}
