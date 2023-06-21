// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fleet_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FleetData extends FleetData {
  @override
  final _i2.FleetActivityStatus? activityStatus;
  @override
  final DateTime? createTime;
  @override
  final String? fleetId;
  @override
  final _i3.FleetStateCode? fleetState;
  @override
  final String? clientToken;
  @override
  final _i4.FleetExcessCapacityTerminationPolicy?
      excessCapacityTerminationPolicy;
  @override
  final double fulfilledCapacity;
  @override
  final double fulfilledOnDemandCapacity;
  @override
  final _i13.BuiltList<_i5.FleetLaunchTemplateConfig>? launchTemplateConfigs;
  @override
  final _i6.TargetCapacitySpecification? targetCapacitySpecification;
  @override
  final bool terminateInstancesWithExpiration;
  @override
  final _i7.FleetType? type;
  @override
  final DateTime? validFrom;
  @override
  final DateTime? validUntil;
  @override
  final bool replaceUnhealthyInstances;
  @override
  final _i8.SpotOptions? spotOptions;
  @override
  final _i9.OnDemandOptions? onDemandOptions;
  @override
  final _i13.BuiltList<_i10.Tag>? tags;
  @override
  final _i13.BuiltList<_i11.DescribeFleetError>? errors;
  @override
  final _i13.BuiltList<_i12.DescribeFleetsInstances>? instances;
  @override
  final String? context;

  factory _$FleetData([void Function(FleetDataBuilder)? updates]) =>
      (new FleetDataBuilder()..update(updates))._build();

  _$FleetData._(
      {this.activityStatus,
      this.createTime,
      this.fleetId,
      this.fleetState,
      this.clientToken,
      this.excessCapacityTerminationPolicy,
      required this.fulfilledCapacity,
      required this.fulfilledOnDemandCapacity,
      this.launchTemplateConfigs,
      this.targetCapacitySpecification,
      required this.terminateInstancesWithExpiration,
      this.type,
      this.validFrom,
      this.validUntil,
      required this.replaceUnhealthyInstances,
      this.spotOptions,
      this.onDemandOptions,
      this.tags,
      this.errors,
      this.instances,
      this.context})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        fulfilledCapacity, r'FleetData', 'fulfilledCapacity');
    BuiltValueNullFieldError.checkNotNull(
        fulfilledOnDemandCapacity, r'FleetData', 'fulfilledOnDemandCapacity');
    BuiltValueNullFieldError.checkNotNull(terminateInstancesWithExpiration,
        r'FleetData', 'terminateInstancesWithExpiration');
    BuiltValueNullFieldError.checkNotNull(
        replaceUnhealthyInstances, r'FleetData', 'replaceUnhealthyInstances');
  }

  @override
  FleetData rebuild(void Function(FleetDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FleetDataBuilder toBuilder() => new FleetDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FleetData &&
        activityStatus == other.activityStatus &&
        createTime == other.createTime &&
        fleetId == other.fleetId &&
        fleetState == other.fleetState &&
        clientToken == other.clientToken &&
        excessCapacityTerminationPolicy ==
            other.excessCapacityTerminationPolicy &&
        fulfilledCapacity == other.fulfilledCapacity &&
        fulfilledOnDemandCapacity == other.fulfilledOnDemandCapacity &&
        launchTemplateConfigs == other.launchTemplateConfigs &&
        targetCapacitySpecification == other.targetCapacitySpecification &&
        terminateInstancesWithExpiration ==
            other.terminateInstancesWithExpiration &&
        type == other.type &&
        validFrom == other.validFrom &&
        validUntil == other.validUntil &&
        replaceUnhealthyInstances == other.replaceUnhealthyInstances &&
        spotOptions == other.spotOptions &&
        onDemandOptions == other.onDemandOptions &&
        tags == other.tags &&
        errors == other.errors &&
        instances == other.instances &&
        context == other.context;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, activityStatus.hashCode);
    _$hash = $jc(_$hash, createTime.hashCode);
    _$hash = $jc(_$hash, fleetId.hashCode);
    _$hash = $jc(_$hash, fleetState.hashCode);
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jc(_$hash, excessCapacityTerminationPolicy.hashCode);
    _$hash = $jc(_$hash, fulfilledCapacity.hashCode);
    _$hash = $jc(_$hash, fulfilledOnDemandCapacity.hashCode);
    _$hash = $jc(_$hash, launchTemplateConfigs.hashCode);
    _$hash = $jc(_$hash, targetCapacitySpecification.hashCode);
    _$hash = $jc(_$hash, terminateInstancesWithExpiration.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, validFrom.hashCode);
    _$hash = $jc(_$hash, validUntil.hashCode);
    _$hash = $jc(_$hash, replaceUnhealthyInstances.hashCode);
    _$hash = $jc(_$hash, spotOptions.hashCode);
    _$hash = $jc(_$hash, onDemandOptions.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, errors.hashCode);
    _$hash = $jc(_$hash, instances.hashCode);
    _$hash = $jc(_$hash, context.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class FleetDataBuilder implements Builder<FleetData, FleetDataBuilder> {
  _$FleetData? _$v;

  _i2.FleetActivityStatus? _activityStatus;
  _i2.FleetActivityStatus? get activityStatus => _$this._activityStatus;
  set activityStatus(_i2.FleetActivityStatus? activityStatus) =>
      _$this._activityStatus = activityStatus;

  DateTime? _createTime;
  DateTime? get createTime => _$this._createTime;
  set createTime(DateTime? createTime) => _$this._createTime = createTime;

  String? _fleetId;
  String? get fleetId => _$this._fleetId;
  set fleetId(String? fleetId) => _$this._fleetId = fleetId;

  _i3.FleetStateCode? _fleetState;
  _i3.FleetStateCode? get fleetState => _$this._fleetState;
  set fleetState(_i3.FleetStateCode? fleetState) =>
      _$this._fleetState = fleetState;

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

  _i4.FleetExcessCapacityTerminationPolicy? _excessCapacityTerminationPolicy;
  _i4.FleetExcessCapacityTerminationPolicy?
      get excessCapacityTerminationPolicy =>
          _$this._excessCapacityTerminationPolicy;
  set excessCapacityTerminationPolicy(
          _i4.FleetExcessCapacityTerminationPolicy?
              excessCapacityTerminationPolicy) =>
      _$this._excessCapacityTerminationPolicy = excessCapacityTerminationPolicy;

  double? _fulfilledCapacity;
  double? get fulfilledCapacity => _$this._fulfilledCapacity;
  set fulfilledCapacity(double? fulfilledCapacity) =>
      _$this._fulfilledCapacity = fulfilledCapacity;

  double? _fulfilledOnDemandCapacity;
  double? get fulfilledOnDemandCapacity => _$this._fulfilledOnDemandCapacity;
  set fulfilledOnDemandCapacity(double? fulfilledOnDemandCapacity) =>
      _$this._fulfilledOnDemandCapacity = fulfilledOnDemandCapacity;

  _i13.ListBuilder<_i5.FleetLaunchTemplateConfig>? _launchTemplateConfigs;
  _i13.ListBuilder<_i5.FleetLaunchTemplateConfig> get launchTemplateConfigs =>
      _$this._launchTemplateConfigs ??=
          new _i13.ListBuilder<_i5.FleetLaunchTemplateConfig>();
  set launchTemplateConfigs(
          _i13.ListBuilder<_i5.FleetLaunchTemplateConfig>?
              launchTemplateConfigs) =>
      _$this._launchTemplateConfigs = launchTemplateConfigs;

  _i6.TargetCapacitySpecificationBuilder? _targetCapacitySpecification;
  _i6.TargetCapacitySpecificationBuilder get targetCapacitySpecification =>
      _$this._targetCapacitySpecification ??=
          new _i6.TargetCapacitySpecificationBuilder();
  set targetCapacitySpecification(
          _i6.TargetCapacitySpecificationBuilder?
              targetCapacitySpecification) =>
      _$this._targetCapacitySpecification = targetCapacitySpecification;

  bool? _terminateInstancesWithExpiration;
  bool? get terminateInstancesWithExpiration =>
      _$this._terminateInstancesWithExpiration;
  set terminateInstancesWithExpiration(
          bool? terminateInstancesWithExpiration) =>
      _$this._terminateInstancesWithExpiration =
          terminateInstancesWithExpiration;

  _i7.FleetType? _type;
  _i7.FleetType? get type => _$this._type;
  set type(_i7.FleetType? type) => _$this._type = type;

  DateTime? _validFrom;
  DateTime? get validFrom => _$this._validFrom;
  set validFrom(DateTime? validFrom) => _$this._validFrom = validFrom;

  DateTime? _validUntil;
  DateTime? get validUntil => _$this._validUntil;
  set validUntil(DateTime? validUntil) => _$this._validUntil = validUntil;

  bool? _replaceUnhealthyInstances;
  bool? get replaceUnhealthyInstances => _$this._replaceUnhealthyInstances;
  set replaceUnhealthyInstances(bool? replaceUnhealthyInstances) =>
      _$this._replaceUnhealthyInstances = replaceUnhealthyInstances;

  _i8.SpotOptionsBuilder? _spotOptions;
  _i8.SpotOptionsBuilder get spotOptions =>
      _$this._spotOptions ??= new _i8.SpotOptionsBuilder();
  set spotOptions(_i8.SpotOptionsBuilder? spotOptions) =>
      _$this._spotOptions = spotOptions;

  _i9.OnDemandOptionsBuilder? _onDemandOptions;
  _i9.OnDemandOptionsBuilder get onDemandOptions =>
      _$this._onDemandOptions ??= new _i9.OnDemandOptionsBuilder();
  set onDemandOptions(_i9.OnDemandOptionsBuilder? onDemandOptions) =>
      _$this._onDemandOptions = onDemandOptions;

  _i13.ListBuilder<_i10.Tag>? _tags;
  _i13.ListBuilder<_i10.Tag> get tags =>
      _$this._tags ??= new _i13.ListBuilder<_i10.Tag>();
  set tags(_i13.ListBuilder<_i10.Tag>? tags) => _$this._tags = tags;

  _i13.ListBuilder<_i11.DescribeFleetError>? _errors;
  _i13.ListBuilder<_i11.DescribeFleetError> get errors =>
      _$this._errors ??= new _i13.ListBuilder<_i11.DescribeFleetError>();
  set errors(_i13.ListBuilder<_i11.DescribeFleetError>? errors) =>
      _$this._errors = errors;

  _i13.ListBuilder<_i12.DescribeFleetsInstances>? _instances;
  _i13.ListBuilder<_i12.DescribeFleetsInstances> get instances =>
      _$this._instances ??=
          new _i13.ListBuilder<_i12.DescribeFleetsInstances>();
  set instances(_i13.ListBuilder<_i12.DescribeFleetsInstances>? instances) =>
      _$this._instances = instances;

  String? _context;
  String? get context => _$this._context;
  set context(String? context) => _$this._context = context;

  FleetDataBuilder() {
    FleetData._init(this);
  }

  FleetDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _activityStatus = $v.activityStatus;
      _createTime = $v.createTime;
      _fleetId = $v.fleetId;
      _fleetState = $v.fleetState;
      _clientToken = $v.clientToken;
      _excessCapacityTerminationPolicy = $v.excessCapacityTerminationPolicy;
      _fulfilledCapacity = $v.fulfilledCapacity;
      _fulfilledOnDemandCapacity = $v.fulfilledOnDemandCapacity;
      _launchTemplateConfigs = $v.launchTemplateConfigs?.toBuilder();
      _targetCapacitySpecification =
          $v.targetCapacitySpecification?.toBuilder();
      _terminateInstancesWithExpiration = $v.terminateInstancesWithExpiration;
      _type = $v.type;
      _validFrom = $v.validFrom;
      _validUntil = $v.validUntil;
      _replaceUnhealthyInstances = $v.replaceUnhealthyInstances;
      _spotOptions = $v.spotOptions?.toBuilder();
      _onDemandOptions = $v.onDemandOptions?.toBuilder();
      _tags = $v.tags?.toBuilder();
      _errors = $v.errors?.toBuilder();
      _instances = $v.instances?.toBuilder();
      _context = $v.context;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FleetData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FleetData;
  }

  @override
  void update(void Function(FleetDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FleetData build() => _build();

  _$FleetData _build() {
    _$FleetData _$result;
    try {
      _$result = _$v ??
          new _$FleetData._(
              activityStatus: activityStatus,
              createTime: createTime,
              fleetId: fleetId,
              fleetState: fleetState,
              clientToken: clientToken,
              excessCapacityTerminationPolicy: excessCapacityTerminationPolicy,
              fulfilledCapacity: BuiltValueNullFieldError.checkNotNull(
                  fulfilledCapacity, r'FleetData', 'fulfilledCapacity'),
              fulfilledOnDemandCapacity: BuiltValueNullFieldError.checkNotNull(
                  fulfilledOnDemandCapacity,
                  r'FleetData',
                  'fulfilledOnDemandCapacity'),
              launchTemplateConfigs: _launchTemplateConfigs?.build(),
              targetCapacitySpecification:
                  _targetCapacitySpecification?.build(),
              terminateInstancesWithExpiration:
                  BuiltValueNullFieldError.checkNotNull(
                      terminateInstancesWithExpiration,
                      r'FleetData',
                      'terminateInstancesWithExpiration'),
              type: type,
              validFrom: validFrom,
              validUntil: validUntil,
              replaceUnhealthyInstances: BuiltValueNullFieldError.checkNotNull(
                  replaceUnhealthyInstances,
                  r'FleetData',
                  'replaceUnhealthyInstances'),
              spotOptions: _spotOptions?.build(),
              onDemandOptions: _onDemandOptions?.build(),
              tags: _tags?.build(),
              errors: _errors?.build(),
              instances: _instances?.build(),
              context: context);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'launchTemplateConfigs';
        _launchTemplateConfigs?.build();
        _$failedField = 'targetCapacitySpecification';
        _targetCapacitySpecification?.build();

        _$failedField = 'spotOptions';
        _spotOptions?.build();
        _$failedField = 'onDemandOptions';
        _onDemandOptions?.build();
        _$failedField = 'tags';
        _tags?.build();
        _$failedField = 'errors';
        _errors?.build();
        _$failedField = 'instances';
        _instances?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'FleetData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
