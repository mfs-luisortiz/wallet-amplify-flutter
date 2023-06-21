// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.network_insights_access_scope_analysis; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i6;
import 'package:smoke_test/src/sdk/src/ec2/model/analysis_status.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/findings_found.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i4;

part 'network_insights_access_scope_analysis.g.dart';

/// Describes a Network Access Scope analysis.
abstract class NetworkInsightsAccessScopeAnalysis
    with
        _i1.AWSEquatable<NetworkInsightsAccessScopeAnalysis>
    implements
        Built<NetworkInsightsAccessScopeAnalysis,
            NetworkInsightsAccessScopeAnalysisBuilder> {
  /// Describes a Network Access Scope analysis.
  factory NetworkInsightsAccessScopeAnalysis({
    String? networkInsightsAccessScopeAnalysisId,
    String? networkInsightsAccessScopeAnalysisArn,
    String? networkInsightsAccessScopeId,
    _i2.AnalysisStatus? status,
    String? statusMessage,
    String? warningMessage,
    DateTime? startDate,
    DateTime? endDate,
    _i3.FindingsFound? findingsFound,
    int? analyzedEniCount,
    List<_i4.Tag>? tags,
  }) {
    analyzedEniCount ??= 0;
    return _$NetworkInsightsAccessScopeAnalysis._(
      networkInsightsAccessScopeAnalysisId:
          networkInsightsAccessScopeAnalysisId,
      networkInsightsAccessScopeAnalysisArn:
          networkInsightsAccessScopeAnalysisArn,
      networkInsightsAccessScopeId: networkInsightsAccessScopeId,
      status: status,
      statusMessage: statusMessage,
      warningMessage: warningMessage,
      startDate: startDate,
      endDate: endDate,
      findingsFound: findingsFound,
      analyzedEniCount: analyzedEniCount,
      tags: tags == null ? null : _i5.BuiltList(tags),
    );
  }

  /// Describes a Network Access Scope analysis.
  factory NetworkInsightsAccessScopeAnalysis.build(
          [void Function(NetworkInsightsAccessScopeAnalysisBuilder) updates]) =
      _$NetworkInsightsAccessScopeAnalysis;

  const NetworkInsightsAccessScopeAnalysis._();

  static const List<_i6.SmithySerializer> serializers = [
    NetworkInsightsAccessScopeAnalysisEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(NetworkInsightsAccessScopeAnalysisBuilder b) {
    b.analyzedEniCount = 0;
  }

  /// The ID of the Network Access Scope analysis.
  String? get networkInsightsAccessScopeAnalysisId;

  /// The Amazon Resource Name (ARN) of the Network Access Scope analysis.
  String? get networkInsightsAccessScopeAnalysisArn;

  /// The ID of the Network Access Scope.
  String? get networkInsightsAccessScopeId;

  /// The status.
  _i2.AnalysisStatus? get status;

  /// The status message.
  String? get statusMessage;

  /// The warning message.
  String? get warningMessage;

  /// The analysis start date.
  DateTime? get startDate;

  /// The analysis end date.
  DateTime? get endDate;

  /// Indicates whether there are findings.
  _i3.FindingsFound? get findingsFound;

  /// The number of network interfaces analyzed.
  int get analyzedEniCount;

  /// The tags.
  _i5.BuiltList<_i4.Tag>? get tags;
  @override
  List<Object?> get props => [
        networkInsightsAccessScopeAnalysisId,
        networkInsightsAccessScopeAnalysisArn,
        networkInsightsAccessScopeId,
        status,
        statusMessage,
        warningMessage,
        startDate,
        endDate,
        findingsFound,
        analyzedEniCount,
        tags,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('NetworkInsightsAccessScopeAnalysis');
    helper.add(
      'networkInsightsAccessScopeAnalysisId',
      networkInsightsAccessScopeAnalysisId,
    );
    helper.add(
      'networkInsightsAccessScopeAnalysisArn',
      networkInsightsAccessScopeAnalysisArn,
    );
    helper.add(
      'networkInsightsAccessScopeId',
      networkInsightsAccessScopeId,
    );
    helper.add(
      'status',
      status,
    );
    helper.add(
      'statusMessage',
      statusMessage,
    );
    helper.add(
      'warningMessage',
      warningMessage,
    );
    helper.add(
      'startDate',
      startDate,
    );
    helper.add(
      'endDate',
      endDate,
    );
    helper.add(
      'findingsFound',
      findingsFound,
    );
    helper.add(
      'analyzedEniCount',
      analyzedEniCount,
    );
    helper.add(
      'tags',
      tags,
    );
    return helper.toString();
  }
}

class NetworkInsightsAccessScopeAnalysisEc2QuerySerializer
    extends _i6.StructuredSmithySerializer<NetworkInsightsAccessScopeAnalysis> {
  const NetworkInsightsAccessScopeAnalysisEc2QuerySerializer()
      : super('NetworkInsightsAccessScopeAnalysis');

  @override
  Iterable<Type> get types => const [
        NetworkInsightsAccessScopeAnalysis,
        _$NetworkInsightsAccessScopeAnalysis,
      ];
  @override
  Iterable<_i6.ShapeId> get supportedProtocols => const [
        _i6.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  NetworkInsightsAccessScopeAnalysis deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NetworkInsightsAccessScopeAnalysisBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'networkInsightsAccessScopeAnalysisId':
          result.networkInsightsAccessScopeAnalysisId =
              (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'networkInsightsAccessScopeAnalysisArn':
          result.networkInsightsAccessScopeAnalysisArn =
              (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'networkInsightsAccessScopeId':
          result.networkInsightsAccessScopeId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'status':
          result.status = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.AnalysisStatus),
          ) as _i2.AnalysisStatus);
        case 'statusMessage':
          result.statusMessage = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'warningMessage':
          result.warningMessage = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'startDate':
          result.startDate = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'endDate':
          result.endDate = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'findingsFound':
          result.findingsFound = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.FindingsFound),
          ) as _i3.FindingsFound);
        case 'analyzedEniCount':
          result.analyzedEniCount = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
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
    NetworkInsightsAccessScopeAnalysis object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i6.XmlElementName(
        'NetworkInsightsAccessScopeAnalysisResponse',
        _i6.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final NetworkInsightsAccessScopeAnalysis(
      :networkInsightsAccessScopeAnalysisId,
      :networkInsightsAccessScopeAnalysisArn,
      :networkInsightsAccessScopeId,
      :status,
      :statusMessage,
      :warningMessage,
      :startDate,
      :endDate,
      :findingsFound,
      :analyzedEniCount,
      :tags
    ) = object;
    if (networkInsightsAccessScopeAnalysisId != null) {
      result$
        ..add(const _i6.XmlElementName('NetworkInsightsAccessScopeAnalysisId'))
        ..add(serializers.serialize(
          networkInsightsAccessScopeAnalysisId,
          specifiedType: const FullType(String),
        ));
    }
    if (networkInsightsAccessScopeAnalysisArn != null) {
      result$
        ..add(const _i6.XmlElementName('NetworkInsightsAccessScopeAnalysisArn'))
        ..add(serializers.serialize(
          networkInsightsAccessScopeAnalysisArn,
          specifiedType: const FullType(String),
        ));
    }
    if (networkInsightsAccessScopeId != null) {
      result$
        ..add(const _i6.XmlElementName('NetworkInsightsAccessScopeId'))
        ..add(serializers.serialize(
          networkInsightsAccessScopeId,
          specifiedType: const FullType(String),
        ));
    }
    if (status != null) {
      result$
        ..add(const _i6.XmlElementName('Status'))
        ..add(serializers.serialize(
          status,
          specifiedType: const FullType.nullable(_i2.AnalysisStatus),
        ));
    }
    if (statusMessage != null) {
      result$
        ..add(const _i6.XmlElementName('StatusMessage'))
        ..add(serializers.serialize(
          statusMessage,
          specifiedType: const FullType(String),
        ));
    }
    if (warningMessage != null) {
      result$
        ..add(const _i6.XmlElementName('WarningMessage'))
        ..add(serializers.serialize(
          warningMessage,
          specifiedType: const FullType(String),
        ));
    }
    if (startDate != null) {
      result$
        ..add(const _i6.XmlElementName('StartDate'))
        ..add(serializers.serialize(
          startDate,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (endDate != null) {
      result$
        ..add(const _i6.XmlElementName('EndDate'))
        ..add(serializers.serialize(
          endDate,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (findingsFound != null) {
      result$
        ..add(const _i6.XmlElementName('FindingsFound'))
        ..add(serializers.serialize(
          findingsFound,
          specifiedType: const FullType.nullable(_i3.FindingsFound),
        ));
    }
    result$
      ..add(const _i6.XmlElementName('AnalyzedEniCount'))
      ..add(serializers.serialize(
        analyzedEniCount,
        specifiedType: const FullType(int),
      ));
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
