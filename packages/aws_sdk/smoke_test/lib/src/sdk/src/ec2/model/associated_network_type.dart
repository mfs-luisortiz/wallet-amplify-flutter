// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.associated_network_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class AssociatedNetworkType extends _i1.SmithyEnum<AssociatedNetworkType> {
  const AssociatedNetworkType._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const AssociatedNetworkType._sdkUnknown(String value)
      : super.sdkUnknown(value);

  static const vpc = AssociatedNetworkType._(
    0,
    'vpc',
    'vpc',
  );

  /// All values of [AssociatedNetworkType].
  static const values = <AssociatedNetworkType>[AssociatedNetworkType.vpc];

  static const List<_i1.SmithySerializer<AssociatedNetworkType>> serializers = [
    _i1.SmithyEnumSerializer(
      'AssociatedNetworkType',
      values: values,
      sdkUnknown: AssociatedNetworkType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension AssociatedNetworkTypeHelpers on List<AssociatedNetworkType> {
  /// Returns the value of [AssociatedNetworkType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  AssociatedNetworkType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [AssociatedNetworkType] whose value matches [value].
  AssociatedNetworkType byValue(String value) =>
      firstWhere((el) => el.value == value);
}
