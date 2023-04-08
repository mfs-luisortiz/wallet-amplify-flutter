// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.modify_availability_zone_opt_in_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ModifyAvailabilityZoneOptInStatus
    extends _i1.SmithyEnum<ModifyAvailabilityZoneOptInStatus> {
  const ModifyAvailabilityZoneOptInStatus._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const ModifyAvailabilityZoneOptInStatus._sdkUnknown(String value)
      : super.sdkUnknown(value);

  static const notOptedIn = ModifyAvailabilityZoneOptInStatus._(
    0,
    'not_opted_in',
    'not-opted-in',
  );

  static const optedIn = ModifyAvailabilityZoneOptInStatus._(
    1,
    'opted_in',
    'opted-in',
  );

  /// All values of [ModifyAvailabilityZoneOptInStatus].
  static const values = <ModifyAvailabilityZoneOptInStatus>[
    ModifyAvailabilityZoneOptInStatus.notOptedIn,
    ModifyAvailabilityZoneOptInStatus.optedIn,
  ];

  static const List<_i1.SmithySerializer<ModifyAvailabilityZoneOptInStatus>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'ModifyAvailabilityZoneOptInStatus',
      values: values,
      sdkUnknown: ModifyAvailabilityZoneOptInStatus._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension ModifyAvailabilityZoneOptInStatusHelpers
    on List<ModifyAvailabilityZoneOptInStatus> {
  /// Returns the value of [ModifyAvailabilityZoneOptInStatus] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ModifyAvailabilityZoneOptInStatus byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ModifyAvailabilityZoneOptInStatus] whose value matches [value].
  ModifyAvailabilityZoneOptInStatus byValue(String value) =>
      firstWhere((el) => el.value == value);
}
