// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.tenancy; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class Tenancy extends _i1.SmithyEnum<Tenancy> {
  const Tenancy._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const Tenancy._sdkUnknown(String value) : super.sdkUnknown(value);

  static const dedicated = Tenancy._(
    0,
    'dedicated',
    'dedicated',
  );

  static const default$ = Tenancy._(
    1,
    'default',
    'default',
  );

  static const host = Tenancy._(
    2,
    'host',
    'host',
  );

  /// All values of [Tenancy].
  static const values = <Tenancy>[
    Tenancy.dedicated,
    Tenancy.default$,
    Tenancy.host,
  ];

  static const List<_i1.SmithySerializer<Tenancy>> serializers = [
    _i1.SmithyEnumSerializer(
      'Tenancy',
      values: values,
      sdkUnknown: Tenancy._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension TenancyHelpers on List<Tenancy> {
  /// Returns the value of [Tenancy] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  Tenancy byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [Tenancy] whose value matches [value].
  Tenancy byValue(String value) => firstWhere((el) => el.value == value);
}
