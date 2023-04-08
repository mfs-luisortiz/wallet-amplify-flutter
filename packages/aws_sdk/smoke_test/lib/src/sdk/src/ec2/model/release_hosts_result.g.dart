// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.release_hosts_result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReleaseHostsResult extends ReleaseHostsResult {
  @override
  final _i3.BuiltList<String>? successful;
  @override
  final _i3.BuiltList<_i2.UnsuccessfulItem>? unsuccessful;

  factory _$ReleaseHostsResult(
          [void Function(ReleaseHostsResultBuilder)? updates]) =>
      (new ReleaseHostsResultBuilder()..update(updates))._build();

  _$ReleaseHostsResult._({this.successful, this.unsuccessful}) : super._();

  @override
  ReleaseHostsResult rebuild(
          void Function(ReleaseHostsResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReleaseHostsResultBuilder toBuilder() =>
      new ReleaseHostsResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReleaseHostsResult &&
        successful == other.successful &&
        unsuccessful == other.unsuccessful;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, successful.hashCode);
    _$hash = $jc(_$hash, unsuccessful.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ReleaseHostsResultBuilder
    implements Builder<ReleaseHostsResult, ReleaseHostsResultBuilder> {
  _$ReleaseHostsResult? _$v;

  _i3.ListBuilder<String>? _successful;
  _i3.ListBuilder<String> get successful =>
      _$this._successful ??= new _i3.ListBuilder<String>();
  set successful(_i3.ListBuilder<String>? successful) =>
      _$this._successful = successful;

  _i3.ListBuilder<_i2.UnsuccessfulItem>? _unsuccessful;
  _i3.ListBuilder<_i2.UnsuccessfulItem> get unsuccessful =>
      _$this._unsuccessful ??= new _i3.ListBuilder<_i2.UnsuccessfulItem>();
  set unsuccessful(_i3.ListBuilder<_i2.UnsuccessfulItem>? unsuccessful) =>
      _$this._unsuccessful = unsuccessful;

  ReleaseHostsResultBuilder() {
    ReleaseHostsResult._init(this);
  }

  ReleaseHostsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _successful = $v.successful?.toBuilder();
      _unsuccessful = $v.unsuccessful?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReleaseHostsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReleaseHostsResult;
  }

  @override
  void update(void Function(ReleaseHostsResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReleaseHostsResult build() => _build();

  _$ReleaseHostsResult _build() {
    _$ReleaseHostsResult _$result;
    try {
      _$result = _$v ??
          new _$ReleaseHostsResult._(
              successful: _successful?.build(),
              unsuccessful: _unsuccessful?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'successful';
        _successful?.build();
        _$failedField = 'unsuccessful';
        _unsuccessful?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ReleaseHostsResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
