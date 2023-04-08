// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.modify_local_gateway_route_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyLocalGatewayRouteRequest extends ModifyLocalGatewayRouteRequest {
  @override
  final String destinationCidrBlock;
  @override
  final String localGatewayRouteTableId;
  @override
  final String? localGatewayVirtualInterfaceGroupId;
  @override
  final String? networkInterfaceId;
  @override
  final bool dryRun;

  factory _$ModifyLocalGatewayRouteRequest(
          [void Function(ModifyLocalGatewayRouteRequestBuilder)? updates]) =>
      (new ModifyLocalGatewayRouteRequestBuilder()..update(updates))._build();

  _$ModifyLocalGatewayRouteRequest._(
      {required this.destinationCidrBlock,
      required this.localGatewayRouteTableId,
      this.localGatewayVirtualInterfaceGroupId,
      this.networkInterfaceId,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(destinationCidrBlock,
        r'ModifyLocalGatewayRouteRequest', 'destinationCidrBlock');
    BuiltValueNullFieldError.checkNotNull(localGatewayRouteTableId,
        r'ModifyLocalGatewayRouteRequest', 'localGatewayRouteTableId');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'ModifyLocalGatewayRouteRequest', 'dryRun');
  }

  @override
  ModifyLocalGatewayRouteRequest rebuild(
          void Function(ModifyLocalGatewayRouteRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyLocalGatewayRouteRequestBuilder toBuilder() =>
      new ModifyLocalGatewayRouteRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyLocalGatewayRouteRequest &&
        destinationCidrBlock == other.destinationCidrBlock &&
        localGatewayRouteTableId == other.localGatewayRouteTableId &&
        localGatewayVirtualInterfaceGroupId ==
            other.localGatewayVirtualInterfaceGroupId &&
        networkInterfaceId == other.networkInterfaceId &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, destinationCidrBlock.hashCode);
    _$hash = $jc(_$hash, localGatewayRouteTableId.hashCode);
    _$hash = $jc(_$hash, localGatewayVirtualInterfaceGroupId.hashCode);
    _$hash = $jc(_$hash, networkInterfaceId.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyLocalGatewayRouteRequestBuilder
    implements
        Builder<ModifyLocalGatewayRouteRequest,
            ModifyLocalGatewayRouteRequestBuilder> {
  _$ModifyLocalGatewayRouteRequest? _$v;

  String? _destinationCidrBlock;
  String? get destinationCidrBlock => _$this._destinationCidrBlock;
  set destinationCidrBlock(String? destinationCidrBlock) =>
      _$this._destinationCidrBlock = destinationCidrBlock;

  String? _localGatewayRouteTableId;
  String? get localGatewayRouteTableId => _$this._localGatewayRouteTableId;
  set localGatewayRouteTableId(String? localGatewayRouteTableId) =>
      _$this._localGatewayRouteTableId = localGatewayRouteTableId;

  String? _localGatewayVirtualInterfaceGroupId;
  String? get localGatewayVirtualInterfaceGroupId =>
      _$this._localGatewayVirtualInterfaceGroupId;
  set localGatewayVirtualInterfaceGroupId(
          String? localGatewayVirtualInterfaceGroupId) =>
      _$this._localGatewayVirtualInterfaceGroupId =
          localGatewayVirtualInterfaceGroupId;

  String? _networkInterfaceId;
  String? get networkInterfaceId => _$this._networkInterfaceId;
  set networkInterfaceId(String? networkInterfaceId) =>
      _$this._networkInterfaceId = networkInterfaceId;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  ModifyLocalGatewayRouteRequestBuilder() {
    ModifyLocalGatewayRouteRequest._init(this);
  }

  ModifyLocalGatewayRouteRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _destinationCidrBlock = $v.destinationCidrBlock;
      _localGatewayRouteTableId = $v.localGatewayRouteTableId;
      _localGatewayVirtualInterfaceGroupId =
          $v.localGatewayVirtualInterfaceGroupId;
      _networkInterfaceId = $v.networkInterfaceId;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyLocalGatewayRouteRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyLocalGatewayRouteRequest;
  }

  @override
  void update(void Function(ModifyLocalGatewayRouteRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyLocalGatewayRouteRequest build() => _build();

  _$ModifyLocalGatewayRouteRequest _build() {
    final _$result = _$v ??
        new _$ModifyLocalGatewayRouteRequest._(
            destinationCidrBlock: BuiltValueNullFieldError.checkNotNull(
                destinationCidrBlock,
                r'ModifyLocalGatewayRouteRequest',
                'destinationCidrBlock'),
            localGatewayRouteTableId: BuiltValueNullFieldError.checkNotNull(
                localGatewayRouteTableId,
                r'ModifyLocalGatewayRouteRequest',
                'localGatewayRouteTableId'),
            localGatewayVirtualInterfaceGroupId:
                localGatewayVirtualInterfaceGroupId,
            networkInterfaceId: networkInterfaceId,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'ModifyLocalGatewayRouteRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
