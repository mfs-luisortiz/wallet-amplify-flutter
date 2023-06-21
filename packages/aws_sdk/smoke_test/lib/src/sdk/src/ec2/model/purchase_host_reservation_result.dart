// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.purchase_host_reservation_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/currency_code_values.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/purchase.dart' as _i3;

part 'purchase_host_reservation_result.g.dart';

abstract class PurchaseHostReservationResult
    with
        _i1.AWSEquatable<PurchaseHostReservationResult>
    implements
        Built<PurchaseHostReservationResult,
            PurchaseHostReservationResultBuilder> {
  factory PurchaseHostReservationResult({
    String? clientToken,
    _i2.CurrencyCodeValues? currencyCode,
    List<_i3.Purchase>? purchase,
    String? totalHourlyPrice,
    String? totalUpfrontPrice,
  }) {
    return _$PurchaseHostReservationResult._(
      clientToken: clientToken,
      currencyCode: currencyCode,
      purchase: purchase == null ? null : _i4.BuiltList(purchase),
      totalHourlyPrice: totalHourlyPrice,
      totalUpfrontPrice: totalUpfrontPrice,
    );
  }

  factory PurchaseHostReservationResult.build(
          [void Function(PurchaseHostReservationResultBuilder) updates]) =
      _$PurchaseHostReservationResult;

  const PurchaseHostReservationResult._();

  /// Constructs a [PurchaseHostReservationResult] from a [payload] and [response].
  factory PurchaseHostReservationResult.fromResponse(
    PurchaseHostReservationResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i5.SmithySerializer> serializers = [
    PurchaseHostReservationResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PurchaseHostReservationResultBuilder b) {}

  /// Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see [Ensuring Idempotency](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).
  String? get clientToken;

  /// The currency in which the `totalUpfrontPrice` and `totalHourlyPrice` amounts are specified. At this time, the only supported currency is `USD`.
  _i2.CurrencyCodeValues? get currencyCode;

  /// Describes the details of the purchase.
  _i4.BuiltList<_i3.Purchase>? get purchase;

  /// The total hourly price of the reservation calculated per hour.
  String? get totalHourlyPrice;

  /// The total amount charged to your account when you purchase the reservation.
  String? get totalUpfrontPrice;
  @override
  List<Object?> get props => [
        clientToken,
        currencyCode,
        purchase,
        totalHourlyPrice,
        totalUpfrontPrice,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PurchaseHostReservationResult');
    helper.add(
      'clientToken',
      clientToken,
    );
    helper.add(
      'currencyCode',
      currencyCode,
    );
    helper.add(
      'purchase',
      purchase,
    );
    helper.add(
      'totalHourlyPrice',
      totalHourlyPrice,
    );
    helper.add(
      'totalUpfrontPrice',
      totalUpfrontPrice,
    );
    return helper.toString();
  }
}

class PurchaseHostReservationResultEc2QuerySerializer
    extends _i5.StructuredSmithySerializer<PurchaseHostReservationResult> {
  const PurchaseHostReservationResultEc2QuerySerializer()
      : super('PurchaseHostReservationResult');

  @override
  Iterable<Type> get types => const [
        PurchaseHostReservationResult,
        _$PurchaseHostReservationResult,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  PurchaseHostReservationResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PurchaseHostReservationResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'clientToken':
          result.clientToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'currencyCode':
          result.currencyCode = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.CurrencyCodeValues),
          ) as _i2.CurrencyCodeValues);
        case 'purchase':
          result.purchase.replace((const _i5.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i5.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(_i3.Purchase)],
            ),
          ) as _i4.BuiltList<_i3.Purchase>));
        case 'totalHourlyPrice':
          result.totalHourlyPrice = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'totalUpfrontPrice':
          result.totalUpfrontPrice = (serializers.deserialize(
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
    PurchaseHostReservationResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i5.XmlElementName(
        'PurchaseHostReservationResultResponse',
        _i5.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final PurchaseHostReservationResult(
      :clientToken,
      :currencyCode,
      :purchase,
      :totalHourlyPrice,
      :totalUpfrontPrice
    ) = object;
    if (clientToken != null) {
      result$
        ..add(const _i5.XmlElementName('ClientToken'))
        ..add(serializers.serialize(
          clientToken,
          specifiedType: const FullType(String),
        ));
    }
    if (currencyCode != null) {
      result$
        ..add(const _i5.XmlElementName('CurrencyCode'))
        ..add(serializers.serialize(
          currencyCode,
          specifiedType: const FullType.nullable(_i2.CurrencyCodeValues),
        ));
    }
    if (purchase != null) {
      result$
        ..add(const _i5.XmlElementName('Purchase'))
        ..add(const _i5.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i5.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          purchase,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i3.Purchase)],
          ),
        ));
    }
    if (totalHourlyPrice != null) {
      result$
        ..add(const _i5.XmlElementName('TotalHourlyPrice'))
        ..add(serializers.serialize(
          totalHourlyPrice,
          specifiedType: const FullType(String),
        ));
    }
    if (totalUpfrontPrice != null) {
      result$
        ..add(const _i5.XmlElementName('TotalUpfrontPrice'))
        ..add(serializers.serialize(
          totalUpfrontPrice,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
