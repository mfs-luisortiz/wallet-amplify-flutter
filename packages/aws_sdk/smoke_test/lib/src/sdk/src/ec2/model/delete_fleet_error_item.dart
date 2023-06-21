// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.delete_fleet_error_item; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_fleet_error.dart'
    as _i2;

part 'delete_fleet_error_item.g.dart';

/// Describes an EC2 Fleet that was not successfully deleted.
abstract class DeleteFleetErrorItem
    with _i1.AWSEquatable<DeleteFleetErrorItem>
    implements Built<DeleteFleetErrorItem, DeleteFleetErrorItemBuilder> {
  /// Describes an EC2 Fleet that was not successfully deleted.
  factory DeleteFleetErrorItem({
    _i2.DeleteFleetError? error,
    String? fleetId,
  }) {
    return _$DeleteFleetErrorItem._(
      error: error,
      fleetId: fleetId,
    );
  }

  /// Describes an EC2 Fleet that was not successfully deleted.
  factory DeleteFleetErrorItem.build(
          [void Function(DeleteFleetErrorItemBuilder) updates]) =
      _$DeleteFleetErrorItem;

  const DeleteFleetErrorItem._();

  static const List<_i3.SmithySerializer> serializers = [
    DeleteFleetErrorItemEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteFleetErrorItemBuilder b) {}

  /// The error.
  _i2.DeleteFleetError? get error;

  /// The ID of the EC2 Fleet.
  String? get fleetId;
  @override
  List<Object?> get props => [
        error,
        fleetId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteFleetErrorItem');
    helper.add(
      'error',
      error,
    );
    helper.add(
      'fleetId',
      fleetId,
    );
    return helper.toString();
  }
}

class DeleteFleetErrorItemEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DeleteFleetErrorItem> {
  const DeleteFleetErrorItemEc2QuerySerializer()
      : super('DeleteFleetErrorItem');

  @override
  Iterable<Type> get types => const [
        DeleteFleetErrorItem,
        _$DeleteFleetErrorItem,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteFleetErrorItem deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteFleetErrorItemBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'error':
          result.error.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.DeleteFleetError),
          ) as _i2.DeleteFleetError));
        case 'fleetId':
          result.fleetId = (serializers.deserialize(
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
    DeleteFleetErrorItem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DeleteFleetErrorItemResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DeleteFleetErrorItem(:error, :fleetId) = object;
    if (error != null) {
      result$
        ..add(const _i3.XmlElementName('Error'))
        ..add(serializers.serialize(
          error,
          specifiedType: const FullType(_i2.DeleteFleetError),
        ));
    }
    if (fleetId != null) {
      result$
        ..add(const _i3.XmlElementName('FleetId'))
        ..add(serializers.serialize(
          fleetId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
