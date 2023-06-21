// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.create_traffic_mirror_filter_rule_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/traffic_direction.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/traffic_mirror_port_range_request.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/traffic_mirror_rule_action.dart'
    as _i4;

part 'create_traffic_mirror_filter_rule_request.g.dart';

abstract class CreateTrafficMirrorFilterRuleRequest
    with
        _i1.HttpInput<CreateTrafficMirrorFilterRuleRequest>,
        _i2.AWSEquatable<CreateTrafficMirrorFilterRuleRequest>
    implements
        Built<CreateTrafficMirrorFilterRuleRequest,
            CreateTrafficMirrorFilterRuleRequestBuilder> {
  factory CreateTrafficMirrorFilterRuleRequest({
    required String trafficMirrorFilterId,
    required _i3.TrafficDirection trafficDirection,
    int? ruleNumber,
    required _i4.TrafficMirrorRuleAction ruleAction,
    _i5.TrafficMirrorPortRangeRequest? destinationPortRange,
    _i5.TrafficMirrorPortRangeRequest? sourcePortRange,
    int? protocol,
    required String destinationCidrBlock,
    required String sourceCidrBlock,
    String? description,
    bool? dryRun,
    String? clientToken,
  }) {
    ruleNumber ??= 0;
    protocol ??= 0;
    dryRun ??= false;
    if (const bool.hasEnvironment('SMITHY_TEST')) {
      clientToken ??= '00000000-0000-4000-8000-000000000000';
    } else {
      clientToken ??= _i2.uuid(secure: true);
    }
    return _$CreateTrafficMirrorFilterRuleRequest._(
      trafficMirrorFilterId: trafficMirrorFilterId,
      trafficDirection: trafficDirection,
      ruleNumber: ruleNumber,
      ruleAction: ruleAction,
      destinationPortRange: destinationPortRange,
      sourcePortRange: sourcePortRange,
      protocol: protocol,
      destinationCidrBlock: destinationCidrBlock,
      sourceCidrBlock: sourceCidrBlock,
      description: description,
      dryRun: dryRun,
      clientToken: clientToken,
    );
  }

  factory CreateTrafficMirrorFilterRuleRequest.build(
      [void Function(CreateTrafficMirrorFilterRuleRequestBuilder)
          updates]) = _$CreateTrafficMirrorFilterRuleRequest;

  const CreateTrafficMirrorFilterRuleRequest._();

  factory CreateTrafficMirrorFilterRuleRequest.fromRequest(
    CreateTrafficMirrorFilterRuleRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    CreateTrafficMirrorFilterRuleRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateTrafficMirrorFilterRuleRequestBuilder b) {
    b.ruleNumber = 0;
    b.protocol = 0;
    b.dryRun = false;
    if (const bool.hasEnvironment('SMITHY_TEST')) {
      b.clientToken = '00000000-0000-4000-8000-000000000000';
    } else {
      b.clientToken = _i2.uuid(secure: true);
    }
  }

  /// The ID of the filter that this rule is associated with.
  String get trafficMirrorFilterId;

  /// The type of traffic.
  _i3.TrafficDirection get trafficDirection;

  /// The number of the Traffic Mirror rule. This number must be unique for each Traffic Mirror rule in a given direction. The rules are processed in ascending order by rule number.
  int get ruleNumber;

  /// The action to take on the filtered traffic.
  _i4.TrafficMirrorRuleAction get ruleAction;

  /// The destination port range.
  _i5.TrafficMirrorPortRangeRequest? get destinationPortRange;

  /// The source port range.
  _i5.TrafficMirrorPortRangeRequest? get sourcePortRange;

  /// The protocol, for example UDP, to assign to the Traffic Mirror rule.
  ///
  /// For information about the protocol value, see [Protocol Numbers](https://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml) on the Internet Assigned Numbers Authority (IANA) website.
  int get protocol;

  /// The destination CIDR block to assign to the Traffic Mirror rule.
  String get destinationCidrBlock;

  /// The source CIDR block to assign to the Traffic Mirror rule.
  String get sourceCidrBlock;

  /// The description of the Traffic Mirror rule.
  String? get description;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see [How to ensure idempotency](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).
  String? get clientToken;
  @override
  CreateTrafficMirrorFilterRuleRequest getPayload() => this;
  @override
  List<Object?> get props => [
        trafficMirrorFilterId,
        trafficDirection,
        ruleNumber,
        ruleAction,
        destinationPortRange,
        sourcePortRange,
        protocol,
        destinationCidrBlock,
        sourceCidrBlock,
        description,
        dryRun,
        clientToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateTrafficMirrorFilterRuleRequest');
    helper.add(
      'trafficMirrorFilterId',
      trafficMirrorFilterId,
    );
    helper.add(
      'trafficDirection',
      trafficDirection,
    );
    helper.add(
      'ruleNumber',
      ruleNumber,
    );
    helper.add(
      'ruleAction',
      ruleAction,
    );
    helper.add(
      'destinationPortRange',
      destinationPortRange,
    );
    helper.add(
      'sourcePortRange',
      sourcePortRange,
    );
    helper.add(
      'protocol',
      protocol,
    );
    helper.add(
      'destinationCidrBlock',
      destinationCidrBlock,
    );
    helper.add(
      'sourceCidrBlock',
      sourceCidrBlock,
    );
    helper.add(
      'description',
      description,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'clientToken',
      clientToken,
    );
    return helper.toString();
  }
}

class CreateTrafficMirrorFilterRuleRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<CreateTrafficMirrorFilterRuleRequest> {
  const CreateTrafficMirrorFilterRuleRequestEc2QuerySerializer()
      : super('CreateTrafficMirrorFilterRuleRequest');

  @override
  Iterable<Type> get types => const [
        CreateTrafficMirrorFilterRuleRequest,
        _$CreateTrafficMirrorFilterRuleRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateTrafficMirrorFilterRuleRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateTrafficMirrorFilterRuleRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'TrafficMirrorFilterId':
          result.trafficMirrorFilterId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'TrafficDirection':
          result.trafficDirection = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.TrafficDirection),
          ) as _i3.TrafficDirection);
        case 'RuleNumber':
          result.ruleNumber = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'RuleAction':
          result.ruleAction = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.TrafficMirrorRuleAction),
          ) as _i4.TrafficMirrorRuleAction);
        case 'DestinationPortRange':
          result.destinationPortRange.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i5.TrafficMirrorPortRangeRequest),
          ) as _i5.TrafficMirrorPortRangeRequest));
        case 'SourcePortRange':
          result.sourcePortRange.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i5.TrafficMirrorPortRangeRequest),
          ) as _i5.TrafficMirrorPortRangeRequest));
        case 'Protocol':
          result.protocol = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'DestinationCidrBlock':
          result.destinationCidrBlock = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'SourceCidrBlock':
          result.sourceCidrBlock = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Description':
          result.description = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'ClientToken':
          result.clientToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CreateTrafficMirrorFilterRuleRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'CreateTrafficMirrorFilterRuleRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateTrafficMirrorFilterRuleRequest(
      :trafficMirrorFilterId,
      :trafficDirection,
      :ruleNumber,
      :ruleAction,
      :destinationPortRange,
      :sourcePortRange,
      :protocol,
      :destinationCidrBlock,
      :sourceCidrBlock,
      :description,
      :dryRun,
      :clientToken
    ) = object;
    result$
      ..add(const _i1.XmlElementName('TrafficMirrorFilterId'))
      ..add(serializers.serialize(
        trafficMirrorFilterId,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i1.XmlElementName('TrafficDirection'))
      ..add(serializers.serialize(
        trafficDirection,
        specifiedType: const FullType.nullable(_i3.TrafficDirection),
      ));
    result$
      ..add(const _i1.XmlElementName('RuleNumber'))
      ..add(serializers.serialize(
        ruleNumber,
        specifiedType: const FullType(int),
      ));
    result$
      ..add(const _i1.XmlElementName('RuleAction'))
      ..add(serializers.serialize(
        ruleAction,
        specifiedType: const FullType.nullable(_i4.TrafficMirrorRuleAction),
      ));
    if (destinationPortRange != null) {
      result$
        ..add(const _i1.XmlElementName('DestinationPortRange'))
        ..add(serializers.serialize(
          destinationPortRange,
          specifiedType: const FullType(_i5.TrafficMirrorPortRangeRequest),
        ));
    }
    if (sourcePortRange != null) {
      result$
        ..add(const _i1.XmlElementName('SourcePortRange'))
        ..add(serializers.serialize(
          sourcePortRange,
          specifiedType: const FullType(_i5.TrafficMirrorPortRangeRequest),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('Protocol'))
      ..add(serializers.serialize(
        protocol,
        specifiedType: const FullType(int),
      ));
    result$
      ..add(const _i1.XmlElementName('DestinationCidrBlock'))
      ..add(serializers.serialize(
        destinationCidrBlock,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i1.XmlElementName('SourceCidrBlock'))
      ..add(serializers.serialize(
        sourceCidrBlock,
        specifiedType: const FullType(String),
      ));
    if (description != null) {
      result$
        ..add(const _i1.XmlElementName('Description'))
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (clientToken != null) {
      result$
        ..add(const _i1.XmlElementName('ClientToken'))
        ..add(serializers.serialize(
          clientToken,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
