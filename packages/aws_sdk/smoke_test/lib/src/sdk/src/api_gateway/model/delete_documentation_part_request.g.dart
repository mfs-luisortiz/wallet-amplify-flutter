// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_documentation_part_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteDocumentationPartRequest extends DeleteDocumentationPartRequest {
  @override
  final String restApiId;
  @override
  final String documentationPartId;

  factory _$DeleteDocumentationPartRequest(
          [void Function(DeleteDocumentationPartRequestBuilder)? updates]) =>
      (new DeleteDocumentationPartRequestBuilder()..update(updates))._build();

  _$DeleteDocumentationPartRequest._(
      {required this.restApiId, required this.documentationPartId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'DeleteDocumentationPartRequest', 'restApiId');
    BuiltValueNullFieldError.checkNotNull(documentationPartId,
        r'DeleteDocumentationPartRequest', 'documentationPartId');
  }

  @override
  DeleteDocumentationPartRequest rebuild(
          void Function(DeleteDocumentationPartRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteDocumentationPartRequestBuilder toBuilder() =>
      new DeleteDocumentationPartRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteDocumentationPartRequest &&
        restApiId == other.restApiId &&
        documentationPartId == other.documentationPartId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, restApiId.hashCode);
    _$hash = $jc(_$hash, documentationPartId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteDocumentationPartRequestBuilder
    implements
        Builder<DeleteDocumentationPartRequest,
            DeleteDocumentationPartRequestBuilder> {
  _$DeleteDocumentationPartRequest? _$v;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  String? _documentationPartId;
  String? get documentationPartId => _$this._documentationPartId;
  set documentationPartId(String? documentationPartId) =>
      _$this._documentationPartId = documentationPartId;

  DeleteDocumentationPartRequestBuilder() {
    DeleteDocumentationPartRequest._init(this);
  }

  DeleteDocumentationPartRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _restApiId = $v.restApiId;
      _documentationPartId = $v.documentationPartId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteDocumentationPartRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteDocumentationPartRequest;
  }

  @override
  void update(void Function(DeleteDocumentationPartRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteDocumentationPartRequest build() => _build();

  _$DeleteDocumentationPartRequest _build() {
    final _$result = _$v ??
        new _$DeleteDocumentationPartRequest._(
            restApiId: BuiltValueNullFieldError.checkNotNull(
                restApiId, r'DeleteDocumentationPartRequest', 'restApiId'),
            documentationPartId: BuiltValueNullFieldError.checkNotNull(
                documentationPartId,
                r'DeleteDocumentationPartRequest',
                'documentationPartId'));
    replace(_$result);
    return _$result;
  }
}

class _$DeleteDocumentationPartRequestPayload
    extends DeleteDocumentationPartRequestPayload {
  factory _$DeleteDocumentationPartRequestPayload(
          [void Function(DeleteDocumentationPartRequestPayloadBuilder)?
              updates]) =>
      (new DeleteDocumentationPartRequestPayloadBuilder()..update(updates))
          ._build();

  _$DeleteDocumentationPartRequestPayload._() : super._();

  @override
  DeleteDocumentationPartRequestPayload rebuild(
          void Function(DeleteDocumentationPartRequestPayloadBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteDocumentationPartRequestPayloadBuilder toBuilder() =>
      new DeleteDocumentationPartRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteDocumentationPartRequestPayload;
  }

  @override
  int get hashCode {
    return 104351289;
  }
}

class DeleteDocumentationPartRequestPayloadBuilder
    implements
        Builder<DeleteDocumentationPartRequestPayload,
            DeleteDocumentationPartRequestPayloadBuilder> {
  _$DeleteDocumentationPartRequestPayload? _$v;

  DeleteDocumentationPartRequestPayloadBuilder() {
    DeleteDocumentationPartRequestPayload._init(this);
  }

  @override
  void replace(DeleteDocumentationPartRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteDocumentationPartRequestPayload;
  }

  @override
  void update(
      void Function(DeleteDocumentationPartRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteDocumentationPartRequestPayload build() => _build();

  _$DeleteDocumentationPartRequestPayload _build() {
    final _$result = _$v ?? new _$DeleteDocumentationPartRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
