// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.ipam; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i6;
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_operating_region.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_state.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i4;

part 'ipam.g.dart';

/// IPAM is a VPC feature that you can use to automate your IP address management workflows including assigning, tracking, troubleshooting, and auditing IP addresses across Amazon Web Services Regions and accounts throughout your Amazon Web Services Organization. For more information, see [What is IPAM?](https://docs.aws.amazon.com/vpc/latest/ipam/what-is-it-ipam.html) in the _Amazon VPC IPAM User Guide_.
abstract class Ipam
    with _i1.AWSEquatable<Ipam>
    implements Built<Ipam, IpamBuilder> {
  /// IPAM is a VPC feature that you can use to automate your IP address management workflows including assigning, tracking, troubleshooting, and auditing IP addresses across Amazon Web Services Regions and accounts throughout your Amazon Web Services Organization. For more information, see [What is IPAM?](https://docs.aws.amazon.com/vpc/latest/ipam/what-is-it-ipam.html) in the _Amazon VPC IPAM User Guide_.
  factory Ipam({
    String? ownerId,
    String? ipamId,
    String? ipamArn,
    String? ipamRegion,
    String? publicDefaultScopeId,
    String? privateDefaultScopeId,
    int? scopeCount,
    String? description,
    List<_i2.IpamOperatingRegion>? operatingRegions,
    _i3.IpamState? state,
    List<_i4.Tag>? tags,
  }) {
    scopeCount ??= 0;
    return _$Ipam._(
      ownerId: ownerId,
      ipamId: ipamId,
      ipamArn: ipamArn,
      ipamRegion: ipamRegion,
      publicDefaultScopeId: publicDefaultScopeId,
      privateDefaultScopeId: privateDefaultScopeId,
      scopeCount: scopeCount,
      description: description,
      operatingRegions:
          operatingRegions == null ? null : _i5.BuiltList(operatingRegions),
      state: state,
      tags: tags == null ? null : _i5.BuiltList(tags),
    );
  }

  /// IPAM is a VPC feature that you can use to automate your IP address management workflows including assigning, tracking, troubleshooting, and auditing IP addresses across Amazon Web Services Regions and accounts throughout your Amazon Web Services Organization. For more information, see [What is IPAM?](https://docs.aws.amazon.com/vpc/latest/ipam/what-is-it-ipam.html) in the _Amazon VPC IPAM User Guide_.
  factory Ipam.build([void Function(IpamBuilder) updates]) = _$Ipam;

  const Ipam._();

  static const List<_i6.SmithySerializer> serializers = [
    IpamEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(IpamBuilder b) {
    b.scopeCount = 0;
  }

  /// The Amazon Web Services account ID of the owner of the IPAM.
  String? get ownerId;

  /// The ID of the IPAM.
  String? get ipamId;

  /// The ARN of the IPAM.
  String? get ipamArn;

  /// The Amazon Web Services Region of the IPAM.
  String? get ipamRegion;

  /// The ID of the IPAM's default public scope.
  String? get publicDefaultScopeId;

  /// The ID of the IPAM's default private scope.
  String? get privateDefaultScopeId;

  /// The number of scopes in the IPAM. The scope quota is 5. For more information on quotas, see [Quotas in IPAM](https://docs.aws.amazon.com/vpc/latest/ipam/quotas-ipam.html) in the _Amazon VPC IPAM User Guide_.
  int get scopeCount;

  /// The description for the IPAM.
  String? get description;

  /// The operating Regions for an IPAM. Operating Regions are Amazon Web Services Regions where the IPAM is allowed to manage IP address CIDRs. IPAM only discovers and monitors resources in the Amazon Web Services Regions you select as operating Regions.
  ///
  /// For more information about operating Regions, see [Create an IPAM](https://docs.aws.amazon.com/vpc/latest/ipam/create-ipam.html) in the _Amazon VPC IPAM User Guide_.
  _i5.BuiltList<_i2.IpamOperatingRegion>? get operatingRegions;

  /// The state of the IPAM.
  _i3.IpamState? get state;

  /// The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `TeamA`, specify `tag:Owner` for the filter name and `TeamA` for the filter value.
  _i5.BuiltList<_i4.Tag>? get tags;
  @override
  List<Object?> get props => [
        ownerId,
        ipamId,
        ipamArn,
        ipamRegion,
        publicDefaultScopeId,
        privateDefaultScopeId,
        scopeCount,
        description,
        operatingRegions,
        state,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Ipam');
    helper.add(
      'ownerId',
      ownerId,
    );
    helper.add(
      'ipamId',
      ipamId,
    );
    helper.add(
      'ipamArn',
      ipamArn,
    );
    helper.add(
      'ipamRegion',
      ipamRegion,
    );
    helper.add(
      'publicDefaultScopeId',
      publicDefaultScopeId,
    );
    helper.add(
      'privateDefaultScopeId',
      privateDefaultScopeId,
    );
    helper.add(
      'scopeCount',
      scopeCount,
    );
    helper.add(
      'description',
      description,
    );
    helper.add(
      'operatingRegions',
      operatingRegions,
    );
    helper.add(
      'state',
      state,
    );
    helper.add(
      'tags',
      tags,
    );
    return helper.toString();
  }
}

class IpamEc2QuerySerializer extends _i6.StructuredSmithySerializer<Ipam> {
  const IpamEc2QuerySerializer() : super('Ipam');

  @override
  Iterable<Type> get types => const [
        Ipam,
        _$Ipam,
      ];
  @override
  Iterable<_i6.ShapeId> get supportedProtocols => const [
        _i6.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  Ipam deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IpamBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ownerId':
          result.ownerId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ipamId':
          result.ipamId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ipamArn':
          result.ipamArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ipamRegion':
          result.ipamRegion = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'publicDefaultScopeId':
          result.publicDefaultScopeId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'privateDefaultScopeId':
          result.privateDefaultScopeId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'scopeCount':
          result.scopeCount = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'description':
          result.description = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'operatingRegionSet':
          result.operatingRegions.replace((const _i6.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i6.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i5.BuiltList,
              [FullType(_i2.IpamOperatingRegion)],
            ),
          ) as _i5.BuiltList<_i2.IpamOperatingRegion>));
        case 'state':
          result.state = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.IpamState),
          ) as _i3.IpamState);
        case 'tagSet':
          result.tags.replace((const _i6.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i6.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i5.BuiltList,
              [FullType(_i4.Tag)],
            ),
          ) as _i5.BuiltList<_i4.Tag>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Ipam object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i6.XmlElementName(
        'IpamResponse',
        _i6.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final Ipam(
      :ownerId,
      :ipamId,
      :ipamArn,
      :ipamRegion,
      :publicDefaultScopeId,
      :privateDefaultScopeId,
      :scopeCount,
      :description,
      :operatingRegions,
      :state,
      :tags
    ) = object;
    if (ownerId != null) {
      result$
        ..add(const _i6.XmlElementName('OwnerId'))
        ..add(serializers.serialize(
          ownerId,
          specifiedType: const FullType(String),
        ));
    }
    if (ipamId != null) {
      result$
        ..add(const _i6.XmlElementName('IpamId'))
        ..add(serializers.serialize(
          ipamId,
          specifiedType: const FullType(String),
        ));
    }
    if (ipamArn != null) {
      result$
        ..add(const _i6.XmlElementName('IpamArn'))
        ..add(serializers.serialize(
          ipamArn,
          specifiedType: const FullType(String),
        ));
    }
    if (ipamRegion != null) {
      result$
        ..add(const _i6.XmlElementName('IpamRegion'))
        ..add(serializers.serialize(
          ipamRegion,
          specifiedType: const FullType(String),
        ));
    }
    if (publicDefaultScopeId != null) {
      result$
        ..add(const _i6.XmlElementName('PublicDefaultScopeId'))
        ..add(serializers.serialize(
          publicDefaultScopeId,
          specifiedType: const FullType(String),
        ));
    }
    if (privateDefaultScopeId != null) {
      result$
        ..add(const _i6.XmlElementName('PrivateDefaultScopeId'))
        ..add(serializers.serialize(
          privateDefaultScopeId,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i6.XmlElementName('ScopeCount'))
      ..add(serializers.serialize(
        scopeCount,
        specifiedType: const FullType(int),
      ));
    if (description != null) {
      result$
        ..add(const _i6.XmlElementName('Description'))
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(String),
        ));
    }
    if (operatingRegions != null) {
      result$
        ..add(const _i6.XmlElementName('OperatingRegionSet'))
        ..add(const _i6.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i6.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          operatingRegions,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(_i2.IpamOperatingRegion)],
          ),
        ));
    }
    if (state != null) {
      result$
        ..add(const _i6.XmlElementName('State'))
        ..add(serializers.serialize(
          state,
          specifiedType: const FullType.nullable(_i3.IpamState),
        ));
    }
    if (tags != null) {
      result$
        ..add(const _i6.XmlElementName('TagSet'))
        ..add(const _i6.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i6.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          tags,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(_i4.Tag)],
          ),
        ));
    }
    return result$;
  }
}
