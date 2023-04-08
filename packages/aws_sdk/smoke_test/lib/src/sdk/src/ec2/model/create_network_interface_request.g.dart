// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.create_network_interface_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateNetworkInterfaceRequest extends CreateNetworkInterfaceRequest {
  @override
  final String? description;
  @override
  final bool dryRun;
  @override
  final _i9.BuiltList<String>? groups;
  @override
  final int ipv6AddressCount;
  @override
  final _i9.BuiltList<_i3.InstanceIpv6Address>? ipv6Addresses;
  @override
  final String? privateIpAddress;
  @override
  final _i9.BuiltList<_i4.PrivateIpAddressSpecification>? privateIpAddresses;
  @override
  final int secondaryPrivateIpAddressCount;
  @override
  final _i9.BuiltList<_i5.Ipv4PrefixSpecificationRequest>? ipv4Prefixes;
  @override
  final int ipv4PrefixCount;
  @override
  final _i9.BuiltList<_i6.Ipv6PrefixSpecificationRequest>? ipv6Prefixes;
  @override
  final int ipv6PrefixCount;
  @override
  final _i7.NetworkInterfaceCreationType? interfaceType;
  @override
  final String subnetId;
  @override
  final _i9.BuiltList<_i8.TagSpecification>? tagSpecifications;
  @override
  final String? clientToken;

  factory _$CreateNetworkInterfaceRequest(
          [void Function(CreateNetworkInterfaceRequestBuilder)? updates]) =>
      (new CreateNetworkInterfaceRequestBuilder()..update(updates))._build();

  _$CreateNetworkInterfaceRequest._(
      {this.description,
      required this.dryRun,
      this.groups,
      required this.ipv6AddressCount,
      this.ipv6Addresses,
      this.privateIpAddress,
      this.privateIpAddresses,
      required this.secondaryPrivateIpAddressCount,
      this.ipv4Prefixes,
      required this.ipv4PrefixCount,
      this.ipv6Prefixes,
      required this.ipv6PrefixCount,
      this.interfaceType,
      required this.subnetId,
      this.tagSpecifications,
      this.clientToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'CreateNetworkInterfaceRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        ipv6AddressCount, r'CreateNetworkInterfaceRequest', 'ipv6AddressCount');
    BuiltValueNullFieldError.checkNotNull(secondaryPrivateIpAddressCount,
        r'CreateNetworkInterfaceRequest', 'secondaryPrivateIpAddressCount');
    BuiltValueNullFieldError.checkNotNull(
        ipv4PrefixCount, r'CreateNetworkInterfaceRequest', 'ipv4PrefixCount');
    BuiltValueNullFieldError.checkNotNull(
        ipv6PrefixCount, r'CreateNetworkInterfaceRequest', 'ipv6PrefixCount');
    BuiltValueNullFieldError.checkNotNull(
        subnetId, r'CreateNetworkInterfaceRequest', 'subnetId');
  }

  @override
  CreateNetworkInterfaceRequest rebuild(
          void Function(CreateNetworkInterfaceRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateNetworkInterfaceRequestBuilder toBuilder() =>
      new CreateNetworkInterfaceRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateNetworkInterfaceRequest &&
        description == other.description &&
        dryRun == other.dryRun &&
        groups == other.groups &&
        ipv6AddressCount == other.ipv6AddressCount &&
        ipv6Addresses == other.ipv6Addresses &&
        privateIpAddress == other.privateIpAddress &&
        privateIpAddresses == other.privateIpAddresses &&
        secondaryPrivateIpAddressCount ==
            other.secondaryPrivateIpAddressCount &&
        ipv4Prefixes == other.ipv4Prefixes &&
        ipv4PrefixCount == other.ipv4PrefixCount &&
        ipv6Prefixes == other.ipv6Prefixes &&
        ipv6PrefixCount == other.ipv6PrefixCount &&
        interfaceType == other.interfaceType &&
        subnetId == other.subnetId &&
        tagSpecifications == other.tagSpecifications &&
        clientToken == other.clientToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, groups.hashCode);
    _$hash = $jc(_$hash, ipv6AddressCount.hashCode);
    _$hash = $jc(_$hash, ipv6Addresses.hashCode);
    _$hash = $jc(_$hash, privateIpAddress.hashCode);
    _$hash = $jc(_$hash, privateIpAddresses.hashCode);
    _$hash = $jc(_$hash, secondaryPrivateIpAddressCount.hashCode);
    _$hash = $jc(_$hash, ipv4Prefixes.hashCode);
    _$hash = $jc(_$hash, ipv4PrefixCount.hashCode);
    _$hash = $jc(_$hash, ipv6Prefixes.hashCode);
    _$hash = $jc(_$hash, ipv6PrefixCount.hashCode);
    _$hash = $jc(_$hash, interfaceType.hashCode);
    _$hash = $jc(_$hash, subnetId.hashCode);
    _$hash = $jc(_$hash, tagSpecifications.hashCode);
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateNetworkInterfaceRequestBuilder
    implements
        Builder<CreateNetworkInterfaceRequest,
            CreateNetworkInterfaceRequestBuilder> {
  _$CreateNetworkInterfaceRequest? _$v;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  _i9.ListBuilder<String>? _groups;
  _i9.ListBuilder<String> get groups =>
      _$this._groups ??= new _i9.ListBuilder<String>();
  set groups(_i9.ListBuilder<String>? groups) => _$this._groups = groups;

  int? _ipv6AddressCount;
  int? get ipv6AddressCount => _$this._ipv6AddressCount;
  set ipv6AddressCount(int? ipv6AddressCount) =>
      _$this._ipv6AddressCount = ipv6AddressCount;

  _i9.ListBuilder<_i3.InstanceIpv6Address>? _ipv6Addresses;
  _i9.ListBuilder<_i3.InstanceIpv6Address> get ipv6Addresses =>
      _$this._ipv6Addresses ??= new _i9.ListBuilder<_i3.InstanceIpv6Address>();
  set ipv6Addresses(_i9.ListBuilder<_i3.InstanceIpv6Address>? ipv6Addresses) =>
      _$this._ipv6Addresses = ipv6Addresses;

  String? _privateIpAddress;
  String? get privateIpAddress => _$this._privateIpAddress;
  set privateIpAddress(String? privateIpAddress) =>
      _$this._privateIpAddress = privateIpAddress;

  _i9.ListBuilder<_i4.PrivateIpAddressSpecification>? _privateIpAddresses;
  _i9.ListBuilder<_i4.PrivateIpAddressSpecification> get privateIpAddresses =>
      _$this._privateIpAddresses ??=
          new _i9.ListBuilder<_i4.PrivateIpAddressSpecification>();
  set privateIpAddresses(
          _i9.ListBuilder<_i4.PrivateIpAddressSpecification>?
              privateIpAddresses) =>
      _$this._privateIpAddresses = privateIpAddresses;

  int? _secondaryPrivateIpAddressCount;
  int? get secondaryPrivateIpAddressCount =>
      _$this._secondaryPrivateIpAddressCount;
  set secondaryPrivateIpAddressCount(int? secondaryPrivateIpAddressCount) =>
      _$this._secondaryPrivateIpAddressCount = secondaryPrivateIpAddressCount;

  _i9.ListBuilder<_i5.Ipv4PrefixSpecificationRequest>? _ipv4Prefixes;
  _i9.ListBuilder<_i5.Ipv4PrefixSpecificationRequest> get ipv4Prefixes =>
      _$this._ipv4Prefixes ??=
          new _i9.ListBuilder<_i5.Ipv4PrefixSpecificationRequest>();
  set ipv4Prefixes(
          _i9.ListBuilder<_i5.Ipv4PrefixSpecificationRequest>? ipv4Prefixes) =>
      _$this._ipv4Prefixes = ipv4Prefixes;

  int? _ipv4PrefixCount;
  int? get ipv4PrefixCount => _$this._ipv4PrefixCount;
  set ipv4PrefixCount(int? ipv4PrefixCount) =>
      _$this._ipv4PrefixCount = ipv4PrefixCount;

  _i9.ListBuilder<_i6.Ipv6PrefixSpecificationRequest>? _ipv6Prefixes;
  _i9.ListBuilder<_i6.Ipv6PrefixSpecificationRequest> get ipv6Prefixes =>
      _$this._ipv6Prefixes ??=
          new _i9.ListBuilder<_i6.Ipv6PrefixSpecificationRequest>();
  set ipv6Prefixes(
          _i9.ListBuilder<_i6.Ipv6PrefixSpecificationRequest>? ipv6Prefixes) =>
      _$this._ipv6Prefixes = ipv6Prefixes;

  int? _ipv6PrefixCount;
  int? get ipv6PrefixCount => _$this._ipv6PrefixCount;
  set ipv6PrefixCount(int? ipv6PrefixCount) =>
      _$this._ipv6PrefixCount = ipv6PrefixCount;

  _i7.NetworkInterfaceCreationType? _interfaceType;
  _i7.NetworkInterfaceCreationType? get interfaceType => _$this._interfaceType;
  set interfaceType(_i7.NetworkInterfaceCreationType? interfaceType) =>
      _$this._interfaceType = interfaceType;

  String? _subnetId;
  String? get subnetId => _$this._subnetId;
  set subnetId(String? subnetId) => _$this._subnetId = subnetId;

  _i9.ListBuilder<_i8.TagSpecification>? _tagSpecifications;
  _i9.ListBuilder<_i8.TagSpecification> get tagSpecifications =>
      _$this._tagSpecifications ??= new _i9.ListBuilder<_i8.TagSpecification>();
  set tagSpecifications(
          _i9.ListBuilder<_i8.TagSpecification>? tagSpecifications) =>
      _$this._tagSpecifications = tagSpecifications;

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

  CreateNetworkInterfaceRequestBuilder() {
    CreateNetworkInterfaceRequest._init(this);
  }

  CreateNetworkInterfaceRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _description = $v.description;
      _dryRun = $v.dryRun;
      _groups = $v.groups?.toBuilder();
      _ipv6AddressCount = $v.ipv6AddressCount;
      _ipv6Addresses = $v.ipv6Addresses?.toBuilder();
      _privateIpAddress = $v.privateIpAddress;
      _privateIpAddresses = $v.privateIpAddresses?.toBuilder();
      _secondaryPrivateIpAddressCount = $v.secondaryPrivateIpAddressCount;
      _ipv4Prefixes = $v.ipv4Prefixes?.toBuilder();
      _ipv4PrefixCount = $v.ipv4PrefixCount;
      _ipv6Prefixes = $v.ipv6Prefixes?.toBuilder();
      _ipv6PrefixCount = $v.ipv6PrefixCount;
      _interfaceType = $v.interfaceType;
      _subnetId = $v.subnetId;
      _tagSpecifications = $v.tagSpecifications?.toBuilder();
      _clientToken = $v.clientToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateNetworkInterfaceRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateNetworkInterfaceRequest;
  }

  @override
  void update(void Function(CreateNetworkInterfaceRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateNetworkInterfaceRequest build() => _build();

  _$CreateNetworkInterfaceRequest _build() {
    _$CreateNetworkInterfaceRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateNetworkInterfaceRequest._(
              description: description,
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'CreateNetworkInterfaceRequest', 'dryRun'),
              groups: _groups?.build(),
              ipv6AddressCount: BuiltValueNullFieldError.checkNotNull(
                  ipv6AddressCount,
                  r'CreateNetworkInterfaceRequest',
                  'ipv6AddressCount'),
              ipv6Addresses: _ipv6Addresses?.build(),
              privateIpAddress: privateIpAddress,
              privateIpAddresses: _privateIpAddresses?.build(),
              secondaryPrivateIpAddressCount: BuiltValueNullFieldError.checkNotNull(
                  secondaryPrivateIpAddressCount,
                  r'CreateNetworkInterfaceRequest',
                  'secondaryPrivateIpAddressCount'),
              ipv4Prefixes: _ipv4Prefixes?.build(),
              ipv4PrefixCount: BuiltValueNullFieldError.checkNotNull(
                  ipv4PrefixCount, r'CreateNetworkInterfaceRequest', 'ipv4PrefixCount'),
              ipv6Prefixes: _ipv6Prefixes?.build(),
              ipv6PrefixCount: BuiltValueNullFieldError.checkNotNull(
                  ipv6PrefixCount, r'CreateNetworkInterfaceRequest', 'ipv6PrefixCount'),
              interfaceType: interfaceType,
              subnetId: BuiltValueNullFieldError.checkNotNull(
                  subnetId, r'CreateNetworkInterfaceRequest', 'subnetId'),
              tagSpecifications: _tagSpecifications?.build(),
              clientToken: clientToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'groups';
        _groups?.build();

        _$failedField = 'ipv6Addresses';
        _ipv6Addresses?.build();

        _$failedField = 'privateIpAddresses';
        _privateIpAddresses?.build();

        _$failedField = 'ipv4Prefixes';
        _ipv4Prefixes?.build();

        _$failedField = 'ipv6Prefixes';
        _ipv6Prefixes?.build();

        _$failedField = 'tagSpecifications';
        _tagSpecifications?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateNetworkInterfaceRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
