// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.host_offering; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/currency_code_values.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/payment_option.dart' as _i3;

part 'host_offering.g.dart';

/// Details about the Dedicated Host Reservation offering.
abstract class HostOffering
    with _i1.AWSEquatable<HostOffering>
    implements Built<HostOffering, HostOfferingBuilder> {
  /// Details about the Dedicated Host Reservation offering.
  factory HostOffering({
    _i2.CurrencyCodeValues? currencyCode,
    int? duration,
    String? hourlyPrice,
    String? instanceFamily,
    String? offeringId,
    _i3.PaymentOption? paymentOption,
    String? upfrontPrice,
  }) {
    duration ??= 0;
    return _$HostOffering._(
      currencyCode: currencyCode,
      duration: duration,
      hourlyPrice: hourlyPrice,
      instanceFamily: instanceFamily,
      offeringId: offeringId,
      paymentOption: paymentOption,
      upfrontPrice: upfrontPrice,
    );
  }

  /// Details about the Dedicated Host Reservation offering.
  factory HostOffering.build([void Function(HostOfferingBuilder) updates]) =
      _$HostOffering;

  const HostOffering._();

  static const List<_i4.SmithySerializer> serializers = [
    HostOfferingEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(HostOfferingBuilder b) {
    b.duration = 0;
  }

  /// The currency of the offering.
  _i2.CurrencyCodeValues? get currencyCode;

  /// The duration of the offering (in seconds).
  int get duration;

  /// The hourly price of the offering.
  String? get hourlyPrice;

  /// The instance family of the offering.
  String? get instanceFamily;

  /// The ID of the offering.
  String? get offeringId;

  /// The available payment option.
  _i3.PaymentOption? get paymentOption;

  /// The upfront price of the offering. Does not apply to No Upfront offerings.
  String? get upfrontPrice;
  @override
  List<Object?> get props => [
        currencyCode,
        duration,
        hourlyPrice,
        instanceFamily,
        offeringId,
        paymentOption,
        upfrontPrice,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('HostOffering');
    helper.add(
      'currencyCode',
      currencyCode,
    );
    helper.add(
      'duration',
      duration,
    );
    helper.add(
      'hourlyPrice',
      hourlyPrice,
    );
    helper.add(
      'instanceFamily',
      instanceFamily,
    );
    helper.add(
      'offeringId',
      offeringId,
    );
    helper.add(
      'paymentOption',
      paymentOption,
    );
    helper.add(
      'upfrontPrice',
      upfrontPrice,
    );
    return helper.toString();
  }
}

class HostOfferingEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<HostOffering> {
  const HostOfferingEc2QuerySerializer() : super('HostOffering');

  @override
  Iterable<Type> get types => const [
        HostOffering,
        _$HostOffering,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  HostOffering deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HostOfferingBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'currencyCode':
          result.currencyCode = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.CurrencyCodeValues),
          ) as _i2.CurrencyCodeValues);
        case 'duration':
          result.duration = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'hourlyPrice':
          result.hourlyPrice = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'instanceFamily':
          result.instanceFamily = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'offeringId':
          result.offeringId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'paymentOption':
          result.paymentOption = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.PaymentOption),
          ) as _i3.PaymentOption);
        case 'upfrontPrice':
          result.upfrontPrice = (serializers.deserialize(
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
    HostOffering object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i4.XmlElementName(
        'HostOfferingResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final HostOffering(
      :currencyCode,
      :duration,
      :hourlyPrice,
      :instanceFamily,
      :offeringId,
      :paymentOption,
      :upfrontPrice
    ) = object;
    if (currencyCode != null) {
      result$
        ..add(const _i4.XmlElementName('CurrencyCode'))
        ..add(serializers.serialize(
          currencyCode,
          specifiedType: const FullType.nullable(_i2.CurrencyCodeValues),
        ));
    }
    result$
      ..add(const _i4.XmlElementName('Duration'))
      ..add(serializers.serialize(
        duration,
        specifiedType: const FullType(int),
      ));
    if (hourlyPrice != null) {
      result$
        ..add(const _i4.XmlElementName('HourlyPrice'))
        ..add(serializers.serialize(
          hourlyPrice,
          specifiedType: const FullType(String),
        ));
    }
    if (instanceFamily != null) {
      result$
        ..add(const _i4.XmlElementName('InstanceFamily'))
        ..add(serializers.serialize(
          instanceFamily,
          specifiedType: const FullType(String),
        ));
    }
    if (offeringId != null) {
      result$
        ..add(const _i4.XmlElementName('OfferingId'))
        ..add(serializers.serialize(
          offeringId,
          specifiedType: const FullType(String),
        ));
    }
    if (paymentOption != null) {
      result$
        ..add(const _i4.XmlElementName('PaymentOption'))
        ..add(serializers.serialize(
          paymentOption,
          specifiedType: const FullType.nullable(_i3.PaymentOption),
        ));
    }
    if (upfrontPrice != null) {
      result$
        ..add(const _i4.XmlElementName('UpfrontPrice'))
        ..add(serializers.serialize(
          upfrontPrice,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
