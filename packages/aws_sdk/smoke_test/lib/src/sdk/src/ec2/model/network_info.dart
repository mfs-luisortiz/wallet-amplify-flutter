// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.network_info; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i6;
import 'package:smoke_test/src/sdk/src/ec2/model/efa_info.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/ena_support.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/network_card_info.dart' as _i2;

part 'network_info.g.dart';

/// Describes the networking features of the instance type.
abstract class NetworkInfo
    with _i1.AWSEquatable<NetworkInfo>
    implements Built<NetworkInfo, NetworkInfoBuilder> {
  /// Describes the networking features of the instance type.
  factory NetworkInfo({
    String? networkPerformance,
    int? maximumNetworkInterfaces,
    int? maximumNetworkCards,
    int? defaultNetworkCardIndex,
    List<_i2.NetworkCardInfo>? networkCards,
    int? ipv4AddressesPerInterface,
    int? ipv6AddressesPerInterface,
    bool? ipv6Supported,
    _i3.EnaSupport? enaSupport,
    bool? efaSupported,
    _i4.EfaInfo? efaInfo,
    bool? encryptionInTransitSupported,
  }) {
    return _$NetworkInfo._(
      networkPerformance: networkPerformance,
      maximumNetworkInterfaces: maximumNetworkInterfaces,
      maximumNetworkCards: maximumNetworkCards,
      defaultNetworkCardIndex: defaultNetworkCardIndex,
      networkCards: networkCards == null ? null : _i5.BuiltList(networkCards),
      ipv4AddressesPerInterface: ipv4AddressesPerInterface,
      ipv6AddressesPerInterface: ipv6AddressesPerInterface,
      ipv6Supported: ipv6Supported,
      enaSupport: enaSupport,
      efaSupported: efaSupported,
      efaInfo: efaInfo,
      encryptionInTransitSupported: encryptionInTransitSupported,
    );
  }

  /// Describes the networking features of the instance type.
  factory NetworkInfo.build([void Function(NetworkInfoBuilder) updates]) =
      _$NetworkInfo;

  const NetworkInfo._();

  static const List<_i6.SmithySerializer> serializers = [
    NetworkInfoEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(NetworkInfoBuilder b) {}

  /// The network performance.
  String? get networkPerformance;

  /// The maximum number of network interfaces for the instance type.
  int? get maximumNetworkInterfaces;

  /// The maximum number of physical network cards that can be allocated to the instance.
  int? get maximumNetworkCards;

  /// The index of the default network card, starting at 0.
  int? get defaultNetworkCardIndex;

  /// Describes the network cards for the instance type.
  _i5.BuiltList<_i2.NetworkCardInfo>? get networkCards;

  /// The maximum number of IPv4 addresses per network interface.
  int? get ipv4AddressesPerInterface;

  /// The maximum number of IPv6 addresses per network interface.
  int? get ipv6AddressesPerInterface;

  /// Indicates whether IPv6 is supported.
  bool? get ipv6Supported;

  /// Indicates whether Elastic Network Adapter (ENA) is supported.
  _i3.EnaSupport? get enaSupport;

  /// Indicates whether Elastic Fabric Adapter (EFA) is supported.
  bool? get efaSupported;

  /// Describes the Elastic Fabric Adapters for the instance type.
  _i4.EfaInfo? get efaInfo;

  /// Indicates whether the instance type automatically encrypts in-transit traffic between instances.
  bool? get encryptionInTransitSupported;
  @override
  List<Object?> get props => [
        networkPerformance,
        maximumNetworkInterfaces,
        maximumNetworkCards,
        defaultNetworkCardIndex,
        networkCards,
        ipv4AddressesPerInterface,
        ipv6AddressesPerInterface,
        ipv6Supported,
        enaSupport,
        efaSupported,
        efaInfo,
        encryptionInTransitSupported,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('NetworkInfo');
    helper.add(
      'networkPerformance',
      networkPerformance,
    );
    helper.add(
      'maximumNetworkInterfaces',
      maximumNetworkInterfaces,
    );
    helper.add(
      'maximumNetworkCards',
      maximumNetworkCards,
    );
    helper.add(
      'defaultNetworkCardIndex',
      defaultNetworkCardIndex,
    );
    helper.add(
      'networkCards',
      networkCards,
    );
    helper.add(
      'ipv4AddressesPerInterface',
      ipv4AddressesPerInterface,
    );
    helper.add(
      'ipv6AddressesPerInterface',
      ipv6AddressesPerInterface,
    );
    helper.add(
      'ipv6Supported',
      ipv6Supported,
    );
    helper.add(
      'enaSupport',
      enaSupport,
    );
    helper.add(
      'efaSupported',
      efaSupported,
    );
    helper.add(
      'efaInfo',
      efaInfo,
    );
    helper.add(
      'encryptionInTransitSupported',
      encryptionInTransitSupported,
    );
    return helper.toString();
  }
}

class NetworkInfoEc2QuerySerializer
    extends _i6.StructuredSmithySerializer<NetworkInfo> {
  const NetworkInfoEc2QuerySerializer() : super('NetworkInfo');

  @override
  Iterable<Type> get types => const [
        NetworkInfo,
        _$NetworkInfo,
      ];
  @override
  Iterable<_i6.ShapeId> get supportedProtocols => const [
        _i6.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  NetworkInfo deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NetworkInfoBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'networkPerformance':
          result.networkPerformance = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'maximumNetworkInterfaces':
          result.maximumNetworkInterfaces = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'maximumNetworkCards':
          result.maximumNetworkCards = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'defaultNetworkCardIndex':
          result.defaultNetworkCardIndex = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'networkCards':
          result.networkCards.replace((const _i6.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i6.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i5.BuiltList,
              [FullType(_i2.NetworkCardInfo)],
            ),
          ) as _i5.BuiltList<_i2.NetworkCardInfo>));
        case 'ipv4AddressesPerInterface':
          result.ipv4AddressesPerInterface = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'ipv6AddressesPerInterface':
          result.ipv6AddressesPerInterface = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'ipv6Supported':
          result.ipv6Supported = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'enaSupport':
          result.enaSupport = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.EnaSupport),
          ) as _i3.EnaSupport);
        case 'efaSupported':
          result.efaSupported = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'efaInfo':
          result.efaInfo.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.EfaInfo),
          ) as _i4.EfaInfo));
        case 'encryptionInTransitSupported':
          result.encryptionInTransitSupported = (serializers.deserialize(
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
    NetworkInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i6.XmlElementName(
        'NetworkInfoResponse',
        _i6.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final NetworkInfo(
      :networkPerformance,
      :maximumNetworkInterfaces,
      :maximumNetworkCards,
      :defaultNetworkCardIndex,
      :networkCards,
      :ipv4AddressesPerInterface,
      :ipv6AddressesPerInterface,
      :ipv6Supported,
      :enaSupport,
      :efaSupported,
      :efaInfo,
      :encryptionInTransitSupported
    ) = object;
    if (networkPerformance != null) {
      result$
        ..add(const _i6.XmlElementName('NetworkPerformance'))
        ..add(serializers.serialize(
          networkPerformance,
          specifiedType: const FullType(String),
        ));
    }
    if (maximumNetworkInterfaces != null) {
      result$
        ..add(const _i6.XmlElementName('MaximumNetworkInterfaces'))
        ..add(serializers.serialize(
          maximumNetworkInterfaces,
          specifiedType: const FullType.nullable(int),
        ));
    }
    if (maximumNetworkCards != null) {
      result$
        ..add(const _i6.XmlElementName('MaximumNetworkCards'))
        ..add(serializers.serialize(
          maximumNetworkCards,
          specifiedType: const FullType.nullable(int),
        ));
    }
    if (defaultNetworkCardIndex != null) {
      result$
        ..add(const _i6.XmlElementName('DefaultNetworkCardIndex'))
        ..add(serializers.serialize(
          defaultNetworkCardIndex,
          specifiedType: const FullType.nullable(int),
        ));
    }
    if (networkCards != null) {
      result$
        ..add(const _i6.XmlElementName('NetworkCards'))
        ..add(const _i6.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i6.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          networkCards,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(_i2.NetworkCardInfo)],
          ),
        ));
    }
    if (ipv4AddressesPerInterface != null) {
      result$
        ..add(const _i6.XmlElementName('Ipv4AddressesPerInterface'))
        ..add(serializers.serialize(
          ipv4AddressesPerInterface,
          specifiedType: const FullType.nullable(int),
        ));
    }
    if (ipv6AddressesPerInterface != null) {
      result$
        ..add(const _i6.XmlElementName('Ipv6AddressesPerInterface'))
        ..add(serializers.serialize(
          ipv6AddressesPerInterface,
          specifiedType: const FullType.nullable(int),
        ));
    }
    if (ipv6Supported != null) {
      result$
        ..add(const _i6.XmlElementName('Ipv6Supported'))
        ..add(serializers.serialize(
          ipv6Supported,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    if (enaSupport != null) {
      result$
        ..add(const _i6.XmlElementName('EnaSupport'))
        ..add(serializers.serialize(
          enaSupport,
          specifiedType: const FullType.nullable(_i3.EnaSupport),
        ));
    }
    if (efaSupported != null) {
      result$
        ..add(const _i6.XmlElementName('EfaSupported'))
        ..add(serializers.serialize(
          efaSupported,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    if (efaInfo != null) {
      result$
        ..add(const _i6.XmlElementName('EfaInfo'))
        ..add(serializers.serialize(
          efaInfo,
          specifiedType: const FullType(_i4.EfaInfo),
        ));
    }
    if (encryptionInTransitSupported != null) {
      result$
        ..add(const _i6.XmlElementName('EncryptionInTransitSupported'))
        ..add(serializers.serialize(
          encryptionInTransitSupported,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    return result$;
  }
}
