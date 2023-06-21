// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.associate_dhcp_options_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'associate_dhcp_options_request.g.dart';

abstract class AssociateDhcpOptionsRequest
    with
        _i1.HttpInput<AssociateDhcpOptionsRequest>,
        _i2.AWSEquatable<AssociateDhcpOptionsRequest>
    implements
        Built<AssociateDhcpOptionsRequest, AssociateDhcpOptionsRequestBuilder> {
  factory AssociateDhcpOptionsRequest({
    required String dhcpOptionsId,
    required String vpcId,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$AssociateDhcpOptionsRequest._(
      dhcpOptionsId: dhcpOptionsId,
      vpcId: vpcId,
      dryRun: dryRun,
    );
  }

  factory AssociateDhcpOptionsRequest.build(
          [void Function(AssociateDhcpOptionsRequestBuilder) updates]) =
      _$AssociateDhcpOptionsRequest;

  const AssociateDhcpOptionsRequest._();

  factory AssociateDhcpOptionsRequest.fromRequest(
    AssociateDhcpOptionsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    AssociateDhcpOptionsRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AssociateDhcpOptionsRequestBuilder b) {
    b.dryRun = false;
  }

  /// The ID of the DHCP options set, or `default` to associate no DHCP options with the VPC.
  String get dhcpOptionsId;

  /// The ID of the VPC.
  String get vpcId;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  AssociateDhcpOptionsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dhcpOptionsId,
        vpcId,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AssociateDhcpOptionsRequest');
    helper.add(
      'dhcpOptionsId',
      dhcpOptionsId,
    );
    helper.add(
      'vpcId',
      vpcId,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    return helper.toString();
  }
}

class AssociateDhcpOptionsRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<AssociateDhcpOptionsRequest> {
  const AssociateDhcpOptionsRequestEc2QuerySerializer()
      : super('AssociateDhcpOptionsRequest');

  @override
  Iterable<Type> get types => const [
        AssociateDhcpOptionsRequest,
        _$AssociateDhcpOptionsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AssociateDhcpOptionsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AssociateDhcpOptionsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'DhcpOptionsId':
          result.dhcpOptionsId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'VpcId':
          result.vpcId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'dryRun':
          result.dryRun = (serializers.deserialize(
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
    AssociateDhcpOptionsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'AssociateDhcpOptionsRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final AssociateDhcpOptionsRequest(:dhcpOptionsId, :vpcId, :dryRun) = object;
    result$
      ..add(const _i1.XmlElementName('DhcpOptionsId'))
      ..add(serializers.serialize(
        dhcpOptionsId,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i1.XmlElementName('VpcId'))
      ..add(serializers.serialize(
        vpcId,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
