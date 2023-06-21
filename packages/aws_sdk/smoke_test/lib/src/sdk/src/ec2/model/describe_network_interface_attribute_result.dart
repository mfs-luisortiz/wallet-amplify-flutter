// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.describe_network_interface_attribute_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i7;
import 'package:smoke_test/src/sdk/src/ec2/model/attribute_boolean_value.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/attribute_value.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/group_identifier.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/network_interface_attachment.dart'
    as _i2;

part 'describe_network_interface_attribute_result.g.dart';

/// Contains the output of DescribeNetworkInterfaceAttribute.
abstract class DescribeNetworkInterfaceAttributeResult
    with
        _i1.AWSEquatable<DescribeNetworkInterfaceAttributeResult>
    implements
        Built<DescribeNetworkInterfaceAttributeResult,
            DescribeNetworkInterfaceAttributeResultBuilder> {
  /// Contains the output of DescribeNetworkInterfaceAttribute.
  factory DescribeNetworkInterfaceAttributeResult({
    _i2.NetworkInterfaceAttachment? attachment,
    _i3.AttributeValue? description,
    List<_i4.GroupIdentifier>? groups,
    String? networkInterfaceId,
    _i5.AttributeBooleanValue? sourceDestCheck,
  }) {
    return _$DescribeNetworkInterfaceAttributeResult._(
      attachment: attachment,
      description: description,
      groups: groups == null ? null : _i6.BuiltList(groups),
      networkInterfaceId: networkInterfaceId,
      sourceDestCheck: sourceDestCheck,
    );
  }

  /// Contains the output of DescribeNetworkInterfaceAttribute.
  factory DescribeNetworkInterfaceAttributeResult.build(
      [void Function(DescribeNetworkInterfaceAttributeResultBuilder)
          updates]) = _$DescribeNetworkInterfaceAttributeResult;

  const DescribeNetworkInterfaceAttributeResult._();

  /// Constructs a [DescribeNetworkInterfaceAttributeResult] from a [payload] and [response].
  factory DescribeNetworkInterfaceAttributeResult.fromResponse(
    DescribeNetworkInterfaceAttributeResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i7.SmithySerializer> serializers = [
    DescribeNetworkInterfaceAttributeResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeNetworkInterfaceAttributeResultBuilder b) {}

  /// The attachment (if any) of the network interface.
  _i2.NetworkInterfaceAttachment? get attachment;

  /// The description of the network interface.
  _i3.AttributeValue? get description;

  /// The security groups associated with the network interface.
  _i6.BuiltList<_i4.GroupIdentifier>? get groups;

  /// The ID of the network interface.
  String? get networkInterfaceId;

  /// Indicates whether source/destination checking is enabled.
  _i5.AttributeBooleanValue? get sourceDestCheck;
  @override
  List<Object?> get props => [
        attachment,
        description,
        groups,
        networkInterfaceId,
        sourceDestCheck,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeNetworkInterfaceAttributeResult');
    helper.add(
      'attachment',
      attachment,
    );
    helper.add(
      'description',
      description,
    );
    helper.add(
      'groups',
      groups,
    );
    helper.add(
      'networkInterfaceId',
      networkInterfaceId,
    );
    helper.add(
      'sourceDestCheck',
      sourceDestCheck,
    );
    return helper.toString();
  }
}

class DescribeNetworkInterfaceAttributeResultEc2QuerySerializer extends _i7
    .StructuredSmithySerializer<DescribeNetworkInterfaceAttributeResult> {
  const DescribeNetworkInterfaceAttributeResultEc2QuerySerializer()
      : super('DescribeNetworkInterfaceAttributeResult');

  @override
  Iterable<Type> get types => const [
        DescribeNetworkInterfaceAttributeResult,
        _$DescribeNetworkInterfaceAttributeResult,
      ];
  @override
  Iterable<_i7.ShapeId> get supportedProtocols => const [
        _i7.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeNetworkInterfaceAttributeResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeNetworkInterfaceAttributeResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'attachment':
          result.attachment.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.NetworkInterfaceAttachment),
          ) as _i2.NetworkInterfaceAttachment));
        case 'description':
          result.description.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.AttributeValue),
          ) as _i3.AttributeValue));
        case 'groupSet':
          result.groups.replace((const _i7.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i7.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i6.BuiltList,
              [FullType(_i4.GroupIdentifier)],
            ),
          ) as _i6.BuiltList<_i4.GroupIdentifier>));
        case 'networkInterfaceId':
          result.networkInterfaceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'sourceDestCheck':
          result.sourceDestCheck.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i5.AttributeBooleanValue),
          ) as _i5.AttributeBooleanValue));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeNetworkInterfaceAttributeResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i7.XmlElementName(
        'DescribeNetworkInterfaceAttributeResultResponse',
        _i7.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeNetworkInterfaceAttributeResult(
      :attachment,
      :description,
      :groups,
      :networkInterfaceId,
      :sourceDestCheck
    ) = object;
    if (attachment != null) {
      result$
        ..add(const _i7.XmlElementName('Attachment'))
        ..add(serializers.serialize(
          attachment,
          specifiedType: const FullType(_i2.NetworkInterfaceAttachment),
        ));
    }
    if (description != null) {
      result$
        ..add(const _i7.XmlElementName('Description'))
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(_i3.AttributeValue),
        ));
    }
    if (groups != null) {
      result$
        ..add(const _i7.XmlElementName('GroupSet'))
        ..add(const _i7.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i7.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          groups,
          specifiedType: const FullType.nullable(
            _i6.BuiltList,
            [FullType(_i4.GroupIdentifier)],
          ),
        ));
    }
    if (networkInterfaceId != null) {
      result$
        ..add(const _i7.XmlElementName('NetworkInterfaceId'))
        ..add(serializers.serialize(
          networkInterfaceId,
          specifiedType: const FullType(String),
        ));
    }
    if (sourceDestCheck != null) {
      result$
        ..add(const _i7.XmlElementName('SourceDestCheck'))
        ..add(serializers.serialize(
          sourceDestCheck,
          specifiedType: const FullType(_i5.AttributeBooleanValue),
        ));
    }
    return result$;
  }
}
