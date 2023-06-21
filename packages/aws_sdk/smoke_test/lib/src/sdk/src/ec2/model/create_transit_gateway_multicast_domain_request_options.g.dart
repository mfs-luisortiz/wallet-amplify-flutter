// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_transit_gateway_multicast_domain_request_options.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateTransitGatewayMulticastDomainRequestOptions
    extends CreateTransitGatewayMulticastDomainRequestOptions {
  @override
  final _i2.Igmpv2SupportValue? igmpv2Support;
  @override
  final _i3.StaticSourcesSupportValue? staticSourcesSupport;
  @override
  final _i4.AutoAcceptSharedAssociationsValue? autoAcceptSharedAssociations;

  factory _$CreateTransitGatewayMulticastDomainRequestOptions(
          [void Function(
                  CreateTransitGatewayMulticastDomainRequestOptionsBuilder)?
              updates]) =>
      (new CreateTransitGatewayMulticastDomainRequestOptionsBuilder()
            ..update(updates))
          ._build();

  _$CreateTransitGatewayMulticastDomainRequestOptions._(
      {this.igmpv2Support,
      this.staticSourcesSupport,
      this.autoAcceptSharedAssociations})
      : super._();

  @override
  CreateTransitGatewayMulticastDomainRequestOptions rebuild(
          void Function(
                  CreateTransitGatewayMulticastDomainRequestOptionsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateTransitGatewayMulticastDomainRequestOptionsBuilder toBuilder() =>
      new CreateTransitGatewayMulticastDomainRequestOptionsBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateTransitGatewayMulticastDomainRequestOptions &&
        igmpv2Support == other.igmpv2Support &&
        staticSourcesSupport == other.staticSourcesSupport &&
        autoAcceptSharedAssociations == other.autoAcceptSharedAssociations;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, igmpv2Support.hashCode);
    _$hash = $jc(_$hash, staticSourcesSupport.hashCode);
    _$hash = $jc(_$hash, autoAcceptSharedAssociations.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateTransitGatewayMulticastDomainRequestOptionsBuilder
    implements
        Builder<CreateTransitGatewayMulticastDomainRequestOptions,
            CreateTransitGatewayMulticastDomainRequestOptionsBuilder> {
  _$CreateTransitGatewayMulticastDomainRequestOptions? _$v;

  _i2.Igmpv2SupportValue? _igmpv2Support;
  _i2.Igmpv2SupportValue? get igmpv2Support => _$this._igmpv2Support;
  set igmpv2Support(_i2.Igmpv2SupportValue? igmpv2Support) =>
      _$this._igmpv2Support = igmpv2Support;

  _i3.StaticSourcesSupportValue? _staticSourcesSupport;
  _i3.StaticSourcesSupportValue? get staticSourcesSupport =>
      _$this._staticSourcesSupport;
  set staticSourcesSupport(
          _i3.StaticSourcesSupportValue? staticSourcesSupport) =>
      _$this._staticSourcesSupport = staticSourcesSupport;

  _i4.AutoAcceptSharedAssociationsValue? _autoAcceptSharedAssociations;
  _i4.AutoAcceptSharedAssociationsValue? get autoAcceptSharedAssociations =>
      _$this._autoAcceptSharedAssociations;
  set autoAcceptSharedAssociations(
          _i4.AutoAcceptSharedAssociationsValue?
              autoAcceptSharedAssociations) =>
      _$this._autoAcceptSharedAssociations = autoAcceptSharedAssociations;

  CreateTransitGatewayMulticastDomainRequestOptionsBuilder() {
    CreateTransitGatewayMulticastDomainRequestOptions._init(this);
  }

  CreateTransitGatewayMulticastDomainRequestOptionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _igmpv2Support = $v.igmpv2Support;
      _staticSourcesSupport = $v.staticSourcesSupport;
      _autoAcceptSharedAssociations = $v.autoAcceptSharedAssociations;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateTransitGatewayMulticastDomainRequestOptions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateTransitGatewayMulticastDomainRequestOptions;
  }

  @override
  void update(
      void Function(CreateTransitGatewayMulticastDomainRequestOptionsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateTransitGatewayMulticastDomainRequestOptions build() => _build();

  _$CreateTransitGatewayMulticastDomainRequestOptions _build() {
    final _$result = _$v ??
        new _$CreateTransitGatewayMulticastDomainRequestOptions._(
            igmpv2Support: igmpv2Support,
            staticSourcesSupport: staticSourcesSupport,
            autoAcceptSharedAssociations: autoAcceptSharedAssociations);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
