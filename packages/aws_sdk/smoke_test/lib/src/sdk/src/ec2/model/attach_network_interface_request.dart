// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.attach_network_interface_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'attach_network_interface_request.g.dart';

/// Contains the parameters for AttachNetworkInterface.
abstract class AttachNetworkInterfaceRequest
    with
        _i1.HttpInput<AttachNetworkInterfaceRequest>,
        _i2.AWSEquatable<AttachNetworkInterfaceRequest>
    implements
        Built<AttachNetworkInterfaceRequest,
            AttachNetworkInterfaceRequestBuilder> {
  /// Contains the parameters for AttachNetworkInterface.
  factory AttachNetworkInterfaceRequest({
    int? deviceIndex,
    bool? dryRun,
    required String instanceId,
    required String networkInterfaceId,
    int? networkCardIndex,
  }) {
    deviceIndex ??= 0;
    dryRun ??= false;
    networkCardIndex ??= 0;
    return _$AttachNetworkInterfaceRequest._(
      deviceIndex: deviceIndex,
      dryRun: dryRun,
      instanceId: instanceId,
      networkInterfaceId: networkInterfaceId,
      networkCardIndex: networkCardIndex,
    );
  }

  /// Contains the parameters for AttachNetworkInterface.
  factory AttachNetworkInterfaceRequest.build(
          [void Function(AttachNetworkInterfaceRequestBuilder) updates]) =
      _$AttachNetworkInterfaceRequest;

  const AttachNetworkInterfaceRequest._();

  factory AttachNetworkInterfaceRequest.fromRequest(
    AttachNetworkInterfaceRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    AttachNetworkInterfaceRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AttachNetworkInterfaceRequestBuilder b) {
    b.deviceIndex = 0;
    b.dryRun = false;
    b.networkCardIndex = 0;
  }

  /// The index of the device for the network interface attachment.
  int get deviceIndex;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the instance.
  String get instanceId;

  /// The ID of the network interface.
  String get networkInterfaceId;

  /// The index of the network card. Some instance types support multiple network cards. The primary network interface must be assigned to network card index 0. The default is network card index 0.
  int get networkCardIndex;
  @override
  AttachNetworkInterfaceRequest getPayload() => this;
  @override
  List<Object?> get props => [
        deviceIndex,
        dryRun,
        instanceId,
        networkInterfaceId,
        networkCardIndex,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AttachNetworkInterfaceRequest');
    helper.add(
      'deviceIndex',
      deviceIndex,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'instanceId',
      instanceId,
    );
    helper.add(
      'networkInterfaceId',
      networkInterfaceId,
    );
    helper.add(
      'networkCardIndex',
      networkCardIndex,
    );
    return helper.toString();
  }
}

class AttachNetworkInterfaceRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<AttachNetworkInterfaceRequest> {
  const AttachNetworkInterfaceRequestEc2QuerySerializer()
      : super('AttachNetworkInterfaceRequest');

  @override
  Iterable<Type> get types => const [
        AttachNetworkInterfaceRequest,
        _$AttachNetworkInterfaceRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AttachNetworkInterfaceRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AttachNetworkInterfaceRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'deviceIndex':
          result.deviceIndex = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'dryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'instanceId':
          result.instanceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'networkInterfaceId':
          result.networkInterfaceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'NetworkCardIndex':
          result.networkCardIndex = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    AttachNetworkInterfaceRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'AttachNetworkInterfaceRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final AttachNetworkInterfaceRequest(
      :deviceIndex,
      :dryRun,
      :instanceId,
      :networkInterfaceId,
      :networkCardIndex
    ) = object;
    result$
      ..add(const _i1.XmlElementName('DeviceIndex'))
      ..add(serializers.serialize(
        deviceIndex,
        specifiedType: const FullType(int),
      ));
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    result$
      ..add(const _i1.XmlElementName('InstanceId'))
      ..add(serializers.serialize(
        instanceId,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i1.XmlElementName('NetworkInterfaceId'))
      ..add(serializers.serialize(
        networkInterfaceId,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i1.XmlElementName('NetworkCardIndex'))
      ..add(serializers.serialize(
        networkCardIndex,
        specifiedType: const FullType(int),
      ));
    return result$;
  }
}
