// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.create_transit_gateway_multicast_domain_request_options; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/auto_accept_shared_associations_value.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/igmpv2_support_value.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/static_sources_support_value.dart'
    as _i3;

part 'create_transit_gateway_multicast_domain_request_options.g.dart';

/// The options for the transit gateway multicast domain.
abstract class CreateTransitGatewayMulticastDomainRequestOptions
    with
        _i1.AWSEquatable<CreateTransitGatewayMulticastDomainRequestOptions>
    implements
        Built<CreateTransitGatewayMulticastDomainRequestOptions,
            CreateTransitGatewayMulticastDomainRequestOptionsBuilder> {
  /// The options for the transit gateway multicast domain.
  factory CreateTransitGatewayMulticastDomainRequestOptions({
    _i2.Igmpv2SupportValue? igmpv2Support,
    _i3.StaticSourcesSupportValue? staticSourcesSupport,
    _i4.AutoAcceptSharedAssociationsValue? autoAcceptSharedAssociations,
  }) {
    return _$CreateTransitGatewayMulticastDomainRequestOptions._(
      igmpv2Support: igmpv2Support,
      staticSourcesSupport: staticSourcesSupport,
      autoAcceptSharedAssociations: autoAcceptSharedAssociations,
    );
  }

  /// The options for the transit gateway multicast domain.
  factory CreateTransitGatewayMulticastDomainRequestOptions.build(
      [void Function(CreateTransitGatewayMulticastDomainRequestOptionsBuilder)
          updates]) = _$CreateTransitGatewayMulticastDomainRequestOptions;

  const CreateTransitGatewayMulticastDomainRequestOptions._();

  static const List<_i5.SmithySerializer> serializers = [
    CreateTransitGatewayMulticastDomainRequestOptionsEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      CreateTransitGatewayMulticastDomainRequestOptionsBuilder b) {}

  /// Specify whether to enable Internet Group Management Protocol (IGMP) version 2 for the transit gateway multicast domain.
  _i2.Igmpv2SupportValue? get igmpv2Support;

  /// Specify whether to enable support for statically configuring multicast group sources for a domain.
  _i3.StaticSourcesSupportValue? get staticSourcesSupport;

  /// Indicates whether to automatically accept cross-account subnet associations that are associated with the transit gateway multicast domain.
  _i4.AutoAcceptSharedAssociationsValue? get autoAcceptSharedAssociations;
  @override
  List<Object?> get props => [
        igmpv2Support,
        staticSourcesSupport,
        autoAcceptSharedAssociations,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'CreateTransitGatewayMulticastDomainRequestOptions');
    helper.add(
      'igmpv2Support',
      igmpv2Support,
    );
    helper.add(
      'staticSourcesSupport',
      staticSourcesSupport,
    );
    helper.add(
      'autoAcceptSharedAssociations',
      autoAcceptSharedAssociations,
    );
    return helper.toString();
  }
}

class CreateTransitGatewayMulticastDomainRequestOptionsEc2QuerySerializer
    extends _i5.StructuredSmithySerializer<
        CreateTransitGatewayMulticastDomainRequestOptions> {
  const CreateTransitGatewayMulticastDomainRequestOptionsEc2QuerySerializer()
      : super('CreateTransitGatewayMulticastDomainRequestOptions');

  @override
  Iterable<Type> get types => const [
        CreateTransitGatewayMulticastDomainRequestOptions,
        _$CreateTransitGatewayMulticastDomainRequestOptions,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateTransitGatewayMulticastDomainRequestOptions deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateTransitGatewayMulticastDomainRequestOptionsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Igmpv2Support':
          result.igmpv2Support = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.Igmpv2SupportValue),
          ) as _i2.Igmpv2SupportValue);
        case 'StaticSourcesSupport':
          result.staticSourcesSupport = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.StaticSourcesSupportValue),
          ) as _i3.StaticSourcesSupportValue);
        case 'AutoAcceptSharedAssociations':
          result.autoAcceptSharedAssociations = (serializers.deserialize(
            value,
            specifiedType:
                const FullType(_i4.AutoAcceptSharedAssociationsValue),
          ) as _i4.AutoAcceptSharedAssociationsValue);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CreateTransitGatewayMulticastDomainRequestOptions object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i5.XmlElementName(
        'CreateTransitGatewayMulticastDomainRequestOptionsResponse',
        _i5.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateTransitGatewayMulticastDomainRequestOptions(
      :igmpv2Support,
      :staticSourcesSupport,
      :autoAcceptSharedAssociations
    ) = object;
    if (igmpv2Support != null) {
      result$
        ..add(const _i5.XmlElementName('Igmpv2Support'))
        ..add(serializers.serialize(
          igmpv2Support,
          specifiedType: const FullType.nullable(_i2.Igmpv2SupportValue),
        ));
    }
    if (staticSourcesSupport != null) {
      result$
        ..add(const _i5.XmlElementName('StaticSourcesSupport'))
        ..add(serializers.serialize(
          staticSourcesSupport,
          specifiedType: const FullType.nullable(_i3.StaticSourcesSupportValue),
        ));
    }
    if (autoAcceptSharedAssociations != null) {
      result$
        ..add(const _i5.XmlElementName('AutoAcceptSharedAssociations'))
        ..add(serializers.serialize(
          autoAcceptSharedAssociations,
          specifiedType:
              const FullType.nullable(_i4.AutoAcceptSharedAssociationsValue),
        ));
    }
    return result$;
  }
}
