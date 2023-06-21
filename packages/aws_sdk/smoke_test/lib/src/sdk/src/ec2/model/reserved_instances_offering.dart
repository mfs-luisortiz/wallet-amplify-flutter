// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.ec2.model.reserved_instances_offering; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i12;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i2;
import 'package:smithy/smithy.dart' as _i13;
import 'package:smoke_test/src/sdk/src/ec2/model/currency_code_values.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_type.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/offering_class_type.dart'
    as _i7;
import 'package:smoke_test/src/sdk/src/ec2/model/offering_type_values.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/ec2/model/pricing_detail.dart' as _i9;
import 'package:smoke_test/src/sdk/src/ec2/model/recurring_charge.dart' as _i10;
import 'package:smoke_test/src/sdk/src/ec2/model/ri_product_description.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/scope.dart' as _i11;
import 'package:smoke_test/src/sdk/src/ec2/model/tenancy.dart' as _i6;

part 'reserved_instances_offering.g.dart';

/// Describes a Reserved Instance offering.
abstract class ReservedInstancesOffering
    with _i1.AWSEquatable<ReservedInstancesOffering>
    implements
        Built<ReservedInstancesOffering, ReservedInstancesOfferingBuilder> {
  /// Describes a Reserved Instance offering.
  factory ReservedInstancesOffering({
    String? availabilityZone,
    _i2.Int64? duration,
    double? fixedPrice,
    _i3.InstanceType? instanceType,
    _i4.RiProductDescription? productDescription,
    String? reservedInstancesOfferingId,
    double? usagePrice,
    _i5.CurrencyCodeValues? currencyCode,
    _i6.Tenancy? instanceTenancy,
    bool? marketplace,
    _i7.OfferingClassType? offeringClass,
    _i8.OfferingTypeValues? offeringType,
    List<_i9.PricingDetail>? pricingDetails,
    List<_i10.RecurringCharge>? recurringCharges,
    _i11.Scope? scope,
  }) {
    duration ??= _i2.Int64.ZERO;
    fixedPrice ??= 0;
    usagePrice ??= 0;
    marketplace ??= false;
    return _$ReservedInstancesOffering._(
      availabilityZone: availabilityZone,
      duration: duration,
      fixedPrice: fixedPrice,
      instanceType: instanceType,
      productDescription: productDescription,
      reservedInstancesOfferingId: reservedInstancesOfferingId,
      usagePrice: usagePrice,
      currencyCode: currencyCode,
      instanceTenancy: instanceTenancy,
      marketplace: marketplace,
      offeringClass: offeringClass,
      offeringType: offeringType,
      pricingDetails:
          pricingDetails == null ? null : _i12.BuiltList(pricingDetails),
      recurringCharges:
          recurringCharges == null ? null : _i12.BuiltList(recurringCharges),
      scope: scope,
    );
  }

  /// Describes a Reserved Instance offering.
  factory ReservedInstancesOffering.build(
          [void Function(ReservedInstancesOfferingBuilder) updates]) =
      _$ReservedInstancesOffering;

  const ReservedInstancesOffering._();

  static const List<_i13.SmithySerializer> serializers = [
    ReservedInstancesOfferingEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ReservedInstancesOfferingBuilder b) {
    b.duration = _i2.Int64.ZERO;
    b.fixedPrice = 0;
    b.usagePrice = 0;
    b.marketplace = false;
  }

  /// The Availability Zone in which the Reserved Instance can be used.
  String? get availabilityZone;

  /// The duration of the Reserved Instance, in seconds.
  _i2.Int64 get duration;

  /// The purchase price of the Reserved Instance.
  double get fixedPrice;

  /// The instance type on which the Reserved Instance can be used.
  _i3.InstanceType? get instanceType;

  /// The Reserved Instance product platform description.
  _i4.RiProductDescription? get productDescription;

  /// The ID of the Reserved Instance offering. This is the offering ID used in GetReservedInstancesExchangeQuote to confirm that an exchange can be made.
  String? get reservedInstancesOfferingId;

  /// The usage price of the Reserved Instance, per hour.
  double get usagePrice;

  /// The currency of the Reserved Instance offering you are purchasing. It's specified using ISO 4217 standard currency codes. At this time, the only supported currency is `USD`.
  _i5.CurrencyCodeValues? get currencyCode;

  /// The tenancy of the instance.
  _i6.Tenancy? get instanceTenancy;

  /// Indicates whether the offering is available through the Reserved Instance Marketplace (resale) or Amazon Web Services. If it's a Reserved Instance Marketplace offering, this is `true`.
  bool get marketplace;

  /// If `convertible` it can be exchanged for Reserved Instances of the same or higher monetary value, with different configurations. If `standard`, it is not possible to perform an exchange.
  _i7.OfferingClassType? get offeringClass;

  /// The Reserved Instance offering type.
  _i8.OfferingTypeValues? get offeringType;

  /// The pricing details of the Reserved Instance offering.
  _i12.BuiltList<_i9.PricingDetail>? get pricingDetails;

  /// The recurring charge tag assigned to the resource.
  _i12.BuiltList<_i10.RecurringCharge>? get recurringCharges;

  /// Whether the Reserved Instance is applied to instances in a Region or an Availability Zone.
  _i11.Scope? get scope;
  @override
  List<Object?> get props => [
        availabilityZone,
        duration,
        fixedPrice,
        instanceType,
        productDescription,
        reservedInstancesOfferingId,
        usagePrice,
        currencyCode,
        instanceTenancy,
        marketplace,
        offeringClass,
        offeringType,
        pricingDetails,
        recurringCharges,
        scope,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ReservedInstancesOffering');
    helper.add(
      'availabilityZone',
      availabilityZone,
    );
    helper.add(
      'duration',
      duration,
    );
    helper.add(
      'fixedPrice',
      fixedPrice,
    );
    helper.add(
      'instanceType',
      instanceType,
    );
    helper.add(
      'productDescription',
      productDescription,
    );
    helper.add(
      'reservedInstancesOfferingId',
      reservedInstancesOfferingId,
    );
    helper.add(
      'usagePrice',
      usagePrice,
    );
    helper.add(
      'currencyCode',
      currencyCode,
    );
    helper.add(
      'instanceTenancy',
      instanceTenancy,
    );
    helper.add(
      'marketplace',
      marketplace,
    );
    helper.add(
      'offeringClass',
      offeringClass,
    );
    helper.add(
      'offeringType',
      offeringType,
    );
    helper.add(
      'pricingDetails',
      pricingDetails,
    );
    helper.add(
      'recurringCharges',
      recurringCharges,
    );
    helper.add(
      'scope',
      scope,
    );
    return helper.toString();
  }
}

class ReservedInstancesOfferingEc2QuerySerializer
    extends _i13.StructuredSmithySerializer<ReservedInstancesOffering> {
  const ReservedInstancesOfferingEc2QuerySerializer()
      : super('ReservedInstancesOffering');

  @override
  Iterable<Type> get types => const [
        ReservedInstancesOffering,
        _$ReservedInstancesOffering,
      ];
  @override
  Iterable<_i13.ShapeId> get supportedProtocols => const [
        _i13.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ReservedInstancesOffering deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReservedInstancesOfferingBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'availabilityZone':
          result.availabilityZone = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'duration':
          result.duration = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.Int64),
          ) as _i2.Int64);
        case 'fixedPrice':
          result.fixedPrice = (serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double);
        case 'instanceType':
          result.instanceType = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.InstanceType),
          ) as _i3.InstanceType);
        case 'productDescription':
          result.productDescription = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.RiProductDescription),
          ) as _i4.RiProductDescription);
        case 'reservedInstancesOfferingId':
          result.reservedInstancesOfferingId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'usagePrice':
          result.usagePrice = (serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double);
        case 'currencyCode':
          result.currencyCode = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i5.CurrencyCodeValues),
          ) as _i5.CurrencyCodeValues);
        case 'instanceTenancy':
          result.instanceTenancy = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i6.Tenancy),
          ) as _i6.Tenancy);
        case 'marketplace':
          result.marketplace = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'offeringClass':
          result.offeringClass = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i7.OfferingClassType),
          ) as _i7.OfferingClassType);
        case 'offeringType':
          result.offeringType = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i8.OfferingTypeValues),
          ) as _i8.OfferingTypeValues);
        case 'pricingDetailsSet':
          result.pricingDetails.replace((const _i13.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i13.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i12.BuiltList,
              [FullType(_i9.PricingDetail)],
            ),
          ) as _i12.BuiltList<_i9.PricingDetail>));
        case 'recurringCharges':
          result.recurringCharges.replace((const _i13.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i13.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i12.BuiltList,
              [FullType(_i10.RecurringCharge)],
            ),
          ) as _i12.BuiltList<_i10.RecurringCharge>));
        case 'scope':
          result.scope = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i11.Scope),
          ) as _i11.Scope);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ReservedInstancesOffering object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i13.XmlElementName(
        'ReservedInstancesOfferingResponse',
        _i13.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ReservedInstancesOffering(
      :availabilityZone,
      :duration,
      :fixedPrice,
      :instanceType,
      :productDescription,
      :reservedInstancesOfferingId,
      :usagePrice,
      :currencyCode,
      :instanceTenancy,
      :marketplace,
      :offeringClass,
      :offeringType,
      :pricingDetails,
      :recurringCharges,
      :scope
    ) = object;
    if (availabilityZone != null) {
      result$
        ..add(const _i13.XmlElementName('AvailabilityZone'))
        ..add(serializers.serialize(
          availabilityZone,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i13.XmlElementName('Duration'))
      ..add(serializers.serialize(
        duration,
        specifiedType: const FullType(_i2.Int64),
      ));
    result$
      ..add(const _i13.XmlElementName('FixedPrice'))
      ..add(serializers.serialize(
        fixedPrice,
        specifiedType: const FullType(double),
      ));
    if (instanceType != null) {
      result$
        ..add(const _i13.XmlElementName('InstanceType'))
        ..add(serializers.serialize(
          instanceType,
          specifiedType: const FullType.nullable(_i3.InstanceType),
        ));
    }
    if (productDescription != null) {
      result$
        ..add(const _i13.XmlElementName('ProductDescription'))
        ..add(serializers.serialize(
          productDescription,
          specifiedType: const FullType.nullable(_i4.RiProductDescription),
        ));
    }
    if (reservedInstancesOfferingId != null) {
      result$
        ..add(const _i13.XmlElementName('ReservedInstancesOfferingId'))
        ..add(serializers.serialize(
          reservedInstancesOfferingId,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i13.XmlElementName('UsagePrice'))
      ..add(serializers.serialize(
        usagePrice,
        specifiedType: const FullType(double),
      ));
    if (currencyCode != null) {
      result$
        ..add(const _i13.XmlElementName('CurrencyCode'))
        ..add(serializers.serialize(
          currencyCode,
          specifiedType: const FullType.nullable(_i5.CurrencyCodeValues),
        ));
    }
    if (instanceTenancy != null) {
      result$
        ..add(const _i13.XmlElementName('InstanceTenancy'))
        ..add(serializers.serialize(
          instanceTenancy,
          specifiedType: const FullType.nullable(_i6.Tenancy),
        ));
    }
    result$
      ..add(const _i13.XmlElementName('Marketplace'))
      ..add(serializers.serialize(
        marketplace,
        specifiedType: const FullType(bool),
      ));
    if (offeringClass != null) {
      result$
        ..add(const _i13.XmlElementName('OfferingClass'))
        ..add(serializers.serialize(
          offeringClass,
          specifiedType: const FullType.nullable(_i7.OfferingClassType),
        ));
    }
    if (offeringType != null) {
      result$
        ..add(const _i13.XmlElementName('OfferingType'))
        ..add(serializers.serialize(
          offeringType,
          specifiedType: const FullType.nullable(_i8.OfferingTypeValues),
        ));
    }
    if (pricingDetails != null) {
      result$
        ..add(const _i13.XmlElementName('PricingDetailsSet'))
        ..add(const _i13.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i13.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          pricingDetails,
          specifiedType: const FullType.nullable(
            _i12.BuiltList,
            [FullType(_i9.PricingDetail)],
          ),
        ));
    }
    if (recurringCharges != null) {
      result$
        ..add(const _i13.XmlElementName('RecurringCharges'))
        ..add(const _i13.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i13.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          recurringCharges,
          specifiedType: const FullType.nullable(
            _i12.BuiltList,
            [FullType(_i10.RecurringCharge)],
          ),
        ));
    }
    if (scope != null) {
      result$
        ..add(const _i13.XmlElementName('Scope'))
        ..add(serializers.serialize(
          scope,
          specifiedType: const FullType.nullable(_i11.Scope),
        ));
    }
    return result$;
  }
}
