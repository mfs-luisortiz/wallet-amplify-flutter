// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.instance_requirements_with_metadata_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i6;
import 'package:smoke_test/src/sdk/src/ec2/model/architecture_type.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_requirements_request.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/virtualization_type.dart'
    as _i3;

part 'instance_requirements_with_metadata_request.g.dart';

/// The architecture type, virtualization type, and other attributes for the instance types. When you specify instance attributes, Amazon EC2 will identify instance types with those attributes.
///
/// If you specify `InstanceRequirementsWithMetadataRequest`, you can't specify `InstanceTypes`.
abstract class InstanceRequirementsWithMetadataRequest
    with
        _i1.AWSEquatable<InstanceRequirementsWithMetadataRequest>
    implements
        Built<InstanceRequirementsWithMetadataRequest,
            InstanceRequirementsWithMetadataRequestBuilder> {
  /// The architecture type, virtualization type, and other attributes for the instance types. When you specify instance attributes, Amazon EC2 will identify instance types with those attributes.
  ///
  /// If you specify `InstanceRequirementsWithMetadataRequest`, you can't specify `InstanceTypes`.
  factory InstanceRequirementsWithMetadataRequest({
    List<_i2.ArchitectureType>? architectureTypes,
    List<_i3.VirtualizationType>? virtualizationTypes,
    _i4.InstanceRequirementsRequest? instanceRequirements,
  }) {
    return _$InstanceRequirementsWithMetadataRequest._(
      architectureTypes:
          architectureTypes == null ? null : _i5.BuiltList(architectureTypes),
      virtualizationTypes: virtualizationTypes == null
          ? null
          : _i5.BuiltList(virtualizationTypes),
      instanceRequirements: instanceRequirements,
    );
  }

  /// The architecture type, virtualization type, and other attributes for the instance types. When you specify instance attributes, Amazon EC2 will identify instance types with those attributes.
  ///
  /// If you specify `InstanceRequirementsWithMetadataRequest`, you can't specify `InstanceTypes`.
  factory InstanceRequirementsWithMetadataRequest.build(
      [void Function(InstanceRequirementsWithMetadataRequestBuilder)
          updates]) = _$InstanceRequirementsWithMetadataRequest;

  const InstanceRequirementsWithMetadataRequest._();

  static const List<_i6.SmithySerializer> serializers = [
    InstanceRequirementsWithMetadataRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InstanceRequirementsWithMetadataRequestBuilder b) {}

  /// The architecture type.
  _i5.BuiltList<_i2.ArchitectureType>? get architectureTypes;

  /// The virtualization type.
  _i5.BuiltList<_i3.VirtualizationType>? get virtualizationTypes;

  /// The attributes for the instance types. When you specify instance attributes, Amazon EC2 will identify instance types with those attributes.
  _i4.InstanceRequirementsRequest? get instanceRequirements;
  @override
  List<Object?> get props => [
        architectureTypes,
        virtualizationTypes,
        instanceRequirements,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('InstanceRequirementsWithMetadataRequest');
    helper.add(
      'architectureTypes',
      architectureTypes,
    );
    helper.add(
      'virtualizationTypes',
      virtualizationTypes,
    );
    helper.add(
      'instanceRequirements',
      instanceRequirements,
    );
    return helper.toString();
  }
}

class InstanceRequirementsWithMetadataRequestEc2QuerySerializer extends _i6
    .StructuredSmithySerializer<InstanceRequirementsWithMetadataRequest> {
  const InstanceRequirementsWithMetadataRequestEc2QuerySerializer()
      : super('InstanceRequirementsWithMetadataRequest');

  @override
  Iterable<Type> get types => const [
        InstanceRequirementsWithMetadataRequest,
        _$InstanceRequirementsWithMetadataRequest,
      ];
  @override
  Iterable<_i6.ShapeId> get supportedProtocols => const [
        _i6.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  InstanceRequirementsWithMetadataRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InstanceRequirementsWithMetadataRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ArchitectureType':
          result.architectureTypes.replace((const _i6.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i6.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i5.BuiltList,
              [FullType(_i2.ArchitectureType)],
            ),
          ) as _i5.BuiltList<_i2.ArchitectureType>));
        case 'VirtualizationType':
          result.virtualizationTypes.replace((const _i6.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i6.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i5.BuiltList,
              [FullType(_i3.VirtualizationType)],
            ),
          ) as _i5.BuiltList<_i3.VirtualizationType>));
        case 'InstanceRequirements':
          result.instanceRequirements.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.InstanceRequirementsRequest),
          ) as _i4.InstanceRequirementsRequest));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    InstanceRequirementsWithMetadataRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i6.XmlElementName(
        'InstanceRequirementsWithMetadataRequestResponse',
        _i6.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final InstanceRequirementsWithMetadataRequest(
      :architectureTypes,
      :virtualizationTypes,
      :instanceRequirements
    ) = object;
    if (architectureTypes != null) {
      result$
        ..add(const _i6.XmlElementName('ArchitectureType'))
        ..add(const _i6.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i6.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          architectureTypes,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(_i2.ArchitectureType)],
          ),
        ));
    }
    if (virtualizationTypes != null) {
      result$
        ..add(const _i6.XmlElementName('VirtualizationType'))
        ..add(const _i6.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i6.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          virtualizationTypes,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(_i3.VirtualizationType)],
          ),
        ));
    }
    if (instanceRequirements != null) {
      result$
        ..add(const _i6.XmlElementName('InstanceRequirements'))
        ..add(serializers.serialize(
          instanceRequirements,
          specifiedType: const FullType(_i4.InstanceRequirementsRequest),
        ));
    }
    return result$;
  }
}
