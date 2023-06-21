// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enable_fast_snapshot_restore_state_error.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EnableFastSnapshotRestoreStateError
    extends EnableFastSnapshotRestoreStateError {
  @override
  final String? code;
  @override
  final String? message;

  factory _$EnableFastSnapshotRestoreStateError(
          [void Function(EnableFastSnapshotRestoreStateErrorBuilder)?
              updates]) =>
      (new EnableFastSnapshotRestoreStateErrorBuilder()..update(updates))
          ._build();

  _$EnableFastSnapshotRestoreStateError._({this.code, this.message})
      : super._();

  @override
  EnableFastSnapshotRestoreStateError rebuild(
          void Function(EnableFastSnapshotRestoreStateErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EnableFastSnapshotRestoreStateErrorBuilder toBuilder() =>
      new EnableFastSnapshotRestoreStateErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EnableFastSnapshotRestoreStateError &&
        code == other.code &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class EnableFastSnapshotRestoreStateErrorBuilder
    implements
        Builder<EnableFastSnapshotRestoreStateError,
            EnableFastSnapshotRestoreStateErrorBuilder> {
  _$EnableFastSnapshotRestoreStateError? _$v;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  EnableFastSnapshotRestoreStateErrorBuilder() {
    EnableFastSnapshotRestoreStateError._init(this);
  }

  EnableFastSnapshotRestoreStateErrorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EnableFastSnapshotRestoreStateError other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EnableFastSnapshotRestoreStateError;
  }

  @override
  void update(
      void Function(EnableFastSnapshotRestoreStateErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EnableFastSnapshotRestoreStateError build() => _build();

  _$EnableFastSnapshotRestoreStateError _build() {
    final _$result = _$v ??
        new _$EnableFastSnapshotRestoreStateError._(
            code: code, message: message);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
