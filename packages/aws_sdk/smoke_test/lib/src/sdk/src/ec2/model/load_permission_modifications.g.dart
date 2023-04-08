// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.load_permission_modifications;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LoadPermissionModifications extends LoadPermissionModifications {
  @override
  final _i3.BuiltList<_i2.LoadPermissionRequest>? add;
  @override
  final _i3.BuiltList<_i2.LoadPermissionRequest>? remove;

  factory _$LoadPermissionModifications(
          [void Function(LoadPermissionModificationsBuilder)? updates]) =>
      (new LoadPermissionModificationsBuilder()..update(updates))._build();

  _$LoadPermissionModifications._({this.add, this.remove}) : super._();

  @override
  LoadPermissionModifications rebuild(
          void Function(LoadPermissionModificationsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoadPermissionModificationsBuilder toBuilder() =>
      new LoadPermissionModificationsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoadPermissionModifications &&
        add == other.add &&
        remove == other.remove;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, add.hashCode);
    _$hash = $jc(_$hash, remove.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class LoadPermissionModificationsBuilder
    implements
        Builder<LoadPermissionModifications,
            LoadPermissionModificationsBuilder> {
  _$LoadPermissionModifications? _$v;

  _i3.ListBuilder<_i2.LoadPermissionRequest>? _add;
  _i3.ListBuilder<_i2.LoadPermissionRequest> get add =>
      _$this._add ??= new _i3.ListBuilder<_i2.LoadPermissionRequest>();
  set add(_i3.ListBuilder<_i2.LoadPermissionRequest>? add) => _$this._add = add;

  _i3.ListBuilder<_i2.LoadPermissionRequest>? _remove;
  _i3.ListBuilder<_i2.LoadPermissionRequest> get remove =>
      _$this._remove ??= new _i3.ListBuilder<_i2.LoadPermissionRequest>();
  set remove(_i3.ListBuilder<_i2.LoadPermissionRequest>? remove) =>
      _$this._remove = remove;

  LoadPermissionModificationsBuilder() {
    LoadPermissionModifications._init(this);
  }

  LoadPermissionModificationsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _add = $v.add?.toBuilder();
      _remove = $v.remove?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoadPermissionModifications other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LoadPermissionModifications;
  }

  @override
  void update(void Function(LoadPermissionModificationsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LoadPermissionModifications build() => _build();

  _$LoadPermissionModifications _build() {
    _$LoadPermissionModifications _$result;
    try {
      _$result = _$v ??
          new _$LoadPermissionModifications._(
              add: _add?.build(), remove: _remove?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'add';
        _add?.build();
        _$failedField = 'remove';
        _remove?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'LoadPermissionModifications', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
