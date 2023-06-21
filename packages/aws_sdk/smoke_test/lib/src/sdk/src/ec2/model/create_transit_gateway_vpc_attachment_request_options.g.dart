// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_transit_gateway_vpc_attachment_request_options.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateTransitGatewayVpcAttachmentRequestOptions
    extends CreateTransitGatewayVpcAttachmentRequestOptions {
  @override
  final _i2.DnsSupportValue? dnsSupport;
  @override
  final _i3.Ipv6SupportValue? ipv6Support;
  @override
  final _i4.ApplianceModeSupportValue? applianceModeSupport;

  factory _$CreateTransitGatewayVpcAttachmentRequestOptions(
          [void Function(
                  CreateTransitGatewayVpcAttachmentRequestOptionsBuilder)?
              updates]) =>
      (new CreateTransitGatewayVpcAttachmentRequestOptionsBuilder()
            ..update(updates))
          ._build();

  _$CreateTransitGatewayVpcAttachmentRequestOptions._(
      {this.dnsSupport, this.ipv6Support, this.applianceModeSupport})
      : super._();

  @override
  CreateTransitGatewayVpcAttachmentRequestOptions rebuild(
          void Function(CreateTransitGatewayVpcAttachmentRequestOptionsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateTransitGatewayVpcAttachmentRequestOptionsBuilder toBuilder() =>
      new CreateTransitGatewayVpcAttachmentRequestOptionsBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateTransitGatewayVpcAttachmentRequestOptions &&
        dnsSupport == other.dnsSupport &&
        ipv6Support == other.ipv6Support &&
        applianceModeSupport == other.applianceModeSupport;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dnsSupport.hashCode);
    _$hash = $jc(_$hash, ipv6Support.hashCode);
    _$hash = $jc(_$hash, applianceModeSupport.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateTransitGatewayVpcAttachmentRequestOptionsBuilder
    implements
        Builder<CreateTransitGatewayVpcAttachmentRequestOptions,
            CreateTransitGatewayVpcAttachmentRequestOptionsBuilder> {
  _$CreateTransitGatewayVpcAttachmentRequestOptions? _$v;

  _i2.DnsSupportValue? _dnsSupport;
  _i2.DnsSupportValue? get dnsSupport => _$this._dnsSupport;
  set dnsSupport(_i2.DnsSupportValue? dnsSupport) =>
      _$this._dnsSupport = dnsSupport;

  _i3.Ipv6SupportValue? _ipv6Support;
  _i3.Ipv6SupportValue? get ipv6Support => _$this._ipv6Support;
  set ipv6Support(_i3.Ipv6SupportValue? ipv6Support) =>
      _$this._ipv6Support = ipv6Support;

  _i4.ApplianceModeSupportValue? _applianceModeSupport;
  _i4.ApplianceModeSupportValue? get applianceModeSupport =>
      _$this._applianceModeSupport;
  set applianceModeSupport(
          _i4.ApplianceModeSupportValue? applianceModeSupport) =>
      _$this._applianceModeSupport = applianceModeSupport;

  CreateTransitGatewayVpcAttachmentRequestOptionsBuilder() {
    CreateTransitGatewayVpcAttachmentRequestOptions._init(this);
  }

  CreateTransitGatewayVpcAttachmentRequestOptionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dnsSupport = $v.dnsSupport;
      _ipv6Support = $v.ipv6Support;
      _applianceModeSupport = $v.applianceModeSupport;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateTransitGatewayVpcAttachmentRequestOptions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateTransitGatewayVpcAttachmentRequestOptions;
  }

  @override
  void update(
      void Function(CreateTransitGatewayVpcAttachmentRequestOptionsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateTransitGatewayVpcAttachmentRequestOptions build() => _build();

  _$CreateTransitGatewayVpcAttachmentRequestOptions _build() {
    final _$result = _$v ??
        new _$CreateTransitGatewayVpcAttachmentRequestOptions._(
            dnsSupport: dnsSupport,
            ipv6Support: ipv6Support,
            applianceModeSupport: applianceModeSupport);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
