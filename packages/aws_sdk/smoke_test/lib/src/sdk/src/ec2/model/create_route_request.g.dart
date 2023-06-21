// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_route_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateRouteRequest extends CreateRouteRequest {
  @override
  final String? destinationCidrBlock;
  @override
  final String? destinationIpv6CidrBlock;
  @override
  final String? destinationPrefixListId;
  @override
  final bool dryRun;
  @override
  final String? vpcEndpointId;
  @override
  final String? egressOnlyInternetGatewayId;
  @override
  final String? gatewayId;
  @override
  final String? instanceId;
  @override
  final String? natGatewayId;
  @override
  final String? transitGatewayId;
  @override
  final String? localGatewayId;
  @override
  final String? carrierGatewayId;
  @override
  final String? networkInterfaceId;
  @override
  final String routeTableId;
  @override
  final String? vpcPeeringConnectionId;
  @override
  final String? coreNetworkArn;

  factory _$CreateRouteRequest(
          [void Function(CreateRouteRequestBuilder)? updates]) =>
      (new CreateRouteRequestBuilder()..update(updates))._build();

  _$CreateRouteRequest._(
      {this.destinationCidrBlock,
      this.destinationIpv6CidrBlock,
      this.destinationPrefixListId,
      required this.dryRun,
      this.vpcEndpointId,
      this.egressOnlyInternetGatewayId,
      this.gatewayId,
      this.instanceId,
      this.natGatewayId,
      this.transitGatewayId,
      this.localGatewayId,
      this.carrierGatewayId,
      this.networkInterfaceId,
      required this.routeTableId,
      this.vpcPeeringConnectionId,
      this.coreNetworkArn})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'CreateRouteRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        routeTableId, r'CreateRouteRequest', 'routeTableId');
  }

  @override
  CreateRouteRequest rebuild(
          void Function(CreateRouteRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateRouteRequestBuilder toBuilder() =>
      new CreateRouteRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateRouteRequest &&
        destinationCidrBlock == other.destinationCidrBlock &&
        destinationIpv6CidrBlock == other.destinationIpv6CidrBlock &&
        destinationPrefixListId == other.destinationPrefixListId &&
        dryRun == other.dryRun &&
        vpcEndpointId == other.vpcEndpointId &&
        egressOnlyInternetGatewayId == other.egressOnlyInternetGatewayId &&
        gatewayId == other.gatewayId &&
        instanceId == other.instanceId &&
        natGatewayId == other.natGatewayId &&
        transitGatewayId == other.transitGatewayId &&
        localGatewayId == other.localGatewayId &&
        carrierGatewayId == other.carrierGatewayId &&
        networkInterfaceId == other.networkInterfaceId &&
        routeTableId == other.routeTableId &&
        vpcPeeringConnectionId == other.vpcPeeringConnectionId &&
        coreNetworkArn == other.coreNetworkArn;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, destinationCidrBlock.hashCode);
    _$hash = $jc(_$hash, destinationIpv6CidrBlock.hashCode);
    _$hash = $jc(_$hash, destinationPrefixListId.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, vpcEndpointId.hashCode);
    _$hash = $jc(_$hash, egressOnlyInternetGatewayId.hashCode);
    _$hash = $jc(_$hash, gatewayId.hashCode);
    _$hash = $jc(_$hash, instanceId.hashCode);
    _$hash = $jc(_$hash, natGatewayId.hashCode);
    _$hash = $jc(_$hash, transitGatewayId.hashCode);
    _$hash = $jc(_$hash, localGatewayId.hashCode);
    _$hash = $jc(_$hash, carrierGatewayId.hashCode);
    _$hash = $jc(_$hash, networkInterfaceId.hashCode);
    _$hash = $jc(_$hash, routeTableId.hashCode);
    _$hash = $jc(_$hash, vpcPeeringConnectionId.hashCode);
    _$hash = $jc(_$hash, coreNetworkArn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateRouteRequestBuilder
    implements Builder<CreateRouteRequest, CreateRouteRequestBuilder> {
  _$CreateRouteRequest? _$v;

  String? _destinationCidrBlock;
  String? get destinationCidrBlock => _$this._destinationCidrBlock;
  set destinationCidrBlock(String? destinationCidrBlock) =>
      _$this._destinationCidrBlock = destinationCidrBlock;

  String? _destinationIpv6CidrBlock;
  String? get destinationIpv6CidrBlock => _$this._destinationIpv6CidrBlock;
  set destinationIpv6CidrBlock(String? destinationIpv6CidrBlock) =>
      _$this._destinationIpv6CidrBlock = destinationIpv6CidrBlock;

  String? _destinationPrefixListId;
  String? get destinationPrefixListId => _$this._destinationPrefixListId;
  set destinationPrefixListId(String? destinationPrefixListId) =>
      _$this._destinationPrefixListId = destinationPrefixListId;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _vpcEndpointId;
  String? get vpcEndpointId => _$this._vpcEndpointId;
  set vpcEndpointId(String? vpcEndpointId) =>
      _$this._vpcEndpointId = vpcEndpointId;

  String? _egressOnlyInternetGatewayId;
  String? get egressOnlyInternetGatewayId =>
      _$this._egressOnlyInternetGatewayId;
  set egressOnlyInternetGatewayId(String? egressOnlyInternetGatewayId) =>
      _$this._egressOnlyInternetGatewayId = egressOnlyInternetGatewayId;

  String? _gatewayId;
  String? get gatewayId => _$this._gatewayId;
  set gatewayId(String? gatewayId) => _$this._gatewayId = gatewayId;

  String? _instanceId;
  String? get instanceId => _$this._instanceId;
  set instanceId(String? instanceId) => _$this._instanceId = instanceId;

  String? _natGatewayId;
  String? get natGatewayId => _$this._natGatewayId;
  set natGatewayId(String? natGatewayId) => _$this._natGatewayId = natGatewayId;

  String? _transitGatewayId;
  String? get transitGatewayId => _$this._transitGatewayId;
  set transitGatewayId(String? transitGatewayId) =>
      _$this._transitGatewayId = transitGatewayId;

  String? _localGatewayId;
  String? get localGatewayId => _$this._localGatewayId;
  set localGatewayId(String? localGatewayId) =>
      _$this._localGatewayId = localGatewayId;

  String? _carrierGatewayId;
  String? get carrierGatewayId => _$this._carrierGatewayId;
  set carrierGatewayId(String? carrierGatewayId) =>
      _$this._carrierGatewayId = carrierGatewayId;

  String? _networkInterfaceId;
  String? get networkInterfaceId => _$this._networkInterfaceId;
  set networkInterfaceId(String? networkInterfaceId) =>
      _$this._networkInterfaceId = networkInterfaceId;

  String? _routeTableId;
  String? get routeTableId => _$this._routeTableId;
  set routeTableId(String? routeTableId) => _$this._routeTableId = routeTableId;

  String? _vpcPeeringConnectionId;
  String? get vpcPeeringConnectionId => _$this._vpcPeeringConnectionId;
  set vpcPeeringConnectionId(String? vpcPeeringConnectionId) =>
      _$this._vpcPeeringConnectionId = vpcPeeringConnectionId;

  String? _coreNetworkArn;
  String? get coreNetworkArn => _$this._coreNetworkArn;
  set coreNetworkArn(String? coreNetworkArn) =>
      _$this._coreNetworkArn = coreNetworkArn;

  CreateRouteRequestBuilder() {
    CreateRouteRequest._init(this);
  }

  CreateRouteRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _destinationCidrBlock = $v.destinationCidrBlock;
      _destinationIpv6CidrBlock = $v.destinationIpv6CidrBlock;
      _destinationPrefixListId = $v.destinationPrefixListId;
      _dryRun = $v.dryRun;
      _vpcEndpointId = $v.vpcEndpointId;
      _egressOnlyInternetGatewayId = $v.egressOnlyInternetGatewayId;
      _gatewayId = $v.gatewayId;
      _instanceId = $v.instanceId;
      _natGatewayId = $v.natGatewayId;
      _transitGatewayId = $v.transitGatewayId;
      _localGatewayId = $v.localGatewayId;
      _carrierGatewayId = $v.carrierGatewayId;
      _networkInterfaceId = $v.networkInterfaceId;
      _routeTableId = $v.routeTableId;
      _vpcPeeringConnectionId = $v.vpcPeeringConnectionId;
      _coreNetworkArn = $v.coreNetworkArn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateRouteRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateRouteRequest;
  }

  @override
  void update(void Function(CreateRouteRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateRouteRequest build() => _build();

  _$CreateRouteRequest _build() {
    final _$result = _$v ??
        new _$CreateRouteRequest._(
            destinationCidrBlock: destinationCidrBlock,
            destinationIpv6CidrBlock: destinationIpv6CidrBlock,
            destinationPrefixListId: destinationPrefixListId,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'CreateRouteRequest', 'dryRun'),
            vpcEndpointId: vpcEndpointId,
            egressOnlyInternetGatewayId: egressOnlyInternetGatewayId,
            gatewayId: gatewayId,
            instanceId: instanceId,
            natGatewayId: natGatewayId,
            transitGatewayId: transitGatewayId,
            localGatewayId: localGatewayId,
            carrierGatewayId: carrierGatewayId,
            networkInterfaceId: networkInterfaceId,
            routeTableId: BuiltValueNullFieldError.checkNotNull(
                routeTableId, r'CreateRouteRequest', 'routeTableId'),
            vpcPeeringConnectionId: vpcPeeringConnectionId,
            coreNetworkArn: coreNetworkArn);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
