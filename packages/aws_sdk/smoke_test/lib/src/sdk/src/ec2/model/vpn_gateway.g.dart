// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vpn_gateway.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VpnGateway extends VpnGateway {
  @override
  final String? availabilityZone;
  @override
  final _i2.VpnState? state;
  @override
  final _i3.GatewayType? type;
  @override
  final _i7.BuiltList<_i4.VpcAttachment>? vpcAttachments;
  @override
  final String? vpnGatewayId;
  @override
  final _i5.Int64 amazonSideAsn;
  @override
  final _i7.BuiltList<_i6.Tag>? tags;

  factory _$VpnGateway([void Function(VpnGatewayBuilder)? updates]) =>
      (new VpnGatewayBuilder()..update(updates))._build();

  _$VpnGateway._(
      {this.availabilityZone,
      this.state,
      this.type,
      this.vpcAttachments,
      this.vpnGatewayId,
      required this.amazonSideAsn,
      this.tags})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        amazonSideAsn, r'VpnGateway', 'amazonSideAsn');
  }

  @override
  VpnGateway rebuild(void Function(VpnGatewayBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VpnGatewayBuilder toBuilder() => new VpnGatewayBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VpnGateway &&
        availabilityZone == other.availabilityZone &&
        state == other.state &&
        type == other.type &&
        vpcAttachments == other.vpcAttachments &&
        vpnGatewayId == other.vpnGatewayId &&
        amazonSideAsn == other.amazonSideAsn &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, availabilityZone.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, vpcAttachments.hashCode);
    _$hash = $jc(_$hash, vpnGatewayId.hashCode);
    _$hash = $jc(_$hash, amazonSideAsn.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class VpnGatewayBuilder implements Builder<VpnGateway, VpnGatewayBuilder> {
  _$VpnGateway? _$v;

  String? _availabilityZone;
  String? get availabilityZone => _$this._availabilityZone;
  set availabilityZone(String? availabilityZone) =>
      _$this._availabilityZone = availabilityZone;

  _i2.VpnState? _state;
  _i2.VpnState? get state => _$this._state;
  set state(_i2.VpnState? state) => _$this._state = state;

  _i3.GatewayType? _type;
  _i3.GatewayType? get type => _$this._type;
  set type(_i3.GatewayType? type) => _$this._type = type;

  _i7.ListBuilder<_i4.VpcAttachment>? _vpcAttachments;
  _i7.ListBuilder<_i4.VpcAttachment> get vpcAttachments =>
      _$this._vpcAttachments ??= new _i7.ListBuilder<_i4.VpcAttachment>();
  set vpcAttachments(_i7.ListBuilder<_i4.VpcAttachment>? vpcAttachments) =>
      _$this._vpcAttachments = vpcAttachments;

  String? _vpnGatewayId;
  String? get vpnGatewayId => _$this._vpnGatewayId;
  set vpnGatewayId(String? vpnGatewayId) => _$this._vpnGatewayId = vpnGatewayId;

  _i5.Int64? _amazonSideAsn;
  _i5.Int64? get amazonSideAsn => _$this._amazonSideAsn;
  set amazonSideAsn(_i5.Int64? amazonSideAsn) =>
      _$this._amazonSideAsn = amazonSideAsn;

  _i7.ListBuilder<_i6.Tag>? _tags;
  _i7.ListBuilder<_i6.Tag> get tags =>
      _$this._tags ??= new _i7.ListBuilder<_i6.Tag>();
  set tags(_i7.ListBuilder<_i6.Tag>? tags) => _$this._tags = tags;

  VpnGatewayBuilder() {
    VpnGateway._init(this);
  }

  VpnGatewayBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _availabilityZone = $v.availabilityZone;
      _state = $v.state;
      _type = $v.type;
      _vpcAttachments = $v.vpcAttachments?.toBuilder();
      _vpnGatewayId = $v.vpnGatewayId;
      _amazonSideAsn = $v.amazonSideAsn;
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VpnGateway other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VpnGateway;
  }

  @override
  void update(void Function(VpnGatewayBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VpnGateway build() => _build();

  _$VpnGateway _build() {
    _$VpnGateway _$result;
    try {
      _$result = _$v ??
          new _$VpnGateway._(
              availabilityZone: availabilityZone,
              state: state,
              type: type,
              vpcAttachments: _vpcAttachments?.build(),
              vpnGatewayId: vpnGatewayId,
              amazonSideAsn: BuiltValueNullFieldError.checkNotNull(
                  amazonSideAsn, r'VpnGateway', 'amazonSideAsn'),
              tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vpcAttachments';
        _vpcAttachments?.build();

        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'VpnGateway', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
