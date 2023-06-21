// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.tpm_support_values; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class TpmSupportValues extends _i1.SmithyEnum<TpmSupportValues> {
  const TpmSupportValues._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const TpmSupportValues._sdkUnknown(String value) : super.sdkUnknown(value);

  static const v20 = TpmSupportValues._(
    0,
    'v2_0',
    'v2.0',
  );

  /// All values of [TpmSupportValues].
  static const values = <TpmSupportValues>[TpmSupportValues.v20];

  static const List<_i1.SmithySerializer<TpmSupportValues>> serializers = [
    _i1.SmithyEnumSerializer(
      'TpmSupportValues',
      values: values,
      sdkUnknown: TpmSupportValues._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension TpmSupportValuesHelpers on List<TpmSupportValues> {
  /// Returns the value of [TpmSupportValues] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  TpmSupportValues byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [TpmSupportValues] whose value matches [value].
  TpmSupportValues byValue(String value) =>
      firstWhere((el) => el.value == value);
}
