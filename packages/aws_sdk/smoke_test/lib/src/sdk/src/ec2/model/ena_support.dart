// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.ena_support; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class EnaSupport extends _i1.SmithyEnum<EnaSupport> {
  const EnaSupport._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const EnaSupport._sdkUnknown(String value) : super.sdkUnknown(value);

  static const required = EnaSupport._(
    0,
    'required',
    'required',
  );

  static const supported = EnaSupport._(
    1,
    'supported',
    'supported',
  );

  static const unsupported = EnaSupport._(
    2,
    'unsupported',
    'unsupported',
  );

  /// All values of [EnaSupport].
  static const values = <EnaSupport>[
    EnaSupport.required,
    EnaSupport.supported,
    EnaSupport.unsupported,
  ];

  static const List<_i1.SmithySerializer<EnaSupport>> serializers = [
    _i1.SmithyEnumSerializer(
      'EnaSupport',
      values: values,
      sdkUnknown: EnaSupport._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension EnaSupportHelpers on List<EnaSupport> {
  /// Returns the value of [EnaSupport] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  EnaSupport byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [EnaSupport] whose value matches [value].
  EnaSupport byValue(String value) => firstWhere((el) => el.value == value);
}
