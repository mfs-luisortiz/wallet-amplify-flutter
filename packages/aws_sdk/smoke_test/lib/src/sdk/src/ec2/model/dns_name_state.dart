// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.dns_name_state; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class DnsNameState extends _i1.SmithyEnum<DnsNameState> {
  const DnsNameState._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const DnsNameState._sdkUnknown(String value) : super.sdkUnknown(value);

  static const failed = DnsNameState._(
    0,
    'Failed',
    'failed',
  );

  static const pendingVerification = DnsNameState._(
    1,
    'PendingVerification',
    'pendingVerification',
  );

  static const verified = DnsNameState._(
    2,
    'Verified',
    'verified',
  );

  /// All values of [DnsNameState].
  static const values = <DnsNameState>[
    DnsNameState.failed,
    DnsNameState.pendingVerification,
    DnsNameState.verified,
  ];

  static const List<_i1.SmithySerializer<DnsNameState>> serializers = [
    _i1.SmithyEnumSerializer(
      'DnsNameState',
      values: values,
      sdkUnknown: DnsNameState._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension DnsNameStateHelpers on List<DnsNameState> {
  /// Returns the value of [DnsNameState] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  DnsNameState byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [DnsNameState] whose value matches [value].
  DnsNameState byValue(String value) => firstWhere((el) => el.value == value);
}
