// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.traffic_mirror_filter_rule; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/traffic_direction.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/traffic_mirror_port_range.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/traffic_mirror_rule_action.dart'
    as _i3;

part 'traffic_mirror_filter_rule.g.dart';

/// Describes the Traffic Mirror rule.
abstract class TrafficMirrorFilterRule
    with _i1.AWSEquatable<TrafficMirrorFilterRule>
    implements Built<TrafficMirrorFilterRule, TrafficMirrorFilterRuleBuilder> {
  /// Describes the Traffic Mirror rule.
  factory TrafficMirrorFilterRule({
    String? trafficMirrorFilterRuleId,
    String? trafficMirrorFilterId,
    _i2.TrafficDirection? trafficDirection,
    int? ruleNumber,
    _i3.TrafficMirrorRuleAction? ruleAction,
    int? protocol,
    _i4.TrafficMirrorPortRange? destinationPortRange,
    _i4.TrafficMirrorPortRange? sourcePortRange,
    String? destinationCidrBlock,
    String? sourceCidrBlock,
    String? description,
  }) {
    ruleNumber ??= 0;
    protocol ??= 0;
    return _$TrafficMirrorFilterRule._(
      trafficMirrorFilterRuleId: trafficMirrorFilterRuleId,
      trafficMirrorFilterId: trafficMirrorFilterId,
      trafficDirection: trafficDirection,
      ruleNumber: ruleNumber,
      ruleAction: ruleAction,
      protocol: protocol,
      destinationPortRange: destinationPortRange,
      sourcePortRange: sourcePortRange,
      destinationCidrBlock: destinationCidrBlock,
      sourceCidrBlock: sourceCidrBlock,
      description: description,
    );
  }

  /// Describes the Traffic Mirror rule.
  factory TrafficMirrorFilterRule.build(
          [void Function(TrafficMirrorFilterRuleBuilder) updates]) =
      _$TrafficMirrorFilterRule;

  const TrafficMirrorFilterRule._();

  static const List<_i5.SmithySerializer> serializers = [
    TrafficMirrorFilterRuleEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TrafficMirrorFilterRuleBuilder b) {
    b.ruleNumber = 0;
    b.protocol = 0;
  }

  /// The ID of the Traffic Mirror rule.
  String? get trafficMirrorFilterRuleId;

  /// The ID of the Traffic Mirror filter that the rule is associated with.
  String? get trafficMirrorFilterId;

  /// The traffic direction assigned to the Traffic Mirror rule.
  _i2.TrafficDirection? get trafficDirection;

  /// The rule number of the Traffic Mirror rule.
  int get ruleNumber;

  /// The action assigned to the Traffic Mirror rule.
  _i3.TrafficMirrorRuleAction? get ruleAction;

  /// The protocol assigned to the Traffic Mirror rule.
  int get protocol;

  /// The destination port range assigned to the Traffic Mirror rule.
  _i4.TrafficMirrorPortRange? get destinationPortRange;

  /// The source port range assigned to the Traffic Mirror rule.
  _i4.TrafficMirrorPortRange? get sourcePortRange;

  /// The destination CIDR block assigned to the Traffic Mirror rule.
  String? get destinationCidrBlock;

  /// The source CIDR block assigned to the Traffic Mirror rule.
  String? get sourceCidrBlock;

  /// The description of the Traffic Mirror rule.
  String? get description;
  @override
  List<Object?> get props => [
        trafficMirrorFilterRuleId,
        trafficMirrorFilterId,
        trafficDirection,
        ruleNumber,
        ruleAction,
        protocol,
        destinationPortRange,
        sourcePortRange,
        destinationCidrBlock,
        sourceCidrBlock,
        description,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TrafficMirrorFilterRule');
    helper.add(
      'trafficMirrorFilterRuleId',
      trafficMirrorFilterRuleId,
    );
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
      'protocol',
      protocol,
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
    return helper.toString();
  }
}

class TrafficMirrorFilterRuleEc2QuerySerializer
    extends _i5.StructuredSmithySerializer<TrafficMirrorFilterRule> {
  const TrafficMirrorFilterRuleEc2QuerySerializer()
      : super('TrafficMirrorFilterRule');

  @override
  Iterable<Type> get types => const [
        TrafficMirrorFilterRule,
        _$TrafficMirrorFilterRule,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TrafficMirrorFilterRule deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TrafficMirrorFilterRuleBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'trafficMirrorFilterRuleId':
          result.trafficMirrorFilterRuleId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'trafficMirrorFilterId':
          result.trafficMirrorFilterId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'trafficDirection':
          result.trafficDirection = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.TrafficDirection),
          ) as _i2.TrafficDirection);
        case 'ruleNumber':
          result.ruleNumber = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'ruleAction':
          result.ruleAction = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.TrafficMirrorRuleAction),
          ) as _i3.TrafficMirrorRuleAction);
        case 'protocol':
          result.protocol = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'destinationPortRange':
          result.destinationPortRange.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.TrafficMirrorPortRange),
          ) as _i4.TrafficMirrorPortRange));
        case 'sourcePortRange':
          result.sourcePortRange.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.TrafficMirrorPortRange),
          ) as _i4.TrafficMirrorPortRange));
        case 'destinationCidrBlock':
          result.destinationCidrBlock = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'sourceCidrBlock':
          result.sourceCidrBlock = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'description':
          result.description = (serializers.deserialize(
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
    TrafficMirrorFilterRule object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i5.XmlElementName(
        'TrafficMirrorFilterRuleResponse',
        _i5.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final TrafficMirrorFilterRule(
      :trafficMirrorFilterRuleId,
      :trafficMirrorFilterId,
      :trafficDirection,
      :ruleNumber,
      :ruleAction,
      :protocol,
      :destinationPortRange,
      :sourcePortRange,
      :destinationCidrBlock,
      :sourceCidrBlock,
      :description
    ) = object;
    if (trafficMirrorFilterRuleId != null) {
      result$
        ..add(const _i5.XmlElementName('TrafficMirrorFilterRuleId'))
        ..add(serializers.serialize(
          trafficMirrorFilterRuleId,
          specifiedType: const FullType(String),
        ));
    }
    if (trafficMirrorFilterId != null) {
      result$
        ..add(const _i5.XmlElementName('TrafficMirrorFilterId'))
        ..add(serializers.serialize(
          trafficMirrorFilterId,
          specifiedType: const FullType(String),
        ));
    }
    if (trafficDirection != null) {
      result$
        ..add(const _i5.XmlElementName('TrafficDirection'))
        ..add(serializers.serialize(
          trafficDirection,
          specifiedType: const FullType.nullable(_i2.TrafficDirection),
        ));
    }
    result$
      ..add(const _i5.XmlElementName('RuleNumber'))
      ..add(serializers.serialize(
        ruleNumber,
        specifiedType: const FullType(int),
      ));
    if (ruleAction != null) {
      result$
        ..add(const _i5.XmlElementName('RuleAction'))
        ..add(serializers.serialize(
          ruleAction,
          specifiedType: const FullType.nullable(_i3.TrafficMirrorRuleAction),
        ));
    }
    result$
      ..add(const _i5.XmlElementName('Protocol'))
      ..add(serializers.serialize(
        protocol,
        specifiedType: const FullType(int),
      ));
    if (destinationPortRange != null) {
      result$
        ..add(const _i5.XmlElementName('DestinationPortRange'))
        ..add(serializers.serialize(
          destinationPortRange,
          specifiedType: const FullType(_i4.TrafficMirrorPortRange),
        ));
    }
    if (sourcePortRange != null) {
      result$
        ..add(const _i5.XmlElementName('SourcePortRange'))
        ..add(serializers.serialize(
          sourcePortRange,
          specifiedType: const FullType(_i4.TrafficMirrorPortRange),
        ));
    }
    if (destinationCidrBlock != null) {
      result$
        ..add(const _i5.XmlElementName('DestinationCidrBlock'))
        ..add(serializers.serialize(
          destinationCidrBlock,
          specifiedType: const FullType(String),
        ));
    }
    if (sourceCidrBlock != null) {
      result$
        ..add(const _i5.XmlElementName('SourceCidrBlock'))
        ..add(serializers.serialize(
          sourceCidrBlock,
          specifiedType: const FullType(String),
        ));
    }
    if (description != null) {
      result$
        ..add(const _i5.XmlElementName('Description'))
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
