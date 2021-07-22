// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'commercio_docs_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CommercioDocsDeriveDocumentStateTearOff {
  const _$CommercioDocsDeriveDocumentStateTearOff();

  CommercioDocsDeriveDocumentStateData call(
      {required CommercioDoc commercioDoc}) {
    return CommercioDocsDeriveDocumentStateData(
      commercioDoc: commercioDoc,
    );
  }

  CommercioDocsDeriveDocumentStateInitial initial() {
    return const CommercioDocsDeriveDocumentStateInitial();
  }

  CommercioDocsDeriveDocumentStateLoading loading() {
    return const CommercioDocsDeriveDocumentStateLoading();
  }

  CommercioDocsDeriveDocumentStateError error([String? error]) {
    return CommercioDocsDeriveDocumentStateError(
      error,
    );
  }
}

/// @nodoc
const $CommercioDocsDeriveDocumentState =
    _$CommercioDocsDeriveDocumentStateTearOff();

/// @nodoc
mixin _$CommercioDocsDeriveDocumentState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(CommercioDoc commercioDoc) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(CommercioDoc commercioDoc)? $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommercioDocsDeriveDocumentStateData value) $default, {
    required TResult Function(CommercioDocsDeriveDocumentStateInitial value)
        initial,
    required TResult Function(CommercioDocsDeriveDocumentStateLoading value)
        loading,
    required TResult Function(CommercioDocsDeriveDocumentStateError value)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioDocsDeriveDocumentStateData value)? $default, {
    TResult Function(CommercioDocsDeriveDocumentStateInitial value)? initial,
    TResult Function(CommercioDocsDeriveDocumentStateLoading value)? loading,
    TResult Function(CommercioDocsDeriveDocumentStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommercioDocsDeriveDocumentStateCopyWith<$Res> {
  factory $CommercioDocsDeriveDocumentStateCopyWith(
          CommercioDocsDeriveDocumentState value,
          $Res Function(CommercioDocsDeriveDocumentState) then) =
      _$CommercioDocsDeriveDocumentStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommercioDocsDeriveDocumentStateCopyWithImpl<$Res>
    implements $CommercioDocsDeriveDocumentStateCopyWith<$Res> {
  _$CommercioDocsDeriveDocumentStateCopyWithImpl(this._value, this._then);

  final CommercioDocsDeriveDocumentState _value;
  // ignore: unused_field
  final $Res Function(CommercioDocsDeriveDocumentState) _then;
}

/// @nodoc
abstract class $CommercioDocsDeriveDocumentStateDataCopyWith<$Res> {
  factory $CommercioDocsDeriveDocumentStateDataCopyWith(
          CommercioDocsDeriveDocumentStateData value,
          $Res Function(CommercioDocsDeriveDocumentStateData) then) =
      _$CommercioDocsDeriveDocumentStateDataCopyWithImpl<$Res>;
  $Res call({CommercioDoc commercioDoc});
}

/// @nodoc
class _$CommercioDocsDeriveDocumentStateDataCopyWithImpl<$Res>
    extends _$CommercioDocsDeriveDocumentStateCopyWithImpl<$Res>
    implements $CommercioDocsDeriveDocumentStateDataCopyWith<$Res> {
  _$CommercioDocsDeriveDocumentStateDataCopyWithImpl(
      CommercioDocsDeriveDocumentStateData _value,
      $Res Function(CommercioDocsDeriveDocumentStateData) _then)
      : super(_value, (v) => _then(v as CommercioDocsDeriveDocumentStateData));

  @override
  CommercioDocsDeriveDocumentStateData get _value =>
      super._value as CommercioDocsDeriveDocumentStateData;

  @override
  $Res call({
    Object? commercioDoc = freezed,
  }) {
    return _then(CommercioDocsDeriveDocumentStateData(
      commercioDoc: commercioDoc == freezed
          ? _value.commercioDoc
          : commercioDoc // ignore: cast_nullable_to_non_nullable
              as CommercioDoc,
    ));
  }
}

/// @nodoc

class _$CommercioDocsDeriveDocumentStateData
    implements CommercioDocsDeriveDocumentStateData {
  const _$CommercioDocsDeriveDocumentStateData({required this.commercioDoc});

  @override
  final CommercioDoc commercioDoc;

  @override
  String toString() {
    return 'CommercioDocsDeriveDocumentState(commercioDoc: $commercioDoc)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioDocsDeriveDocumentStateData &&
            (identical(other.commercioDoc, commercioDoc) ||
                const DeepCollectionEquality()
                    .equals(other.commercioDoc, commercioDoc)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(commercioDoc);

  @JsonKey(ignore: true)
  @override
  $CommercioDocsDeriveDocumentStateDataCopyWith<
          CommercioDocsDeriveDocumentStateData>
      get copyWith => _$CommercioDocsDeriveDocumentStateDataCopyWithImpl<
          CommercioDocsDeriveDocumentStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(CommercioDoc commercioDoc) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return $default(commercioDoc);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(CommercioDoc commercioDoc)? $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(commercioDoc);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommercioDocsDeriveDocumentStateData value) $default, {
    required TResult Function(CommercioDocsDeriveDocumentStateInitial value)
        initial,
    required TResult Function(CommercioDocsDeriveDocumentStateLoading value)
        loading,
    required TResult Function(CommercioDocsDeriveDocumentStateError value)
        error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioDocsDeriveDocumentStateData value)? $default, {
    TResult Function(CommercioDocsDeriveDocumentStateInitial value)? initial,
    TResult Function(CommercioDocsDeriveDocumentStateLoading value)? loading,
    TResult Function(CommercioDocsDeriveDocumentStateError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class CommercioDocsDeriveDocumentStateData
    implements CommercioDocsDeriveDocumentState {
  const factory CommercioDocsDeriveDocumentStateData(
          {required CommercioDoc commercioDoc}) =
      _$CommercioDocsDeriveDocumentStateData;

  CommercioDoc get commercioDoc => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommercioDocsDeriveDocumentStateDataCopyWith<
          CommercioDocsDeriveDocumentStateData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommercioDocsDeriveDocumentStateInitialCopyWith<$Res> {
  factory $CommercioDocsDeriveDocumentStateInitialCopyWith(
          CommercioDocsDeriveDocumentStateInitial value,
          $Res Function(CommercioDocsDeriveDocumentStateInitial) then) =
      _$CommercioDocsDeriveDocumentStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommercioDocsDeriveDocumentStateInitialCopyWithImpl<$Res>
    extends _$CommercioDocsDeriveDocumentStateCopyWithImpl<$Res>
    implements $CommercioDocsDeriveDocumentStateInitialCopyWith<$Res> {
  _$CommercioDocsDeriveDocumentStateInitialCopyWithImpl(
      CommercioDocsDeriveDocumentStateInitial _value,
      $Res Function(CommercioDocsDeriveDocumentStateInitial) _then)
      : super(
            _value, (v) => _then(v as CommercioDocsDeriveDocumentStateInitial));

  @override
  CommercioDocsDeriveDocumentStateInitial get _value =>
      super._value as CommercioDocsDeriveDocumentStateInitial;
}

/// @nodoc

class _$CommercioDocsDeriveDocumentStateInitial
    implements CommercioDocsDeriveDocumentStateInitial {
  const _$CommercioDocsDeriveDocumentStateInitial();

  @override
  String toString() {
    return 'CommercioDocsDeriveDocumentState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioDocsDeriveDocumentStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(CommercioDoc commercioDoc) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(CommercioDoc commercioDoc)? $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommercioDocsDeriveDocumentStateData value) $default, {
    required TResult Function(CommercioDocsDeriveDocumentStateInitial value)
        initial,
    required TResult Function(CommercioDocsDeriveDocumentStateLoading value)
        loading,
    required TResult Function(CommercioDocsDeriveDocumentStateError value)
        error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioDocsDeriveDocumentStateData value)? $default, {
    TResult Function(CommercioDocsDeriveDocumentStateInitial value)? initial,
    TResult Function(CommercioDocsDeriveDocumentStateLoading value)? loading,
    TResult Function(CommercioDocsDeriveDocumentStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CommercioDocsDeriveDocumentStateInitial
    implements CommercioDocsDeriveDocumentState {
  const factory CommercioDocsDeriveDocumentStateInitial() =
      _$CommercioDocsDeriveDocumentStateInitial;
}

/// @nodoc
abstract class $CommercioDocsDeriveDocumentStateLoadingCopyWith<$Res> {
  factory $CommercioDocsDeriveDocumentStateLoadingCopyWith(
          CommercioDocsDeriveDocumentStateLoading value,
          $Res Function(CommercioDocsDeriveDocumentStateLoading) then) =
      _$CommercioDocsDeriveDocumentStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommercioDocsDeriveDocumentStateLoadingCopyWithImpl<$Res>
    extends _$CommercioDocsDeriveDocumentStateCopyWithImpl<$Res>
    implements $CommercioDocsDeriveDocumentStateLoadingCopyWith<$Res> {
  _$CommercioDocsDeriveDocumentStateLoadingCopyWithImpl(
      CommercioDocsDeriveDocumentStateLoading _value,
      $Res Function(CommercioDocsDeriveDocumentStateLoading) _then)
      : super(
            _value, (v) => _then(v as CommercioDocsDeriveDocumentStateLoading));

  @override
  CommercioDocsDeriveDocumentStateLoading get _value =>
      super._value as CommercioDocsDeriveDocumentStateLoading;
}

/// @nodoc

class _$CommercioDocsDeriveDocumentStateLoading
    implements CommercioDocsDeriveDocumentStateLoading {
  const _$CommercioDocsDeriveDocumentStateLoading();

  @override
  String toString() {
    return 'CommercioDocsDeriveDocumentState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioDocsDeriveDocumentStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(CommercioDoc commercioDoc) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(CommercioDoc commercioDoc)? $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommercioDocsDeriveDocumentStateData value) $default, {
    required TResult Function(CommercioDocsDeriveDocumentStateInitial value)
        initial,
    required TResult Function(CommercioDocsDeriveDocumentStateLoading value)
        loading,
    required TResult Function(CommercioDocsDeriveDocumentStateError value)
        error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioDocsDeriveDocumentStateData value)? $default, {
    TResult Function(CommercioDocsDeriveDocumentStateInitial value)? initial,
    TResult Function(CommercioDocsDeriveDocumentStateLoading value)? loading,
    TResult Function(CommercioDocsDeriveDocumentStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CommercioDocsDeriveDocumentStateLoading
    implements CommercioDocsDeriveDocumentState {
  const factory CommercioDocsDeriveDocumentStateLoading() =
      _$CommercioDocsDeriveDocumentStateLoading;
}

/// @nodoc
abstract class $CommercioDocsDeriveDocumentStateErrorCopyWith<$Res> {
  factory $CommercioDocsDeriveDocumentStateErrorCopyWith(
          CommercioDocsDeriveDocumentStateError value,
          $Res Function(CommercioDocsDeriveDocumentStateError) then) =
      _$CommercioDocsDeriveDocumentStateErrorCopyWithImpl<$Res>;
  $Res call({String? error});
}

/// @nodoc
class _$CommercioDocsDeriveDocumentStateErrorCopyWithImpl<$Res>
    extends _$CommercioDocsDeriveDocumentStateCopyWithImpl<$Res>
    implements $CommercioDocsDeriveDocumentStateErrorCopyWith<$Res> {
  _$CommercioDocsDeriveDocumentStateErrorCopyWithImpl(
      CommercioDocsDeriveDocumentStateError _value,
      $Res Function(CommercioDocsDeriveDocumentStateError) _then)
      : super(_value, (v) => _then(v as CommercioDocsDeriveDocumentStateError));

  @override
  CommercioDocsDeriveDocumentStateError get _value =>
      super._value as CommercioDocsDeriveDocumentStateError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(CommercioDocsDeriveDocumentStateError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CommercioDocsDeriveDocumentStateError
    implements CommercioDocsDeriveDocumentStateError {
  const _$CommercioDocsDeriveDocumentStateError([this.error]);

  @override
  final String? error;

  @override
  String toString() {
    return 'CommercioDocsDeriveDocumentState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioDocsDeriveDocumentStateError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $CommercioDocsDeriveDocumentStateErrorCopyWith<
          CommercioDocsDeriveDocumentStateError>
      get copyWith => _$CommercioDocsDeriveDocumentStateErrorCopyWithImpl<
          CommercioDocsDeriveDocumentStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(CommercioDoc commercioDoc) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(CommercioDoc commercioDoc)? $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommercioDocsDeriveDocumentStateData value) $default, {
    required TResult Function(CommercioDocsDeriveDocumentStateInitial value)
        initial,
    required TResult Function(CommercioDocsDeriveDocumentStateLoading value)
        loading,
    required TResult Function(CommercioDocsDeriveDocumentStateError value)
        error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioDocsDeriveDocumentStateData value)? $default, {
    TResult Function(CommercioDocsDeriveDocumentStateInitial value)? initial,
    TResult Function(CommercioDocsDeriveDocumentStateLoading value)? loading,
    TResult Function(CommercioDocsDeriveDocumentStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CommercioDocsDeriveDocumentStateError
    implements CommercioDocsDeriveDocumentState {
  const factory CommercioDocsDeriveDocumentStateError([String? error]) =
      _$CommercioDocsDeriveDocumentStateError;

  String? get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommercioDocsDeriveDocumentStateErrorCopyWith<
          CommercioDocsDeriveDocumentStateError>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$CommercioDocsSharedDocumentsStateTearOff {
  const _$CommercioDocsSharedDocumentsStateTearOff();

  CommercioDocsSharedDocumentsStateData call(
      {required TransactionResult result}) {
    return CommercioDocsSharedDocumentsStateData(
      result: result,
    );
  }

  CommercioDocsSharedDocumentsStateInitial initial() {
    return const CommercioDocsSharedDocumentsStateInitial();
  }

  CommercioDocsSharedDocumentsStateLoading loading() {
    return const CommercioDocsSharedDocumentsStateLoading();
  }

  CommercioDocsSharedDocumentsStateError error([String? error]) {
    return CommercioDocsSharedDocumentsStateError(
      error,
    );
  }
}

/// @nodoc
const $CommercioDocsSharedDocumentsState =
    _$CommercioDocsSharedDocumentsStateTearOff();

/// @nodoc
mixin _$CommercioDocsSharedDocumentsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(TransactionResult result) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(TransactionResult result)? $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommercioDocsSharedDocumentsStateData value) $default, {
    required TResult Function(CommercioDocsSharedDocumentsStateInitial value)
        initial,
    required TResult Function(CommercioDocsSharedDocumentsStateLoading value)
        loading,
    required TResult Function(CommercioDocsSharedDocumentsStateError value)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioDocsSharedDocumentsStateData value)? $default, {
    TResult Function(CommercioDocsSharedDocumentsStateInitial value)? initial,
    TResult Function(CommercioDocsSharedDocumentsStateLoading value)? loading,
    TResult Function(CommercioDocsSharedDocumentsStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommercioDocsSharedDocumentsStateCopyWith<$Res> {
  factory $CommercioDocsSharedDocumentsStateCopyWith(
          CommercioDocsSharedDocumentsState value,
          $Res Function(CommercioDocsSharedDocumentsState) then) =
      _$CommercioDocsSharedDocumentsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommercioDocsSharedDocumentsStateCopyWithImpl<$Res>
    implements $CommercioDocsSharedDocumentsStateCopyWith<$Res> {
  _$CommercioDocsSharedDocumentsStateCopyWithImpl(this._value, this._then);

  final CommercioDocsSharedDocumentsState _value;
  // ignore: unused_field
  final $Res Function(CommercioDocsSharedDocumentsState) _then;
}

/// @nodoc
abstract class $CommercioDocsSharedDocumentsStateDataCopyWith<$Res> {
  factory $CommercioDocsSharedDocumentsStateDataCopyWith(
          CommercioDocsSharedDocumentsStateData value,
          $Res Function(CommercioDocsSharedDocumentsStateData) then) =
      _$CommercioDocsSharedDocumentsStateDataCopyWithImpl<$Res>;
  $Res call({TransactionResult result});
}

/// @nodoc
class _$CommercioDocsSharedDocumentsStateDataCopyWithImpl<$Res>
    extends _$CommercioDocsSharedDocumentsStateCopyWithImpl<$Res>
    implements $CommercioDocsSharedDocumentsStateDataCopyWith<$Res> {
  _$CommercioDocsSharedDocumentsStateDataCopyWithImpl(
      CommercioDocsSharedDocumentsStateData _value,
      $Res Function(CommercioDocsSharedDocumentsStateData) _then)
      : super(_value, (v) => _then(v as CommercioDocsSharedDocumentsStateData));

  @override
  CommercioDocsSharedDocumentsStateData get _value =>
      super._value as CommercioDocsSharedDocumentsStateData;

  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(CommercioDocsSharedDocumentsStateData(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as TransactionResult,
    ));
  }
}

/// @nodoc

class _$CommercioDocsSharedDocumentsStateData
    implements CommercioDocsSharedDocumentsStateData {
  const _$CommercioDocsSharedDocumentsStateData({required this.result});

  @override
  final TransactionResult result;

  @override
  String toString() {
    return 'CommercioDocsSharedDocumentsState(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioDocsSharedDocumentsStateData &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(result);

  @JsonKey(ignore: true)
  @override
  $CommercioDocsSharedDocumentsStateDataCopyWith<
          CommercioDocsSharedDocumentsStateData>
      get copyWith => _$CommercioDocsSharedDocumentsStateDataCopyWithImpl<
          CommercioDocsSharedDocumentsStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(TransactionResult result) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return $default(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(TransactionResult result)? $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommercioDocsSharedDocumentsStateData value) $default, {
    required TResult Function(CommercioDocsSharedDocumentsStateInitial value)
        initial,
    required TResult Function(CommercioDocsSharedDocumentsStateLoading value)
        loading,
    required TResult Function(CommercioDocsSharedDocumentsStateError value)
        error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioDocsSharedDocumentsStateData value)? $default, {
    TResult Function(CommercioDocsSharedDocumentsStateInitial value)? initial,
    TResult Function(CommercioDocsSharedDocumentsStateLoading value)? loading,
    TResult Function(CommercioDocsSharedDocumentsStateError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class CommercioDocsSharedDocumentsStateData
    implements CommercioDocsSharedDocumentsState {
  const factory CommercioDocsSharedDocumentsStateData(
          {required TransactionResult result}) =
      _$CommercioDocsSharedDocumentsStateData;

  TransactionResult get result => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommercioDocsSharedDocumentsStateDataCopyWith<
          CommercioDocsSharedDocumentsStateData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommercioDocsSharedDocumentsStateInitialCopyWith<$Res> {
  factory $CommercioDocsSharedDocumentsStateInitialCopyWith(
          CommercioDocsSharedDocumentsStateInitial value,
          $Res Function(CommercioDocsSharedDocumentsStateInitial) then) =
      _$CommercioDocsSharedDocumentsStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommercioDocsSharedDocumentsStateInitialCopyWithImpl<$Res>
    extends _$CommercioDocsSharedDocumentsStateCopyWithImpl<$Res>
    implements $CommercioDocsSharedDocumentsStateInitialCopyWith<$Res> {
  _$CommercioDocsSharedDocumentsStateInitialCopyWithImpl(
      CommercioDocsSharedDocumentsStateInitial _value,
      $Res Function(CommercioDocsSharedDocumentsStateInitial) _then)
      : super(_value,
            (v) => _then(v as CommercioDocsSharedDocumentsStateInitial));

  @override
  CommercioDocsSharedDocumentsStateInitial get _value =>
      super._value as CommercioDocsSharedDocumentsStateInitial;
}

/// @nodoc

class _$CommercioDocsSharedDocumentsStateInitial
    implements CommercioDocsSharedDocumentsStateInitial {
  const _$CommercioDocsSharedDocumentsStateInitial();

  @override
  String toString() {
    return 'CommercioDocsSharedDocumentsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioDocsSharedDocumentsStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(TransactionResult result) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(TransactionResult result)? $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommercioDocsSharedDocumentsStateData value) $default, {
    required TResult Function(CommercioDocsSharedDocumentsStateInitial value)
        initial,
    required TResult Function(CommercioDocsSharedDocumentsStateLoading value)
        loading,
    required TResult Function(CommercioDocsSharedDocumentsStateError value)
        error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioDocsSharedDocumentsStateData value)? $default, {
    TResult Function(CommercioDocsSharedDocumentsStateInitial value)? initial,
    TResult Function(CommercioDocsSharedDocumentsStateLoading value)? loading,
    TResult Function(CommercioDocsSharedDocumentsStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CommercioDocsSharedDocumentsStateInitial
    implements CommercioDocsSharedDocumentsState {
  const factory CommercioDocsSharedDocumentsStateInitial() =
      _$CommercioDocsSharedDocumentsStateInitial;
}

/// @nodoc
abstract class $CommercioDocsSharedDocumentsStateLoadingCopyWith<$Res> {
  factory $CommercioDocsSharedDocumentsStateLoadingCopyWith(
          CommercioDocsSharedDocumentsStateLoading value,
          $Res Function(CommercioDocsSharedDocumentsStateLoading) then) =
      _$CommercioDocsSharedDocumentsStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommercioDocsSharedDocumentsStateLoadingCopyWithImpl<$Res>
    extends _$CommercioDocsSharedDocumentsStateCopyWithImpl<$Res>
    implements $CommercioDocsSharedDocumentsStateLoadingCopyWith<$Res> {
  _$CommercioDocsSharedDocumentsStateLoadingCopyWithImpl(
      CommercioDocsSharedDocumentsStateLoading _value,
      $Res Function(CommercioDocsSharedDocumentsStateLoading) _then)
      : super(_value,
            (v) => _then(v as CommercioDocsSharedDocumentsStateLoading));

  @override
  CommercioDocsSharedDocumentsStateLoading get _value =>
      super._value as CommercioDocsSharedDocumentsStateLoading;
}

/// @nodoc

class _$CommercioDocsSharedDocumentsStateLoading
    implements CommercioDocsSharedDocumentsStateLoading {
  const _$CommercioDocsSharedDocumentsStateLoading();

  @override
  String toString() {
    return 'CommercioDocsSharedDocumentsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioDocsSharedDocumentsStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(TransactionResult result) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(TransactionResult result)? $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommercioDocsSharedDocumentsStateData value) $default, {
    required TResult Function(CommercioDocsSharedDocumentsStateInitial value)
        initial,
    required TResult Function(CommercioDocsSharedDocumentsStateLoading value)
        loading,
    required TResult Function(CommercioDocsSharedDocumentsStateError value)
        error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioDocsSharedDocumentsStateData value)? $default, {
    TResult Function(CommercioDocsSharedDocumentsStateInitial value)? initial,
    TResult Function(CommercioDocsSharedDocumentsStateLoading value)? loading,
    TResult Function(CommercioDocsSharedDocumentsStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CommercioDocsSharedDocumentsStateLoading
    implements CommercioDocsSharedDocumentsState {
  const factory CommercioDocsSharedDocumentsStateLoading() =
      _$CommercioDocsSharedDocumentsStateLoading;
}

/// @nodoc
abstract class $CommercioDocsSharedDocumentsStateErrorCopyWith<$Res> {
  factory $CommercioDocsSharedDocumentsStateErrorCopyWith(
          CommercioDocsSharedDocumentsStateError value,
          $Res Function(CommercioDocsSharedDocumentsStateError) then) =
      _$CommercioDocsSharedDocumentsStateErrorCopyWithImpl<$Res>;
  $Res call({String? error});
}

/// @nodoc
class _$CommercioDocsSharedDocumentsStateErrorCopyWithImpl<$Res>
    extends _$CommercioDocsSharedDocumentsStateCopyWithImpl<$Res>
    implements $CommercioDocsSharedDocumentsStateErrorCopyWith<$Res> {
  _$CommercioDocsSharedDocumentsStateErrorCopyWithImpl(
      CommercioDocsSharedDocumentsStateError _value,
      $Res Function(CommercioDocsSharedDocumentsStateError) _then)
      : super(
            _value, (v) => _then(v as CommercioDocsSharedDocumentsStateError));

  @override
  CommercioDocsSharedDocumentsStateError get _value =>
      super._value as CommercioDocsSharedDocumentsStateError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(CommercioDocsSharedDocumentsStateError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CommercioDocsSharedDocumentsStateError
    implements CommercioDocsSharedDocumentsStateError {
  const _$CommercioDocsSharedDocumentsStateError([this.error]);

  @override
  final String? error;

  @override
  String toString() {
    return 'CommercioDocsSharedDocumentsState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioDocsSharedDocumentsStateError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $CommercioDocsSharedDocumentsStateErrorCopyWith<
          CommercioDocsSharedDocumentsStateError>
      get copyWith => _$CommercioDocsSharedDocumentsStateErrorCopyWithImpl<
          CommercioDocsSharedDocumentsStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(TransactionResult result) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(TransactionResult result)? $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommercioDocsSharedDocumentsStateData value) $default, {
    required TResult Function(CommercioDocsSharedDocumentsStateInitial value)
        initial,
    required TResult Function(CommercioDocsSharedDocumentsStateLoading value)
        loading,
    required TResult Function(CommercioDocsSharedDocumentsStateError value)
        error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioDocsSharedDocumentsStateData value)? $default, {
    TResult Function(CommercioDocsSharedDocumentsStateInitial value)? initial,
    TResult Function(CommercioDocsSharedDocumentsStateLoading value)? loading,
    TResult Function(CommercioDocsSharedDocumentsStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CommercioDocsSharedDocumentsStateError
    implements CommercioDocsSharedDocumentsState {
  const factory CommercioDocsSharedDocumentsStateError([String? error]) =
      _$CommercioDocsSharedDocumentsStateError;

  String? get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommercioDocsSharedDocumentsStateErrorCopyWith<
          CommercioDocsSharedDocumentsStateError>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$CommercioDocsSentReceiptStateTearOff {
  const _$CommercioDocsSentReceiptStateTearOff();

  CommercioDocsSentReceiptStateData call({required TransactionResult result}) {
    return CommercioDocsSentReceiptStateData(
      result: result,
    );
  }

  CommercioDocsSentReceiptStateInitial initial() {
    return const CommercioDocsSentReceiptStateInitial();
  }

  CommercioDocsSentReceiptStateLoading loading() {
    return const CommercioDocsSentReceiptStateLoading();
  }

  CommercioDocsSentReceiptStateError error([String? error]) {
    return CommercioDocsSentReceiptStateError(
      error,
    );
  }
}

/// @nodoc
const $CommercioDocsSentReceiptState = _$CommercioDocsSentReceiptStateTearOff();

/// @nodoc
mixin _$CommercioDocsSentReceiptState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(TransactionResult result) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(TransactionResult result)? $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommercioDocsSentReceiptStateData value) $default, {
    required TResult Function(CommercioDocsSentReceiptStateInitial value)
        initial,
    required TResult Function(CommercioDocsSentReceiptStateLoading value)
        loading,
    required TResult Function(CommercioDocsSentReceiptStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioDocsSentReceiptStateData value)? $default, {
    TResult Function(CommercioDocsSentReceiptStateInitial value)? initial,
    TResult Function(CommercioDocsSentReceiptStateLoading value)? loading,
    TResult Function(CommercioDocsSentReceiptStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommercioDocsSentReceiptStateCopyWith<$Res> {
  factory $CommercioDocsSentReceiptStateCopyWith(
          CommercioDocsSentReceiptState value,
          $Res Function(CommercioDocsSentReceiptState) then) =
      _$CommercioDocsSentReceiptStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommercioDocsSentReceiptStateCopyWithImpl<$Res>
    implements $CommercioDocsSentReceiptStateCopyWith<$Res> {
  _$CommercioDocsSentReceiptStateCopyWithImpl(this._value, this._then);

  final CommercioDocsSentReceiptState _value;
  // ignore: unused_field
  final $Res Function(CommercioDocsSentReceiptState) _then;
}

/// @nodoc
abstract class $CommercioDocsSentReceiptStateDataCopyWith<$Res> {
  factory $CommercioDocsSentReceiptStateDataCopyWith(
          CommercioDocsSentReceiptStateData value,
          $Res Function(CommercioDocsSentReceiptStateData) then) =
      _$CommercioDocsSentReceiptStateDataCopyWithImpl<$Res>;
  $Res call({TransactionResult result});
}

/// @nodoc
class _$CommercioDocsSentReceiptStateDataCopyWithImpl<$Res>
    extends _$CommercioDocsSentReceiptStateCopyWithImpl<$Res>
    implements $CommercioDocsSentReceiptStateDataCopyWith<$Res> {
  _$CommercioDocsSentReceiptStateDataCopyWithImpl(
      CommercioDocsSentReceiptStateData _value,
      $Res Function(CommercioDocsSentReceiptStateData) _then)
      : super(_value, (v) => _then(v as CommercioDocsSentReceiptStateData));

  @override
  CommercioDocsSentReceiptStateData get _value =>
      super._value as CommercioDocsSentReceiptStateData;

  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(CommercioDocsSentReceiptStateData(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as TransactionResult,
    ));
  }
}

/// @nodoc

class _$CommercioDocsSentReceiptStateData
    implements CommercioDocsSentReceiptStateData {
  const _$CommercioDocsSentReceiptStateData({required this.result});

  @override
  final TransactionResult result;

  @override
  String toString() {
    return 'CommercioDocsSentReceiptState(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioDocsSentReceiptStateData &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(result);

  @JsonKey(ignore: true)
  @override
  $CommercioDocsSentReceiptStateDataCopyWith<CommercioDocsSentReceiptStateData>
      get copyWith => _$CommercioDocsSentReceiptStateDataCopyWithImpl<
          CommercioDocsSentReceiptStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(TransactionResult result) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return $default(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(TransactionResult result)? $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommercioDocsSentReceiptStateData value) $default, {
    required TResult Function(CommercioDocsSentReceiptStateInitial value)
        initial,
    required TResult Function(CommercioDocsSentReceiptStateLoading value)
        loading,
    required TResult Function(CommercioDocsSentReceiptStateError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioDocsSentReceiptStateData value)? $default, {
    TResult Function(CommercioDocsSentReceiptStateInitial value)? initial,
    TResult Function(CommercioDocsSentReceiptStateLoading value)? loading,
    TResult Function(CommercioDocsSentReceiptStateError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class CommercioDocsSentReceiptStateData
    implements CommercioDocsSentReceiptState {
  const factory CommercioDocsSentReceiptStateData(
          {required TransactionResult result}) =
      _$CommercioDocsSentReceiptStateData;

  TransactionResult get result => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommercioDocsSentReceiptStateDataCopyWith<CommercioDocsSentReceiptStateData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommercioDocsSentReceiptStateInitialCopyWith<$Res> {
  factory $CommercioDocsSentReceiptStateInitialCopyWith(
          CommercioDocsSentReceiptStateInitial value,
          $Res Function(CommercioDocsSentReceiptStateInitial) then) =
      _$CommercioDocsSentReceiptStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommercioDocsSentReceiptStateInitialCopyWithImpl<$Res>
    extends _$CommercioDocsSentReceiptStateCopyWithImpl<$Res>
    implements $CommercioDocsSentReceiptStateInitialCopyWith<$Res> {
  _$CommercioDocsSentReceiptStateInitialCopyWithImpl(
      CommercioDocsSentReceiptStateInitial _value,
      $Res Function(CommercioDocsSentReceiptStateInitial) _then)
      : super(_value, (v) => _then(v as CommercioDocsSentReceiptStateInitial));

  @override
  CommercioDocsSentReceiptStateInitial get _value =>
      super._value as CommercioDocsSentReceiptStateInitial;
}

/// @nodoc

class _$CommercioDocsSentReceiptStateInitial
    implements CommercioDocsSentReceiptStateInitial {
  const _$CommercioDocsSentReceiptStateInitial();

  @override
  String toString() {
    return 'CommercioDocsSentReceiptState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioDocsSentReceiptStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(TransactionResult result) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(TransactionResult result)? $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommercioDocsSentReceiptStateData value) $default, {
    required TResult Function(CommercioDocsSentReceiptStateInitial value)
        initial,
    required TResult Function(CommercioDocsSentReceiptStateLoading value)
        loading,
    required TResult Function(CommercioDocsSentReceiptStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioDocsSentReceiptStateData value)? $default, {
    TResult Function(CommercioDocsSentReceiptStateInitial value)? initial,
    TResult Function(CommercioDocsSentReceiptStateLoading value)? loading,
    TResult Function(CommercioDocsSentReceiptStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CommercioDocsSentReceiptStateInitial
    implements CommercioDocsSentReceiptState {
  const factory CommercioDocsSentReceiptStateInitial() =
      _$CommercioDocsSentReceiptStateInitial;
}

/// @nodoc
abstract class $CommercioDocsSentReceiptStateLoadingCopyWith<$Res> {
  factory $CommercioDocsSentReceiptStateLoadingCopyWith(
          CommercioDocsSentReceiptStateLoading value,
          $Res Function(CommercioDocsSentReceiptStateLoading) then) =
      _$CommercioDocsSentReceiptStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommercioDocsSentReceiptStateLoadingCopyWithImpl<$Res>
    extends _$CommercioDocsSentReceiptStateCopyWithImpl<$Res>
    implements $CommercioDocsSentReceiptStateLoadingCopyWith<$Res> {
  _$CommercioDocsSentReceiptStateLoadingCopyWithImpl(
      CommercioDocsSentReceiptStateLoading _value,
      $Res Function(CommercioDocsSentReceiptStateLoading) _then)
      : super(_value, (v) => _then(v as CommercioDocsSentReceiptStateLoading));

  @override
  CommercioDocsSentReceiptStateLoading get _value =>
      super._value as CommercioDocsSentReceiptStateLoading;
}

/// @nodoc

class _$CommercioDocsSentReceiptStateLoading
    implements CommercioDocsSentReceiptStateLoading {
  const _$CommercioDocsSentReceiptStateLoading();

  @override
  String toString() {
    return 'CommercioDocsSentReceiptState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioDocsSentReceiptStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(TransactionResult result) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(TransactionResult result)? $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommercioDocsSentReceiptStateData value) $default, {
    required TResult Function(CommercioDocsSentReceiptStateInitial value)
        initial,
    required TResult Function(CommercioDocsSentReceiptStateLoading value)
        loading,
    required TResult Function(CommercioDocsSentReceiptStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioDocsSentReceiptStateData value)? $default, {
    TResult Function(CommercioDocsSentReceiptStateInitial value)? initial,
    TResult Function(CommercioDocsSentReceiptStateLoading value)? loading,
    TResult Function(CommercioDocsSentReceiptStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CommercioDocsSentReceiptStateLoading
    implements CommercioDocsSentReceiptState {
  const factory CommercioDocsSentReceiptStateLoading() =
      _$CommercioDocsSentReceiptStateLoading;
}

/// @nodoc
abstract class $CommercioDocsSentReceiptStateErrorCopyWith<$Res> {
  factory $CommercioDocsSentReceiptStateErrorCopyWith(
          CommercioDocsSentReceiptStateError value,
          $Res Function(CommercioDocsSentReceiptStateError) then) =
      _$CommercioDocsSentReceiptStateErrorCopyWithImpl<$Res>;
  $Res call({String? error});
}

/// @nodoc
class _$CommercioDocsSentReceiptStateErrorCopyWithImpl<$Res>
    extends _$CommercioDocsSentReceiptStateCopyWithImpl<$Res>
    implements $CommercioDocsSentReceiptStateErrorCopyWith<$Res> {
  _$CommercioDocsSentReceiptStateErrorCopyWithImpl(
      CommercioDocsSentReceiptStateError _value,
      $Res Function(CommercioDocsSentReceiptStateError) _then)
      : super(_value, (v) => _then(v as CommercioDocsSentReceiptStateError));

  @override
  CommercioDocsSentReceiptStateError get _value =>
      super._value as CommercioDocsSentReceiptStateError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(CommercioDocsSentReceiptStateError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CommercioDocsSentReceiptStateError
    implements CommercioDocsSentReceiptStateError {
  const _$CommercioDocsSentReceiptStateError([this.error]);

  @override
  final String? error;

  @override
  String toString() {
    return 'CommercioDocsSentReceiptState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioDocsSentReceiptStateError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $CommercioDocsSentReceiptStateErrorCopyWith<
          CommercioDocsSentReceiptStateError>
      get copyWith => _$CommercioDocsSentReceiptStateErrorCopyWithImpl<
          CommercioDocsSentReceiptStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(TransactionResult result) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(TransactionResult result)? $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommercioDocsSentReceiptStateData value) $default, {
    required TResult Function(CommercioDocsSentReceiptStateInitial value)
        initial,
    required TResult Function(CommercioDocsSentReceiptStateLoading value)
        loading,
    required TResult Function(CommercioDocsSentReceiptStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioDocsSentReceiptStateData value)? $default, {
    TResult Function(CommercioDocsSentReceiptStateInitial value)? initial,
    TResult Function(CommercioDocsSentReceiptStateLoading value)? loading,
    TResult Function(CommercioDocsSentReceiptStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CommercioDocsSentReceiptStateError
    implements CommercioDocsSentReceiptState {
  const factory CommercioDocsSentReceiptStateError([String? error]) =
      _$CommercioDocsSentReceiptStateError;

  String? get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommercioDocsSentReceiptStateErrorCopyWith<
          CommercioDocsSentReceiptStateError>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$CommercioDocsSentDocumentsStateTearOff {
  const _$CommercioDocsSentDocumentsStateTearOff();

  CommercioDocsSentDocumentsStateData call(
      {required List<CommercioDoc> sentDocuments}) {
    return CommercioDocsSentDocumentsStateData(
      sentDocuments: sentDocuments,
    );
  }

  CommercioDocsSentDocumentsStateInitial initial() {
    return const CommercioDocsSentDocumentsStateInitial();
  }

  CommercioDocsSentDocumentsStateLoading loading() {
    return const CommercioDocsSentDocumentsStateLoading();
  }

  CommercioDocsSentDocumentsStateError error([String? error]) {
    return CommercioDocsSentDocumentsStateError(
      error,
    );
  }
}

/// @nodoc
const $CommercioDocsSentDocumentsState =
    _$CommercioDocsSentDocumentsStateTearOff();

/// @nodoc
mixin _$CommercioDocsSentDocumentsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<CommercioDoc> sentDocuments) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<CommercioDoc> sentDocuments)? $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommercioDocsSentDocumentsStateData value) $default, {
    required TResult Function(CommercioDocsSentDocumentsStateInitial value)
        initial,
    required TResult Function(CommercioDocsSentDocumentsStateLoading value)
        loading,
    required TResult Function(CommercioDocsSentDocumentsStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioDocsSentDocumentsStateData value)? $default, {
    TResult Function(CommercioDocsSentDocumentsStateInitial value)? initial,
    TResult Function(CommercioDocsSentDocumentsStateLoading value)? loading,
    TResult Function(CommercioDocsSentDocumentsStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommercioDocsSentDocumentsStateCopyWith<$Res> {
  factory $CommercioDocsSentDocumentsStateCopyWith(
          CommercioDocsSentDocumentsState value,
          $Res Function(CommercioDocsSentDocumentsState) then) =
      _$CommercioDocsSentDocumentsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommercioDocsSentDocumentsStateCopyWithImpl<$Res>
    implements $CommercioDocsSentDocumentsStateCopyWith<$Res> {
  _$CommercioDocsSentDocumentsStateCopyWithImpl(this._value, this._then);

  final CommercioDocsSentDocumentsState _value;
  // ignore: unused_field
  final $Res Function(CommercioDocsSentDocumentsState) _then;
}

/// @nodoc
abstract class $CommercioDocsSentDocumentsStateDataCopyWith<$Res> {
  factory $CommercioDocsSentDocumentsStateDataCopyWith(
          CommercioDocsSentDocumentsStateData value,
          $Res Function(CommercioDocsSentDocumentsStateData) then) =
      _$CommercioDocsSentDocumentsStateDataCopyWithImpl<$Res>;
  $Res call({List<CommercioDoc> sentDocuments});
}

/// @nodoc
class _$CommercioDocsSentDocumentsStateDataCopyWithImpl<$Res>
    extends _$CommercioDocsSentDocumentsStateCopyWithImpl<$Res>
    implements $CommercioDocsSentDocumentsStateDataCopyWith<$Res> {
  _$CommercioDocsSentDocumentsStateDataCopyWithImpl(
      CommercioDocsSentDocumentsStateData _value,
      $Res Function(CommercioDocsSentDocumentsStateData) _then)
      : super(_value, (v) => _then(v as CommercioDocsSentDocumentsStateData));

  @override
  CommercioDocsSentDocumentsStateData get _value =>
      super._value as CommercioDocsSentDocumentsStateData;

  @override
  $Res call({
    Object? sentDocuments = freezed,
  }) {
    return _then(CommercioDocsSentDocumentsStateData(
      sentDocuments: sentDocuments == freezed
          ? _value.sentDocuments
          : sentDocuments // ignore: cast_nullable_to_non_nullable
              as List<CommercioDoc>,
    ));
  }
}

/// @nodoc

class _$CommercioDocsSentDocumentsStateData
    implements CommercioDocsSentDocumentsStateData {
  const _$CommercioDocsSentDocumentsStateData({required this.sentDocuments});

  @override
  final List<CommercioDoc> sentDocuments;

  @override
  String toString() {
    return 'CommercioDocsSentDocumentsState(sentDocuments: $sentDocuments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioDocsSentDocumentsStateData &&
            (identical(other.sentDocuments, sentDocuments) ||
                const DeepCollectionEquality()
                    .equals(other.sentDocuments, sentDocuments)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(sentDocuments);

  @JsonKey(ignore: true)
  @override
  $CommercioDocsSentDocumentsStateDataCopyWith<
          CommercioDocsSentDocumentsStateData>
      get copyWith => _$CommercioDocsSentDocumentsStateDataCopyWithImpl<
          CommercioDocsSentDocumentsStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<CommercioDoc> sentDocuments) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return $default(sentDocuments);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<CommercioDoc> sentDocuments)? $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(sentDocuments);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommercioDocsSentDocumentsStateData value) $default, {
    required TResult Function(CommercioDocsSentDocumentsStateInitial value)
        initial,
    required TResult Function(CommercioDocsSentDocumentsStateLoading value)
        loading,
    required TResult Function(CommercioDocsSentDocumentsStateError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioDocsSentDocumentsStateData value)? $default, {
    TResult Function(CommercioDocsSentDocumentsStateInitial value)? initial,
    TResult Function(CommercioDocsSentDocumentsStateLoading value)? loading,
    TResult Function(CommercioDocsSentDocumentsStateError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class CommercioDocsSentDocumentsStateData
    implements CommercioDocsSentDocumentsState {
  const factory CommercioDocsSentDocumentsStateData(
          {required List<CommercioDoc> sentDocuments}) =
      _$CommercioDocsSentDocumentsStateData;

  List<CommercioDoc> get sentDocuments => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommercioDocsSentDocumentsStateDataCopyWith<
          CommercioDocsSentDocumentsStateData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommercioDocsSentDocumentsStateInitialCopyWith<$Res> {
  factory $CommercioDocsSentDocumentsStateInitialCopyWith(
          CommercioDocsSentDocumentsStateInitial value,
          $Res Function(CommercioDocsSentDocumentsStateInitial) then) =
      _$CommercioDocsSentDocumentsStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommercioDocsSentDocumentsStateInitialCopyWithImpl<$Res>
    extends _$CommercioDocsSentDocumentsStateCopyWithImpl<$Res>
    implements $CommercioDocsSentDocumentsStateInitialCopyWith<$Res> {
  _$CommercioDocsSentDocumentsStateInitialCopyWithImpl(
      CommercioDocsSentDocumentsStateInitial _value,
      $Res Function(CommercioDocsSentDocumentsStateInitial) _then)
      : super(
            _value, (v) => _then(v as CommercioDocsSentDocumentsStateInitial));

  @override
  CommercioDocsSentDocumentsStateInitial get _value =>
      super._value as CommercioDocsSentDocumentsStateInitial;
}

/// @nodoc

class _$CommercioDocsSentDocumentsStateInitial
    implements CommercioDocsSentDocumentsStateInitial {
  const _$CommercioDocsSentDocumentsStateInitial();

  @override
  String toString() {
    return 'CommercioDocsSentDocumentsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioDocsSentDocumentsStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<CommercioDoc> sentDocuments) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<CommercioDoc> sentDocuments)? $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommercioDocsSentDocumentsStateData value) $default, {
    required TResult Function(CommercioDocsSentDocumentsStateInitial value)
        initial,
    required TResult Function(CommercioDocsSentDocumentsStateLoading value)
        loading,
    required TResult Function(CommercioDocsSentDocumentsStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioDocsSentDocumentsStateData value)? $default, {
    TResult Function(CommercioDocsSentDocumentsStateInitial value)? initial,
    TResult Function(CommercioDocsSentDocumentsStateLoading value)? loading,
    TResult Function(CommercioDocsSentDocumentsStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CommercioDocsSentDocumentsStateInitial
    implements CommercioDocsSentDocumentsState {
  const factory CommercioDocsSentDocumentsStateInitial() =
      _$CommercioDocsSentDocumentsStateInitial;
}

/// @nodoc
abstract class $CommercioDocsSentDocumentsStateLoadingCopyWith<$Res> {
  factory $CommercioDocsSentDocumentsStateLoadingCopyWith(
          CommercioDocsSentDocumentsStateLoading value,
          $Res Function(CommercioDocsSentDocumentsStateLoading) then) =
      _$CommercioDocsSentDocumentsStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommercioDocsSentDocumentsStateLoadingCopyWithImpl<$Res>
    extends _$CommercioDocsSentDocumentsStateCopyWithImpl<$Res>
    implements $CommercioDocsSentDocumentsStateLoadingCopyWith<$Res> {
  _$CommercioDocsSentDocumentsStateLoadingCopyWithImpl(
      CommercioDocsSentDocumentsStateLoading _value,
      $Res Function(CommercioDocsSentDocumentsStateLoading) _then)
      : super(
            _value, (v) => _then(v as CommercioDocsSentDocumentsStateLoading));

  @override
  CommercioDocsSentDocumentsStateLoading get _value =>
      super._value as CommercioDocsSentDocumentsStateLoading;
}

/// @nodoc

class _$CommercioDocsSentDocumentsStateLoading
    implements CommercioDocsSentDocumentsStateLoading {
  const _$CommercioDocsSentDocumentsStateLoading();

  @override
  String toString() {
    return 'CommercioDocsSentDocumentsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioDocsSentDocumentsStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<CommercioDoc> sentDocuments) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<CommercioDoc> sentDocuments)? $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommercioDocsSentDocumentsStateData value) $default, {
    required TResult Function(CommercioDocsSentDocumentsStateInitial value)
        initial,
    required TResult Function(CommercioDocsSentDocumentsStateLoading value)
        loading,
    required TResult Function(CommercioDocsSentDocumentsStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioDocsSentDocumentsStateData value)? $default, {
    TResult Function(CommercioDocsSentDocumentsStateInitial value)? initial,
    TResult Function(CommercioDocsSentDocumentsStateLoading value)? loading,
    TResult Function(CommercioDocsSentDocumentsStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CommercioDocsSentDocumentsStateLoading
    implements CommercioDocsSentDocumentsState {
  const factory CommercioDocsSentDocumentsStateLoading() =
      _$CommercioDocsSentDocumentsStateLoading;
}

/// @nodoc
abstract class $CommercioDocsSentDocumentsStateErrorCopyWith<$Res> {
  factory $CommercioDocsSentDocumentsStateErrorCopyWith(
          CommercioDocsSentDocumentsStateError value,
          $Res Function(CommercioDocsSentDocumentsStateError) then) =
      _$CommercioDocsSentDocumentsStateErrorCopyWithImpl<$Res>;
  $Res call({String? error});
}

/// @nodoc
class _$CommercioDocsSentDocumentsStateErrorCopyWithImpl<$Res>
    extends _$CommercioDocsSentDocumentsStateCopyWithImpl<$Res>
    implements $CommercioDocsSentDocumentsStateErrorCopyWith<$Res> {
  _$CommercioDocsSentDocumentsStateErrorCopyWithImpl(
      CommercioDocsSentDocumentsStateError _value,
      $Res Function(CommercioDocsSentDocumentsStateError) _then)
      : super(_value, (v) => _then(v as CommercioDocsSentDocumentsStateError));

  @override
  CommercioDocsSentDocumentsStateError get _value =>
      super._value as CommercioDocsSentDocumentsStateError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(CommercioDocsSentDocumentsStateError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CommercioDocsSentDocumentsStateError
    implements CommercioDocsSentDocumentsStateError {
  const _$CommercioDocsSentDocumentsStateError([this.error]);

  @override
  final String? error;

  @override
  String toString() {
    return 'CommercioDocsSentDocumentsState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioDocsSentDocumentsStateError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $CommercioDocsSentDocumentsStateErrorCopyWith<
          CommercioDocsSentDocumentsStateError>
      get copyWith => _$CommercioDocsSentDocumentsStateErrorCopyWithImpl<
          CommercioDocsSentDocumentsStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<CommercioDoc> sentDocuments) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<CommercioDoc> sentDocuments)? $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommercioDocsSentDocumentsStateData value) $default, {
    required TResult Function(CommercioDocsSentDocumentsStateInitial value)
        initial,
    required TResult Function(CommercioDocsSentDocumentsStateLoading value)
        loading,
    required TResult Function(CommercioDocsSentDocumentsStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioDocsSentDocumentsStateData value)? $default, {
    TResult Function(CommercioDocsSentDocumentsStateInitial value)? initial,
    TResult Function(CommercioDocsSentDocumentsStateLoading value)? loading,
    TResult Function(CommercioDocsSentDocumentsStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CommercioDocsSentDocumentsStateError
    implements CommercioDocsSentDocumentsState {
  const factory CommercioDocsSentDocumentsStateError([String? error]) =
      _$CommercioDocsSentDocumentsStateError;

  String? get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommercioDocsSentDocumentsStateErrorCopyWith<
          CommercioDocsSentDocumentsStateError>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$CommercioDocsReceivedDocumentsStateTearOff {
  const _$CommercioDocsReceivedDocumentsStateTearOff();

  CommercioDocsReceivedDocumentsStateData call(
      {required List<CommercioDoc> receivedDocuments}) {
    return CommercioDocsReceivedDocumentsStateData(
      receivedDocuments: receivedDocuments,
    );
  }

  CommercioDocsReceivedDocumentsStateInitial initial() {
    return const CommercioDocsReceivedDocumentsStateInitial();
  }

  CommercioDocsReceivedDocumentsStateLoading loading() {
    return const CommercioDocsReceivedDocumentsStateLoading();
  }

  CommercioDocsReceivedDocumentsStateError error([String? error]) {
    return CommercioDocsReceivedDocumentsStateError(
      error,
    );
  }
}

/// @nodoc
const $CommercioDocsReceivedDocumentsState =
    _$CommercioDocsReceivedDocumentsStateTearOff();

/// @nodoc
mixin _$CommercioDocsReceivedDocumentsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<CommercioDoc> receivedDocuments) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<CommercioDoc> receivedDocuments)? $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommercioDocsReceivedDocumentsStateData value) $default, {
    required TResult Function(CommercioDocsReceivedDocumentsStateInitial value)
        initial,
    required TResult Function(CommercioDocsReceivedDocumentsStateLoading value)
        loading,
    required TResult Function(CommercioDocsReceivedDocumentsStateError value)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioDocsReceivedDocumentsStateData value)? $default, {
    TResult Function(CommercioDocsReceivedDocumentsStateInitial value)? initial,
    TResult Function(CommercioDocsReceivedDocumentsStateLoading value)? loading,
    TResult Function(CommercioDocsReceivedDocumentsStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommercioDocsReceivedDocumentsStateCopyWith<$Res> {
  factory $CommercioDocsReceivedDocumentsStateCopyWith(
          CommercioDocsReceivedDocumentsState value,
          $Res Function(CommercioDocsReceivedDocumentsState) then) =
      _$CommercioDocsReceivedDocumentsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommercioDocsReceivedDocumentsStateCopyWithImpl<$Res>
    implements $CommercioDocsReceivedDocumentsStateCopyWith<$Res> {
  _$CommercioDocsReceivedDocumentsStateCopyWithImpl(this._value, this._then);

  final CommercioDocsReceivedDocumentsState _value;
  // ignore: unused_field
  final $Res Function(CommercioDocsReceivedDocumentsState) _then;
}

/// @nodoc
abstract class $CommercioDocsReceivedDocumentsStateDataCopyWith<$Res> {
  factory $CommercioDocsReceivedDocumentsStateDataCopyWith(
          CommercioDocsReceivedDocumentsStateData value,
          $Res Function(CommercioDocsReceivedDocumentsStateData) then) =
      _$CommercioDocsReceivedDocumentsStateDataCopyWithImpl<$Res>;
  $Res call({List<CommercioDoc> receivedDocuments});
}

/// @nodoc
class _$CommercioDocsReceivedDocumentsStateDataCopyWithImpl<$Res>
    extends _$CommercioDocsReceivedDocumentsStateCopyWithImpl<$Res>
    implements $CommercioDocsReceivedDocumentsStateDataCopyWith<$Res> {
  _$CommercioDocsReceivedDocumentsStateDataCopyWithImpl(
      CommercioDocsReceivedDocumentsStateData _value,
      $Res Function(CommercioDocsReceivedDocumentsStateData) _then)
      : super(
            _value, (v) => _then(v as CommercioDocsReceivedDocumentsStateData));

  @override
  CommercioDocsReceivedDocumentsStateData get _value =>
      super._value as CommercioDocsReceivedDocumentsStateData;

  @override
  $Res call({
    Object? receivedDocuments = freezed,
  }) {
    return _then(CommercioDocsReceivedDocumentsStateData(
      receivedDocuments: receivedDocuments == freezed
          ? _value.receivedDocuments
          : receivedDocuments // ignore: cast_nullable_to_non_nullable
              as List<CommercioDoc>,
    ));
  }
}

/// @nodoc

class _$CommercioDocsReceivedDocumentsStateData
    implements CommercioDocsReceivedDocumentsStateData {
  const _$CommercioDocsReceivedDocumentsStateData(
      {required this.receivedDocuments});

  @override
  final List<CommercioDoc> receivedDocuments;

  @override
  String toString() {
    return 'CommercioDocsReceivedDocumentsState(receivedDocuments: $receivedDocuments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioDocsReceivedDocumentsStateData &&
            (identical(other.receivedDocuments, receivedDocuments) ||
                const DeepCollectionEquality()
                    .equals(other.receivedDocuments, receivedDocuments)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(receivedDocuments);

  @JsonKey(ignore: true)
  @override
  $CommercioDocsReceivedDocumentsStateDataCopyWith<
          CommercioDocsReceivedDocumentsStateData>
      get copyWith => _$CommercioDocsReceivedDocumentsStateDataCopyWithImpl<
          CommercioDocsReceivedDocumentsStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<CommercioDoc> receivedDocuments) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return $default(receivedDocuments);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<CommercioDoc> receivedDocuments)? $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(receivedDocuments);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommercioDocsReceivedDocumentsStateData value) $default, {
    required TResult Function(CommercioDocsReceivedDocumentsStateInitial value)
        initial,
    required TResult Function(CommercioDocsReceivedDocumentsStateLoading value)
        loading,
    required TResult Function(CommercioDocsReceivedDocumentsStateError value)
        error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioDocsReceivedDocumentsStateData value)? $default, {
    TResult Function(CommercioDocsReceivedDocumentsStateInitial value)? initial,
    TResult Function(CommercioDocsReceivedDocumentsStateLoading value)? loading,
    TResult Function(CommercioDocsReceivedDocumentsStateError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class CommercioDocsReceivedDocumentsStateData
    implements CommercioDocsReceivedDocumentsState {
  const factory CommercioDocsReceivedDocumentsStateData(
          {required List<CommercioDoc> receivedDocuments}) =
      _$CommercioDocsReceivedDocumentsStateData;

  List<CommercioDoc> get receivedDocuments =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommercioDocsReceivedDocumentsStateDataCopyWith<
          CommercioDocsReceivedDocumentsStateData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommercioDocsReceivedDocumentsStateInitialCopyWith<$Res> {
  factory $CommercioDocsReceivedDocumentsStateInitialCopyWith(
          CommercioDocsReceivedDocumentsStateInitial value,
          $Res Function(CommercioDocsReceivedDocumentsStateInitial) then) =
      _$CommercioDocsReceivedDocumentsStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommercioDocsReceivedDocumentsStateInitialCopyWithImpl<$Res>
    extends _$CommercioDocsReceivedDocumentsStateCopyWithImpl<$Res>
    implements $CommercioDocsReceivedDocumentsStateInitialCopyWith<$Res> {
  _$CommercioDocsReceivedDocumentsStateInitialCopyWithImpl(
      CommercioDocsReceivedDocumentsStateInitial _value,
      $Res Function(CommercioDocsReceivedDocumentsStateInitial) _then)
      : super(_value,
            (v) => _then(v as CommercioDocsReceivedDocumentsStateInitial));

  @override
  CommercioDocsReceivedDocumentsStateInitial get _value =>
      super._value as CommercioDocsReceivedDocumentsStateInitial;
}

/// @nodoc

class _$CommercioDocsReceivedDocumentsStateInitial
    implements CommercioDocsReceivedDocumentsStateInitial {
  const _$CommercioDocsReceivedDocumentsStateInitial();

  @override
  String toString() {
    return 'CommercioDocsReceivedDocumentsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioDocsReceivedDocumentsStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<CommercioDoc> receivedDocuments) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<CommercioDoc> receivedDocuments)? $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommercioDocsReceivedDocumentsStateData value) $default, {
    required TResult Function(CommercioDocsReceivedDocumentsStateInitial value)
        initial,
    required TResult Function(CommercioDocsReceivedDocumentsStateLoading value)
        loading,
    required TResult Function(CommercioDocsReceivedDocumentsStateError value)
        error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioDocsReceivedDocumentsStateData value)? $default, {
    TResult Function(CommercioDocsReceivedDocumentsStateInitial value)? initial,
    TResult Function(CommercioDocsReceivedDocumentsStateLoading value)? loading,
    TResult Function(CommercioDocsReceivedDocumentsStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CommercioDocsReceivedDocumentsStateInitial
    implements CommercioDocsReceivedDocumentsState {
  const factory CommercioDocsReceivedDocumentsStateInitial() =
      _$CommercioDocsReceivedDocumentsStateInitial;
}

/// @nodoc
abstract class $CommercioDocsReceivedDocumentsStateLoadingCopyWith<$Res> {
  factory $CommercioDocsReceivedDocumentsStateLoadingCopyWith(
          CommercioDocsReceivedDocumentsStateLoading value,
          $Res Function(CommercioDocsReceivedDocumentsStateLoading) then) =
      _$CommercioDocsReceivedDocumentsStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommercioDocsReceivedDocumentsStateLoadingCopyWithImpl<$Res>
    extends _$CommercioDocsReceivedDocumentsStateCopyWithImpl<$Res>
    implements $CommercioDocsReceivedDocumentsStateLoadingCopyWith<$Res> {
  _$CommercioDocsReceivedDocumentsStateLoadingCopyWithImpl(
      CommercioDocsReceivedDocumentsStateLoading _value,
      $Res Function(CommercioDocsReceivedDocumentsStateLoading) _then)
      : super(_value,
            (v) => _then(v as CommercioDocsReceivedDocumentsStateLoading));

  @override
  CommercioDocsReceivedDocumentsStateLoading get _value =>
      super._value as CommercioDocsReceivedDocumentsStateLoading;
}

/// @nodoc

class _$CommercioDocsReceivedDocumentsStateLoading
    implements CommercioDocsReceivedDocumentsStateLoading {
  const _$CommercioDocsReceivedDocumentsStateLoading();

  @override
  String toString() {
    return 'CommercioDocsReceivedDocumentsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioDocsReceivedDocumentsStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<CommercioDoc> receivedDocuments) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<CommercioDoc> receivedDocuments)? $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommercioDocsReceivedDocumentsStateData value) $default, {
    required TResult Function(CommercioDocsReceivedDocumentsStateInitial value)
        initial,
    required TResult Function(CommercioDocsReceivedDocumentsStateLoading value)
        loading,
    required TResult Function(CommercioDocsReceivedDocumentsStateError value)
        error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioDocsReceivedDocumentsStateData value)? $default, {
    TResult Function(CommercioDocsReceivedDocumentsStateInitial value)? initial,
    TResult Function(CommercioDocsReceivedDocumentsStateLoading value)? loading,
    TResult Function(CommercioDocsReceivedDocumentsStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CommercioDocsReceivedDocumentsStateLoading
    implements CommercioDocsReceivedDocumentsState {
  const factory CommercioDocsReceivedDocumentsStateLoading() =
      _$CommercioDocsReceivedDocumentsStateLoading;
}

/// @nodoc
abstract class $CommercioDocsReceivedDocumentsStateErrorCopyWith<$Res> {
  factory $CommercioDocsReceivedDocumentsStateErrorCopyWith(
          CommercioDocsReceivedDocumentsStateError value,
          $Res Function(CommercioDocsReceivedDocumentsStateError) then) =
      _$CommercioDocsReceivedDocumentsStateErrorCopyWithImpl<$Res>;
  $Res call({String? error});
}

/// @nodoc
class _$CommercioDocsReceivedDocumentsStateErrorCopyWithImpl<$Res>
    extends _$CommercioDocsReceivedDocumentsStateCopyWithImpl<$Res>
    implements $CommercioDocsReceivedDocumentsStateErrorCopyWith<$Res> {
  _$CommercioDocsReceivedDocumentsStateErrorCopyWithImpl(
      CommercioDocsReceivedDocumentsStateError _value,
      $Res Function(CommercioDocsReceivedDocumentsStateError) _then)
      : super(_value,
            (v) => _then(v as CommercioDocsReceivedDocumentsStateError));

  @override
  CommercioDocsReceivedDocumentsStateError get _value =>
      super._value as CommercioDocsReceivedDocumentsStateError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(CommercioDocsReceivedDocumentsStateError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CommercioDocsReceivedDocumentsStateError
    implements CommercioDocsReceivedDocumentsStateError {
  const _$CommercioDocsReceivedDocumentsStateError([this.error]);

  @override
  final String? error;

  @override
  String toString() {
    return 'CommercioDocsReceivedDocumentsState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioDocsReceivedDocumentsStateError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $CommercioDocsReceivedDocumentsStateErrorCopyWith<
          CommercioDocsReceivedDocumentsStateError>
      get copyWith => _$CommercioDocsReceivedDocumentsStateErrorCopyWithImpl<
          CommercioDocsReceivedDocumentsStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<CommercioDoc> receivedDocuments) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<CommercioDoc> receivedDocuments)? $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommercioDocsReceivedDocumentsStateData value) $default, {
    required TResult Function(CommercioDocsReceivedDocumentsStateInitial value)
        initial,
    required TResult Function(CommercioDocsReceivedDocumentsStateLoading value)
        loading,
    required TResult Function(CommercioDocsReceivedDocumentsStateError value)
        error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioDocsReceivedDocumentsStateData value)? $default, {
    TResult Function(CommercioDocsReceivedDocumentsStateInitial value)? initial,
    TResult Function(CommercioDocsReceivedDocumentsStateLoading value)? loading,
    TResult Function(CommercioDocsReceivedDocumentsStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CommercioDocsReceivedDocumentsStateError
    implements CommercioDocsReceivedDocumentsState {
  const factory CommercioDocsReceivedDocumentsStateError([String? error]) =
      _$CommercioDocsReceivedDocumentsStateError;

  String? get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommercioDocsReceivedDocumentsStateErrorCopyWith<
          CommercioDocsReceivedDocumentsStateError>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$CommercioDocsSentReceiptsStateTearOff {
  const _$CommercioDocsSentReceiptsStateTearOff();

  CommercioDocsSentReceiptsStateData call(
      {required List<CommercioDocReceipt> sentReceipts}) {
    return CommercioDocsSentReceiptsStateData(
      sentReceipts: sentReceipts,
    );
  }

  CommercioDocsSentReceiptsStateInitial initial() {
    return const CommercioDocsSentReceiptsStateInitial();
  }

  CommercioDocsSentReceiptsStateLoading loading() {
    return const CommercioDocsSentReceiptsStateLoading();
  }

  CommercioDocsSentReceiptsStateError error([String? error]) {
    return CommercioDocsSentReceiptsStateError(
      error,
    );
  }
}

/// @nodoc
const $CommercioDocsSentReceiptsState =
    _$CommercioDocsSentReceiptsStateTearOff();

/// @nodoc
mixin _$CommercioDocsSentReceiptsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<CommercioDocReceipt> sentReceipts) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<CommercioDocReceipt> sentReceipts)? $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommercioDocsSentReceiptsStateData value) $default, {
    required TResult Function(CommercioDocsSentReceiptsStateInitial value)
        initial,
    required TResult Function(CommercioDocsSentReceiptsStateLoading value)
        loading,
    required TResult Function(CommercioDocsSentReceiptsStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioDocsSentReceiptsStateData value)? $default, {
    TResult Function(CommercioDocsSentReceiptsStateInitial value)? initial,
    TResult Function(CommercioDocsSentReceiptsStateLoading value)? loading,
    TResult Function(CommercioDocsSentReceiptsStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommercioDocsSentReceiptsStateCopyWith<$Res> {
  factory $CommercioDocsSentReceiptsStateCopyWith(
          CommercioDocsSentReceiptsState value,
          $Res Function(CommercioDocsSentReceiptsState) then) =
      _$CommercioDocsSentReceiptsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommercioDocsSentReceiptsStateCopyWithImpl<$Res>
    implements $CommercioDocsSentReceiptsStateCopyWith<$Res> {
  _$CommercioDocsSentReceiptsStateCopyWithImpl(this._value, this._then);

  final CommercioDocsSentReceiptsState _value;
  // ignore: unused_field
  final $Res Function(CommercioDocsSentReceiptsState) _then;
}

/// @nodoc
abstract class $CommercioDocsSentReceiptsStateDataCopyWith<$Res> {
  factory $CommercioDocsSentReceiptsStateDataCopyWith(
          CommercioDocsSentReceiptsStateData value,
          $Res Function(CommercioDocsSentReceiptsStateData) then) =
      _$CommercioDocsSentReceiptsStateDataCopyWithImpl<$Res>;
  $Res call({List<CommercioDocReceipt> sentReceipts});
}

/// @nodoc
class _$CommercioDocsSentReceiptsStateDataCopyWithImpl<$Res>
    extends _$CommercioDocsSentReceiptsStateCopyWithImpl<$Res>
    implements $CommercioDocsSentReceiptsStateDataCopyWith<$Res> {
  _$CommercioDocsSentReceiptsStateDataCopyWithImpl(
      CommercioDocsSentReceiptsStateData _value,
      $Res Function(CommercioDocsSentReceiptsStateData) _then)
      : super(_value, (v) => _then(v as CommercioDocsSentReceiptsStateData));

  @override
  CommercioDocsSentReceiptsStateData get _value =>
      super._value as CommercioDocsSentReceiptsStateData;

  @override
  $Res call({
    Object? sentReceipts = freezed,
  }) {
    return _then(CommercioDocsSentReceiptsStateData(
      sentReceipts: sentReceipts == freezed
          ? _value.sentReceipts
          : sentReceipts // ignore: cast_nullable_to_non_nullable
              as List<CommercioDocReceipt>,
    ));
  }
}

/// @nodoc

class _$CommercioDocsSentReceiptsStateData
    implements CommercioDocsSentReceiptsStateData {
  const _$CommercioDocsSentReceiptsStateData({required this.sentReceipts});

  @override
  final List<CommercioDocReceipt> sentReceipts;

  @override
  String toString() {
    return 'CommercioDocsSentReceiptsState(sentReceipts: $sentReceipts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioDocsSentReceiptsStateData &&
            (identical(other.sentReceipts, sentReceipts) ||
                const DeepCollectionEquality()
                    .equals(other.sentReceipts, sentReceipts)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(sentReceipts);

  @JsonKey(ignore: true)
  @override
  $CommercioDocsSentReceiptsStateDataCopyWith<
          CommercioDocsSentReceiptsStateData>
      get copyWith => _$CommercioDocsSentReceiptsStateDataCopyWithImpl<
          CommercioDocsSentReceiptsStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<CommercioDocReceipt> sentReceipts) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return $default(sentReceipts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<CommercioDocReceipt> sentReceipts)? $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(sentReceipts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommercioDocsSentReceiptsStateData value) $default, {
    required TResult Function(CommercioDocsSentReceiptsStateInitial value)
        initial,
    required TResult Function(CommercioDocsSentReceiptsStateLoading value)
        loading,
    required TResult Function(CommercioDocsSentReceiptsStateError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioDocsSentReceiptsStateData value)? $default, {
    TResult Function(CommercioDocsSentReceiptsStateInitial value)? initial,
    TResult Function(CommercioDocsSentReceiptsStateLoading value)? loading,
    TResult Function(CommercioDocsSentReceiptsStateError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class CommercioDocsSentReceiptsStateData
    implements CommercioDocsSentReceiptsState {
  const factory CommercioDocsSentReceiptsStateData(
          {required List<CommercioDocReceipt> sentReceipts}) =
      _$CommercioDocsSentReceiptsStateData;

  List<CommercioDocReceipt> get sentReceipts =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommercioDocsSentReceiptsStateDataCopyWith<
          CommercioDocsSentReceiptsStateData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommercioDocsSentReceiptsStateInitialCopyWith<$Res> {
  factory $CommercioDocsSentReceiptsStateInitialCopyWith(
          CommercioDocsSentReceiptsStateInitial value,
          $Res Function(CommercioDocsSentReceiptsStateInitial) then) =
      _$CommercioDocsSentReceiptsStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommercioDocsSentReceiptsStateInitialCopyWithImpl<$Res>
    extends _$CommercioDocsSentReceiptsStateCopyWithImpl<$Res>
    implements $CommercioDocsSentReceiptsStateInitialCopyWith<$Res> {
  _$CommercioDocsSentReceiptsStateInitialCopyWithImpl(
      CommercioDocsSentReceiptsStateInitial _value,
      $Res Function(CommercioDocsSentReceiptsStateInitial) _then)
      : super(_value, (v) => _then(v as CommercioDocsSentReceiptsStateInitial));

  @override
  CommercioDocsSentReceiptsStateInitial get _value =>
      super._value as CommercioDocsSentReceiptsStateInitial;
}

/// @nodoc

class _$CommercioDocsSentReceiptsStateInitial
    implements CommercioDocsSentReceiptsStateInitial {
  const _$CommercioDocsSentReceiptsStateInitial();

  @override
  String toString() {
    return 'CommercioDocsSentReceiptsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioDocsSentReceiptsStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<CommercioDocReceipt> sentReceipts) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<CommercioDocReceipt> sentReceipts)? $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommercioDocsSentReceiptsStateData value) $default, {
    required TResult Function(CommercioDocsSentReceiptsStateInitial value)
        initial,
    required TResult Function(CommercioDocsSentReceiptsStateLoading value)
        loading,
    required TResult Function(CommercioDocsSentReceiptsStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioDocsSentReceiptsStateData value)? $default, {
    TResult Function(CommercioDocsSentReceiptsStateInitial value)? initial,
    TResult Function(CommercioDocsSentReceiptsStateLoading value)? loading,
    TResult Function(CommercioDocsSentReceiptsStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CommercioDocsSentReceiptsStateInitial
    implements CommercioDocsSentReceiptsState {
  const factory CommercioDocsSentReceiptsStateInitial() =
      _$CommercioDocsSentReceiptsStateInitial;
}

/// @nodoc
abstract class $CommercioDocsSentReceiptsStateLoadingCopyWith<$Res> {
  factory $CommercioDocsSentReceiptsStateLoadingCopyWith(
          CommercioDocsSentReceiptsStateLoading value,
          $Res Function(CommercioDocsSentReceiptsStateLoading) then) =
      _$CommercioDocsSentReceiptsStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommercioDocsSentReceiptsStateLoadingCopyWithImpl<$Res>
    extends _$CommercioDocsSentReceiptsStateCopyWithImpl<$Res>
    implements $CommercioDocsSentReceiptsStateLoadingCopyWith<$Res> {
  _$CommercioDocsSentReceiptsStateLoadingCopyWithImpl(
      CommercioDocsSentReceiptsStateLoading _value,
      $Res Function(CommercioDocsSentReceiptsStateLoading) _then)
      : super(_value, (v) => _then(v as CommercioDocsSentReceiptsStateLoading));

  @override
  CommercioDocsSentReceiptsStateLoading get _value =>
      super._value as CommercioDocsSentReceiptsStateLoading;
}

/// @nodoc

class _$CommercioDocsSentReceiptsStateLoading
    implements CommercioDocsSentReceiptsStateLoading {
  const _$CommercioDocsSentReceiptsStateLoading();

  @override
  String toString() {
    return 'CommercioDocsSentReceiptsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioDocsSentReceiptsStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<CommercioDocReceipt> sentReceipts) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<CommercioDocReceipt> sentReceipts)? $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommercioDocsSentReceiptsStateData value) $default, {
    required TResult Function(CommercioDocsSentReceiptsStateInitial value)
        initial,
    required TResult Function(CommercioDocsSentReceiptsStateLoading value)
        loading,
    required TResult Function(CommercioDocsSentReceiptsStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioDocsSentReceiptsStateData value)? $default, {
    TResult Function(CommercioDocsSentReceiptsStateInitial value)? initial,
    TResult Function(CommercioDocsSentReceiptsStateLoading value)? loading,
    TResult Function(CommercioDocsSentReceiptsStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CommercioDocsSentReceiptsStateLoading
    implements CommercioDocsSentReceiptsState {
  const factory CommercioDocsSentReceiptsStateLoading() =
      _$CommercioDocsSentReceiptsStateLoading;
}

/// @nodoc
abstract class $CommercioDocsSentReceiptsStateErrorCopyWith<$Res> {
  factory $CommercioDocsSentReceiptsStateErrorCopyWith(
          CommercioDocsSentReceiptsStateError value,
          $Res Function(CommercioDocsSentReceiptsStateError) then) =
      _$CommercioDocsSentReceiptsStateErrorCopyWithImpl<$Res>;
  $Res call({String? error});
}

/// @nodoc
class _$CommercioDocsSentReceiptsStateErrorCopyWithImpl<$Res>
    extends _$CommercioDocsSentReceiptsStateCopyWithImpl<$Res>
    implements $CommercioDocsSentReceiptsStateErrorCopyWith<$Res> {
  _$CommercioDocsSentReceiptsStateErrorCopyWithImpl(
      CommercioDocsSentReceiptsStateError _value,
      $Res Function(CommercioDocsSentReceiptsStateError) _then)
      : super(_value, (v) => _then(v as CommercioDocsSentReceiptsStateError));

  @override
  CommercioDocsSentReceiptsStateError get _value =>
      super._value as CommercioDocsSentReceiptsStateError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(CommercioDocsSentReceiptsStateError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CommercioDocsSentReceiptsStateError
    implements CommercioDocsSentReceiptsStateError {
  const _$CommercioDocsSentReceiptsStateError([this.error]);

  @override
  final String? error;

  @override
  String toString() {
    return 'CommercioDocsSentReceiptsState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioDocsSentReceiptsStateError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $CommercioDocsSentReceiptsStateErrorCopyWith<
          CommercioDocsSentReceiptsStateError>
      get copyWith => _$CommercioDocsSentReceiptsStateErrorCopyWithImpl<
          CommercioDocsSentReceiptsStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<CommercioDocReceipt> sentReceipts) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<CommercioDocReceipt> sentReceipts)? $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommercioDocsSentReceiptsStateData value) $default, {
    required TResult Function(CommercioDocsSentReceiptsStateInitial value)
        initial,
    required TResult Function(CommercioDocsSentReceiptsStateLoading value)
        loading,
    required TResult Function(CommercioDocsSentReceiptsStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioDocsSentReceiptsStateData value)? $default, {
    TResult Function(CommercioDocsSentReceiptsStateInitial value)? initial,
    TResult Function(CommercioDocsSentReceiptsStateLoading value)? loading,
    TResult Function(CommercioDocsSentReceiptsStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CommercioDocsSentReceiptsStateError
    implements CommercioDocsSentReceiptsState {
  const factory CommercioDocsSentReceiptsStateError([String? error]) =
      _$CommercioDocsSentReceiptsStateError;

  String? get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommercioDocsSentReceiptsStateErrorCopyWith<
          CommercioDocsSentReceiptsStateError>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$CommercioDocsReceivedReceiptsStateTearOff {
  const _$CommercioDocsReceivedReceiptsStateTearOff();

  CommercioDocsReceivedReceiptsStateData call(
      {required List<CommercioDocReceipt> receivedReceipts}) {
    return CommercioDocsReceivedReceiptsStateData(
      receivedReceipts: receivedReceipts,
    );
  }

  CommercioDocsReceivedReceiptsStateInitial initial() {
    return const CommercioDocsReceivedReceiptsStateInitial();
  }

  CommercioDocsReceivedReceiptsStateLoading loading() {
    return const CommercioDocsReceivedReceiptsStateLoading();
  }

  CommercioDocsReceivedReceiptsStateError error([String? error]) {
    return CommercioDocsReceivedReceiptsStateError(
      error,
    );
  }
}

/// @nodoc
const $CommercioDocsReceivedReceiptsState =
    _$CommercioDocsReceivedReceiptsStateTearOff();

/// @nodoc
mixin _$CommercioDocsReceivedReceiptsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<CommercioDocReceipt> receivedReceipts) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<CommercioDocReceipt> receivedReceipts)? $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommercioDocsReceivedReceiptsStateData value) $default, {
    required TResult Function(CommercioDocsReceivedReceiptsStateInitial value)
        initial,
    required TResult Function(CommercioDocsReceivedReceiptsStateLoading value)
        loading,
    required TResult Function(CommercioDocsReceivedReceiptsStateError value)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioDocsReceivedReceiptsStateData value)? $default, {
    TResult Function(CommercioDocsReceivedReceiptsStateInitial value)? initial,
    TResult Function(CommercioDocsReceivedReceiptsStateLoading value)? loading,
    TResult Function(CommercioDocsReceivedReceiptsStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommercioDocsReceivedReceiptsStateCopyWith<$Res> {
  factory $CommercioDocsReceivedReceiptsStateCopyWith(
          CommercioDocsReceivedReceiptsState value,
          $Res Function(CommercioDocsReceivedReceiptsState) then) =
      _$CommercioDocsReceivedReceiptsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommercioDocsReceivedReceiptsStateCopyWithImpl<$Res>
    implements $CommercioDocsReceivedReceiptsStateCopyWith<$Res> {
  _$CommercioDocsReceivedReceiptsStateCopyWithImpl(this._value, this._then);

  final CommercioDocsReceivedReceiptsState _value;
  // ignore: unused_field
  final $Res Function(CommercioDocsReceivedReceiptsState) _then;
}

/// @nodoc
abstract class $CommercioDocsReceivedReceiptsStateDataCopyWith<$Res> {
  factory $CommercioDocsReceivedReceiptsStateDataCopyWith(
          CommercioDocsReceivedReceiptsStateData value,
          $Res Function(CommercioDocsReceivedReceiptsStateData) then) =
      _$CommercioDocsReceivedReceiptsStateDataCopyWithImpl<$Res>;
  $Res call({List<CommercioDocReceipt> receivedReceipts});
}

/// @nodoc
class _$CommercioDocsReceivedReceiptsStateDataCopyWithImpl<$Res>
    extends _$CommercioDocsReceivedReceiptsStateCopyWithImpl<$Res>
    implements $CommercioDocsReceivedReceiptsStateDataCopyWith<$Res> {
  _$CommercioDocsReceivedReceiptsStateDataCopyWithImpl(
      CommercioDocsReceivedReceiptsStateData _value,
      $Res Function(CommercioDocsReceivedReceiptsStateData) _then)
      : super(
            _value, (v) => _then(v as CommercioDocsReceivedReceiptsStateData));

  @override
  CommercioDocsReceivedReceiptsStateData get _value =>
      super._value as CommercioDocsReceivedReceiptsStateData;

  @override
  $Res call({
    Object? receivedReceipts = freezed,
  }) {
    return _then(CommercioDocsReceivedReceiptsStateData(
      receivedReceipts: receivedReceipts == freezed
          ? _value.receivedReceipts
          : receivedReceipts // ignore: cast_nullable_to_non_nullable
              as List<CommercioDocReceipt>,
    ));
  }
}

/// @nodoc

class _$CommercioDocsReceivedReceiptsStateData
    implements CommercioDocsReceivedReceiptsStateData {
  const _$CommercioDocsReceivedReceiptsStateData(
      {required this.receivedReceipts});

  @override
  final List<CommercioDocReceipt> receivedReceipts;

  @override
  String toString() {
    return 'CommercioDocsReceivedReceiptsState(receivedReceipts: $receivedReceipts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioDocsReceivedReceiptsStateData &&
            (identical(other.receivedReceipts, receivedReceipts) ||
                const DeepCollectionEquality()
                    .equals(other.receivedReceipts, receivedReceipts)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(receivedReceipts);

  @JsonKey(ignore: true)
  @override
  $CommercioDocsReceivedReceiptsStateDataCopyWith<
          CommercioDocsReceivedReceiptsStateData>
      get copyWith => _$CommercioDocsReceivedReceiptsStateDataCopyWithImpl<
          CommercioDocsReceivedReceiptsStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<CommercioDocReceipt> receivedReceipts) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return $default(receivedReceipts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<CommercioDocReceipt> receivedReceipts)? $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(receivedReceipts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommercioDocsReceivedReceiptsStateData value) $default, {
    required TResult Function(CommercioDocsReceivedReceiptsStateInitial value)
        initial,
    required TResult Function(CommercioDocsReceivedReceiptsStateLoading value)
        loading,
    required TResult Function(CommercioDocsReceivedReceiptsStateError value)
        error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioDocsReceivedReceiptsStateData value)? $default, {
    TResult Function(CommercioDocsReceivedReceiptsStateInitial value)? initial,
    TResult Function(CommercioDocsReceivedReceiptsStateLoading value)? loading,
    TResult Function(CommercioDocsReceivedReceiptsStateError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class CommercioDocsReceivedReceiptsStateData
    implements CommercioDocsReceivedReceiptsState {
  const factory CommercioDocsReceivedReceiptsStateData(
          {required List<CommercioDocReceipt> receivedReceipts}) =
      _$CommercioDocsReceivedReceiptsStateData;

  List<CommercioDocReceipt> get receivedReceipts =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommercioDocsReceivedReceiptsStateDataCopyWith<
          CommercioDocsReceivedReceiptsStateData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommercioDocsReceivedReceiptsStateInitialCopyWith<$Res> {
  factory $CommercioDocsReceivedReceiptsStateInitialCopyWith(
          CommercioDocsReceivedReceiptsStateInitial value,
          $Res Function(CommercioDocsReceivedReceiptsStateInitial) then) =
      _$CommercioDocsReceivedReceiptsStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommercioDocsReceivedReceiptsStateInitialCopyWithImpl<$Res>
    extends _$CommercioDocsReceivedReceiptsStateCopyWithImpl<$Res>
    implements $CommercioDocsReceivedReceiptsStateInitialCopyWith<$Res> {
  _$CommercioDocsReceivedReceiptsStateInitialCopyWithImpl(
      CommercioDocsReceivedReceiptsStateInitial _value,
      $Res Function(CommercioDocsReceivedReceiptsStateInitial) _then)
      : super(_value,
            (v) => _then(v as CommercioDocsReceivedReceiptsStateInitial));

  @override
  CommercioDocsReceivedReceiptsStateInitial get _value =>
      super._value as CommercioDocsReceivedReceiptsStateInitial;
}

/// @nodoc

class _$CommercioDocsReceivedReceiptsStateInitial
    implements CommercioDocsReceivedReceiptsStateInitial {
  const _$CommercioDocsReceivedReceiptsStateInitial();

  @override
  String toString() {
    return 'CommercioDocsReceivedReceiptsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioDocsReceivedReceiptsStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<CommercioDocReceipt> receivedReceipts) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<CommercioDocReceipt> receivedReceipts)? $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommercioDocsReceivedReceiptsStateData value) $default, {
    required TResult Function(CommercioDocsReceivedReceiptsStateInitial value)
        initial,
    required TResult Function(CommercioDocsReceivedReceiptsStateLoading value)
        loading,
    required TResult Function(CommercioDocsReceivedReceiptsStateError value)
        error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioDocsReceivedReceiptsStateData value)? $default, {
    TResult Function(CommercioDocsReceivedReceiptsStateInitial value)? initial,
    TResult Function(CommercioDocsReceivedReceiptsStateLoading value)? loading,
    TResult Function(CommercioDocsReceivedReceiptsStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CommercioDocsReceivedReceiptsStateInitial
    implements CommercioDocsReceivedReceiptsState {
  const factory CommercioDocsReceivedReceiptsStateInitial() =
      _$CommercioDocsReceivedReceiptsStateInitial;
}

/// @nodoc
abstract class $CommercioDocsReceivedReceiptsStateLoadingCopyWith<$Res> {
  factory $CommercioDocsReceivedReceiptsStateLoadingCopyWith(
          CommercioDocsReceivedReceiptsStateLoading value,
          $Res Function(CommercioDocsReceivedReceiptsStateLoading) then) =
      _$CommercioDocsReceivedReceiptsStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommercioDocsReceivedReceiptsStateLoadingCopyWithImpl<$Res>
    extends _$CommercioDocsReceivedReceiptsStateCopyWithImpl<$Res>
    implements $CommercioDocsReceivedReceiptsStateLoadingCopyWith<$Res> {
  _$CommercioDocsReceivedReceiptsStateLoadingCopyWithImpl(
      CommercioDocsReceivedReceiptsStateLoading _value,
      $Res Function(CommercioDocsReceivedReceiptsStateLoading) _then)
      : super(_value,
            (v) => _then(v as CommercioDocsReceivedReceiptsStateLoading));

  @override
  CommercioDocsReceivedReceiptsStateLoading get _value =>
      super._value as CommercioDocsReceivedReceiptsStateLoading;
}

/// @nodoc

class _$CommercioDocsReceivedReceiptsStateLoading
    implements CommercioDocsReceivedReceiptsStateLoading {
  const _$CommercioDocsReceivedReceiptsStateLoading();

  @override
  String toString() {
    return 'CommercioDocsReceivedReceiptsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioDocsReceivedReceiptsStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<CommercioDocReceipt> receivedReceipts) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<CommercioDocReceipt> receivedReceipts)? $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommercioDocsReceivedReceiptsStateData value) $default, {
    required TResult Function(CommercioDocsReceivedReceiptsStateInitial value)
        initial,
    required TResult Function(CommercioDocsReceivedReceiptsStateLoading value)
        loading,
    required TResult Function(CommercioDocsReceivedReceiptsStateError value)
        error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioDocsReceivedReceiptsStateData value)? $default, {
    TResult Function(CommercioDocsReceivedReceiptsStateInitial value)? initial,
    TResult Function(CommercioDocsReceivedReceiptsStateLoading value)? loading,
    TResult Function(CommercioDocsReceivedReceiptsStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CommercioDocsReceivedReceiptsStateLoading
    implements CommercioDocsReceivedReceiptsState {
  const factory CommercioDocsReceivedReceiptsStateLoading() =
      _$CommercioDocsReceivedReceiptsStateLoading;
}

/// @nodoc
abstract class $CommercioDocsReceivedReceiptsStateErrorCopyWith<$Res> {
  factory $CommercioDocsReceivedReceiptsStateErrorCopyWith(
          CommercioDocsReceivedReceiptsStateError value,
          $Res Function(CommercioDocsReceivedReceiptsStateError) then) =
      _$CommercioDocsReceivedReceiptsStateErrorCopyWithImpl<$Res>;
  $Res call({String? error});
}

/// @nodoc
class _$CommercioDocsReceivedReceiptsStateErrorCopyWithImpl<$Res>
    extends _$CommercioDocsReceivedReceiptsStateCopyWithImpl<$Res>
    implements $CommercioDocsReceivedReceiptsStateErrorCopyWith<$Res> {
  _$CommercioDocsReceivedReceiptsStateErrorCopyWithImpl(
      CommercioDocsReceivedReceiptsStateError _value,
      $Res Function(CommercioDocsReceivedReceiptsStateError) _then)
      : super(
            _value, (v) => _then(v as CommercioDocsReceivedReceiptsStateError));

  @override
  CommercioDocsReceivedReceiptsStateError get _value =>
      super._value as CommercioDocsReceivedReceiptsStateError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(CommercioDocsReceivedReceiptsStateError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CommercioDocsReceivedReceiptsStateError
    implements CommercioDocsReceivedReceiptsStateError {
  const _$CommercioDocsReceivedReceiptsStateError([this.error]);

  @override
  final String? error;

  @override
  String toString() {
    return 'CommercioDocsReceivedReceiptsState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioDocsReceivedReceiptsStateError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $CommercioDocsReceivedReceiptsStateErrorCopyWith<
          CommercioDocsReceivedReceiptsStateError>
      get copyWith => _$CommercioDocsReceivedReceiptsStateErrorCopyWithImpl<
          CommercioDocsReceivedReceiptsStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<CommercioDocReceipt> receivedReceipts) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<CommercioDocReceipt> receivedReceipts)? $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommercioDocsReceivedReceiptsStateData value) $default, {
    required TResult Function(CommercioDocsReceivedReceiptsStateInitial value)
        initial,
    required TResult Function(CommercioDocsReceivedReceiptsStateLoading value)
        loading,
    required TResult Function(CommercioDocsReceivedReceiptsStateError value)
        error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioDocsReceivedReceiptsStateData value)? $default, {
    TResult Function(CommercioDocsReceivedReceiptsStateInitial value)? initial,
    TResult Function(CommercioDocsReceivedReceiptsStateLoading value)? loading,
    TResult Function(CommercioDocsReceivedReceiptsStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CommercioDocsReceivedReceiptsStateError
    implements CommercioDocsReceivedReceiptsState {
  const factory CommercioDocsReceivedReceiptsStateError([String? error]) =
      _$CommercioDocsReceivedReceiptsStateError;

  String? get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommercioDocsReceivedReceiptsStateErrorCopyWith<
          CommercioDocsReceivedReceiptsStateError>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$CommercioDocsEncDataStateTearOff {
  const _$CommercioDocsEncDataStateTearOff();

  CommercioDocsEncDataStateData call(
      {required Map<CommercioEncryptedData, bool> encryptedData}) {
    return CommercioDocsEncDataStateData(
      encryptedData: encryptedData,
    );
  }

  CommercioDocsEncDataStateInitial initial(
      {required Map<CommercioEncryptedData, bool> encryptedData}) {
    return CommercioDocsEncDataStateInitial(
      encryptedData: encryptedData,
    );
  }

  CommercioDocsEncDataStateLoading loading() {
    return const CommercioDocsEncDataStateLoading();
  }

  CommercioDocsEncDataStateError error([String? error]) {
    return CommercioDocsEncDataStateError(
      error,
    );
  }
}

/// @nodoc
const $CommercioDocsEncDataState = _$CommercioDocsEncDataStateTearOff();

/// @nodoc
mixin _$CommercioDocsEncDataState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Map<CommercioEncryptedData, bool> encryptedData)
        $default, {
    required TResult Function(Map<CommercioEncryptedData, bool> encryptedData)
        initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Map<CommercioEncryptedData, bool> encryptedData)?
        $default, {
    TResult Function(Map<CommercioEncryptedData, bool> encryptedData)? initial,
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommercioDocsEncDataStateData value) $default, {
    required TResult Function(CommercioDocsEncDataStateInitial value) initial,
    required TResult Function(CommercioDocsEncDataStateLoading value) loading,
    required TResult Function(CommercioDocsEncDataStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioDocsEncDataStateData value)? $default, {
    TResult Function(CommercioDocsEncDataStateInitial value)? initial,
    TResult Function(CommercioDocsEncDataStateLoading value)? loading,
    TResult Function(CommercioDocsEncDataStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommercioDocsEncDataStateCopyWith<$Res> {
  factory $CommercioDocsEncDataStateCopyWith(CommercioDocsEncDataState value,
          $Res Function(CommercioDocsEncDataState) then) =
      _$CommercioDocsEncDataStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommercioDocsEncDataStateCopyWithImpl<$Res>
    implements $CommercioDocsEncDataStateCopyWith<$Res> {
  _$CommercioDocsEncDataStateCopyWithImpl(this._value, this._then);

  final CommercioDocsEncDataState _value;
  // ignore: unused_field
  final $Res Function(CommercioDocsEncDataState) _then;
}

/// @nodoc
abstract class $CommercioDocsEncDataStateDataCopyWith<$Res> {
  factory $CommercioDocsEncDataStateDataCopyWith(
          CommercioDocsEncDataStateData value,
          $Res Function(CommercioDocsEncDataStateData) then) =
      _$CommercioDocsEncDataStateDataCopyWithImpl<$Res>;
  $Res call({Map<CommercioEncryptedData, bool> encryptedData});
}

/// @nodoc
class _$CommercioDocsEncDataStateDataCopyWithImpl<$Res>
    extends _$CommercioDocsEncDataStateCopyWithImpl<$Res>
    implements $CommercioDocsEncDataStateDataCopyWith<$Res> {
  _$CommercioDocsEncDataStateDataCopyWithImpl(
      CommercioDocsEncDataStateData _value,
      $Res Function(CommercioDocsEncDataStateData) _then)
      : super(_value, (v) => _then(v as CommercioDocsEncDataStateData));

  @override
  CommercioDocsEncDataStateData get _value =>
      super._value as CommercioDocsEncDataStateData;

  @override
  $Res call({
    Object? encryptedData = freezed,
  }) {
    return _then(CommercioDocsEncDataStateData(
      encryptedData: encryptedData == freezed
          ? _value.encryptedData
          : encryptedData // ignore: cast_nullable_to_non_nullable
              as Map<CommercioEncryptedData, bool>,
    ));
  }
}

/// @nodoc

class _$CommercioDocsEncDataStateData implements CommercioDocsEncDataStateData {
  const _$CommercioDocsEncDataStateData({required this.encryptedData});

  @override
  final Map<CommercioEncryptedData, bool> encryptedData;

  @override
  String toString() {
    return 'CommercioDocsEncDataState(encryptedData: $encryptedData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioDocsEncDataStateData &&
            (identical(other.encryptedData, encryptedData) ||
                const DeepCollectionEquality()
                    .equals(other.encryptedData, encryptedData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(encryptedData);

  @JsonKey(ignore: true)
  @override
  $CommercioDocsEncDataStateDataCopyWith<CommercioDocsEncDataStateData>
      get copyWith => _$CommercioDocsEncDataStateDataCopyWithImpl<
          CommercioDocsEncDataStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Map<CommercioEncryptedData, bool> encryptedData)
        $default, {
    required TResult Function(Map<CommercioEncryptedData, bool> encryptedData)
        initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return $default(encryptedData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Map<CommercioEncryptedData, bool> encryptedData)?
        $default, {
    TResult Function(Map<CommercioEncryptedData, bool> encryptedData)? initial,
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(encryptedData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommercioDocsEncDataStateData value) $default, {
    required TResult Function(CommercioDocsEncDataStateInitial value) initial,
    required TResult Function(CommercioDocsEncDataStateLoading value) loading,
    required TResult Function(CommercioDocsEncDataStateError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioDocsEncDataStateData value)? $default, {
    TResult Function(CommercioDocsEncDataStateInitial value)? initial,
    TResult Function(CommercioDocsEncDataStateLoading value)? loading,
    TResult Function(CommercioDocsEncDataStateError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class CommercioDocsEncDataStateData
    implements CommercioDocsEncDataState {
  const factory CommercioDocsEncDataStateData(
          {required Map<CommercioEncryptedData, bool> encryptedData}) =
      _$CommercioDocsEncDataStateData;

  Map<CommercioEncryptedData, bool> get encryptedData =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommercioDocsEncDataStateDataCopyWith<CommercioDocsEncDataStateData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommercioDocsEncDataStateInitialCopyWith<$Res> {
  factory $CommercioDocsEncDataStateInitialCopyWith(
          CommercioDocsEncDataStateInitial value,
          $Res Function(CommercioDocsEncDataStateInitial) then) =
      _$CommercioDocsEncDataStateInitialCopyWithImpl<$Res>;
  $Res call({Map<CommercioEncryptedData, bool> encryptedData});
}

/// @nodoc
class _$CommercioDocsEncDataStateInitialCopyWithImpl<$Res>
    extends _$CommercioDocsEncDataStateCopyWithImpl<$Res>
    implements $CommercioDocsEncDataStateInitialCopyWith<$Res> {
  _$CommercioDocsEncDataStateInitialCopyWithImpl(
      CommercioDocsEncDataStateInitial _value,
      $Res Function(CommercioDocsEncDataStateInitial) _then)
      : super(_value, (v) => _then(v as CommercioDocsEncDataStateInitial));

  @override
  CommercioDocsEncDataStateInitial get _value =>
      super._value as CommercioDocsEncDataStateInitial;

  @override
  $Res call({
    Object? encryptedData = freezed,
  }) {
    return _then(CommercioDocsEncDataStateInitial(
      encryptedData: encryptedData == freezed
          ? _value.encryptedData
          : encryptedData // ignore: cast_nullable_to_non_nullable
              as Map<CommercioEncryptedData, bool>,
    ));
  }
}

/// @nodoc

class _$CommercioDocsEncDataStateInitial
    implements CommercioDocsEncDataStateInitial {
  const _$CommercioDocsEncDataStateInitial({required this.encryptedData});

  @override
  final Map<CommercioEncryptedData, bool> encryptedData;

  @override
  String toString() {
    return 'CommercioDocsEncDataState.initial(encryptedData: $encryptedData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioDocsEncDataStateInitial &&
            (identical(other.encryptedData, encryptedData) ||
                const DeepCollectionEquality()
                    .equals(other.encryptedData, encryptedData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(encryptedData);

  @JsonKey(ignore: true)
  @override
  $CommercioDocsEncDataStateInitialCopyWith<CommercioDocsEncDataStateInitial>
      get copyWith => _$CommercioDocsEncDataStateInitialCopyWithImpl<
          CommercioDocsEncDataStateInitial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Map<CommercioEncryptedData, bool> encryptedData)
        $default, {
    required TResult Function(Map<CommercioEncryptedData, bool> encryptedData)
        initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return initial(encryptedData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Map<CommercioEncryptedData, bool> encryptedData)?
        $default, {
    TResult Function(Map<CommercioEncryptedData, bool> encryptedData)? initial,
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(encryptedData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommercioDocsEncDataStateData value) $default, {
    required TResult Function(CommercioDocsEncDataStateInitial value) initial,
    required TResult Function(CommercioDocsEncDataStateLoading value) loading,
    required TResult Function(CommercioDocsEncDataStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioDocsEncDataStateData value)? $default, {
    TResult Function(CommercioDocsEncDataStateInitial value)? initial,
    TResult Function(CommercioDocsEncDataStateLoading value)? loading,
    TResult Function(CommercioDocsEncDataStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CommercioDocsEncDataStateInitial
    implements CommercioDocsEncDataState {
  const factory CommercioDocsEncDataStateInitial(
          {required Map<CommercioEncryptedData, bool> encryptedData}) =
      _$CommercioDocsEncDataStateInitial;

  Map<CommercioEncryptedData, bool> get encryptedData =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommercioDocsEncDataStateInitialCopyWith<CommercioDocsEncDataStateInitial>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommercioDocsEncDataStateLoadingCopyWith<$Res> {
  factory $CommercioDocsEncDataStateLoadingCopyWith(
          CommercioDocsEncDataStateLoading value,
          $Res Function(CommercioDocsEncDataStateLoading) then) =
      _$CommercioDocsEncDataStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommercioDocsEncDataStateLoadingCopyWithImpl<$Res>
    extends _$CommercioDocsEncDataStateCopyWithImpl<$Res>
    implements $CommercioDocsEncDataStateLoadingCopyWith<$Res> {
  _$CommercioDocsEncDataStateLoadingCopyWithImpl(
      CommercioDocsEncDataStateLoading _value,
      $Res Function(CommercioDocsEncDataStateLoading) _then)
      : super(_value, (v) => _then(v as CommercioDocsEncDataStateLoading));

  @override
  CommercioDocsEncDataStateLoading get _value =>
      super._value as CommercioDocsEncDataStateLoading;
}

/// @nodoc

class _$CommercioDocsEncDataStateLoading
    implements CommercioDocsEncDataStateLoading {
  const _$CommercioDocsEncDataStateLoading();

  @override
  String toString() {
    return 'CommercioDocsEncDataState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioDocsEncDataStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Map<CommercioEncryptedData, bool> encryptedData)
        $default, {
    required TResult Function(Map<CommercioEncryptedData, bool> encryptedData)
        initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Map<CommercioEncryptedData, bool> encryptedData)?
        $default, {
    TResult Function(Map<CommercioEncryptedData, bool> encryptedData)? initial,
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommercioDocsEncDataStateData value) $default, {
    required TResult Function(CommercioDocsEncDataStateInitial value) initial,
    required TResult Function(CommercioDocsEncDataStateLoading value) loading,
    required TResult Function(CommercioDocsEncDataStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioDocsEncDataStateData value)? $default, {
    TResult Function(CommercioDocsEncDataStateInitial value)? initial,
    TResult Function(CommercioDocsEncDataStateLoading value)? loading,
    TResult Function(CommercioDocsEncDataStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CommercioDocsEncDataStateLoading
    implements CommercioDocsEncDataState {
  const factory CommercioDocsEncDataStateLoading() =
      _$CommercioDocsEncDataStateLoading;
}

/// @nodoc
abstract class $CommercioDocsEncDataStateErrorCopyWith<$Res> {
  factory $CommercioDocsEncDataStateErrorCopyWith(
          CommercioDocsEncDataStateError value,
          $Res Function(CommercioDocsEncDataStateError) then) =
      _$CommercioDocsEncDataStateErrorCopyWithImpl<$Res>;
  $Res call({String? error});
}

/// @nodoc
class _$CommercioDocsEncDataStateErrorCopyWithImpl<$Res>
    extends _$CommercioDocsEncDataStateCopyWithImpl<$Res>
    implements $CommercioDocsEncDataStateErrorCopyWith<$Res> {
  _$CommercioDocsEncDataStateErrorCopyWithImpl(
      CommercioDocsEncDataStateError _value,
      $Res Function(CommercioDocsEncDataStateError) _then)
      : super(_value, (v) => _then(v as CommercioDocsEncDataStateError));

  @override
  CommercioDocsEncDataStateError get _value =>
      super._value as CommercioDocsEncDataStateError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(CommercioDocsEncDataStateError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CommercioDocsEncDataStateError
    implements CommercioDocsEncDataStateError {
  const _$CommercioDocsEncDataStateError([this.error]);

  @override
  final String? error;

  @override
  String toString() {
    return 'CommercioDocsEncDataState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioDocsEncDataStateError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $CommercioDocsEncDataStateErrorCopyWith<CommercioDocsEncDataStateError>
      get copyWith => _$CommercioDocsEncDataStateErrorCopyWithImpl<
          CommercioDocsEncDataStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Map<CommercioEncryptedData, bool> encryptedData)
        $default, {
    required TResult Function(Map<CommercioEncryptedData, bool> encryptedData)
        initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Map<CommercioEncryptedData, bool> encryptedData)?
        $default, {
    TResult Function(Map<CommercioEncryptedData, bool> encryptedData)? initial,
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommercioDocsEncDataStateData value) $default, {
    required TResult Function(CommercioDocsEncDataStateInitial value) initial,
    required TResult Function(CommercioDocsEncDataStateLoading value) loading,
    required TResult Function(CommercioDocsEncDataStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioDocsEncDataStateData value)? $default, {
    TResult Function(CommercioDocsEncDataStateInitial value)? initial,
    TResult Function(CommercioDocsEncDataStateLoading value)? loading,
    TResult Function(CommercioDocsEncDataStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CommercioDocsEncDataStateError
    implements CommercioDocsEncDataState {
  const factory CommercioDocsEncDataStateError([String? error]) =
      _$CommercioDocsEncDataStateError;

  String? get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommercioDocsEncDataStateErrorCopyWith<CommercioDocsEncDataStateError>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$CommercioDocsDeriveReceiptStateTearOff {
  const _$CommercioDocsDeriveReceiptStateTearOff();

  CommercioDocsDeriveReceiptStateData call(
      {required CommercioDocReceipt commercioDocReceipt}) {
    return CommercioDocsDeriveReceiptStateData(
      commercioDocReceipt: commercioDocReceipt,
    );
  }

  CommercioDocsDeriveReceiptStateInitial initial() {
    return const CommercioDocsDeriveReceiptStateInitial();
  }

  CommercioDocsDeriveReceiptStateLoading loading() {
    return const CommercioDocsDeriveReceiptStateLoading();
  }

  CommercioDocsDeriveReceiptStateError error([String? error]) {
    return CommercioDocsDeriveReceiptStateError(
      error,
    );
  }
}

/// @nodoc
const $CommercioDocsDeriveReceiptState =
    _$CommercioDocsDeriveReceiptStateTearOff();

/// @nodoc
mixin _$CommercioDocsDeriveReceiptState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(CommercioDocReceipt commercioDocReceipt) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(CommercioDocReceipt commercioDocReceipt)? $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommercioDocsDeriveReceiptStateData value) $default, {
    required TResult Function(CommercioDocsDeriveReceiptStateInitial value)
        initial,
    required TResult Function(CommercioDocsDeriveReceiptStateLoading value)
        loading,
    required TResult Function(CommercioDocsDeriveReceiptStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioDocsDeriveReceiptStateData value)? $default, {
    TResult Function(CommercioDocsDeriveReceiptStateInitial value)? initial,
    TResult Function(CommercioDocsDeriveReceiptStateLoading value)? loading,
    TResult Function(CommercioDocsDeriveReceiptStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommercioDocsDeriveReceiptStateCopyWith<$Res> {
  factory $CommercioDocsDeriveReceiptStateCopyWith(
          CommercioDocsDeriveReceiptState value,
          $Res Function(CommercioDocsDeriveReceiptState) then) =
      _$CommercioDocsDeriveReceiptStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommercioDocsDeriveReceiptStateCopyWithImpl<$Res>
    implements $CommercioDocsDeriveReceiptStateCopyWith<$Res> {
  _$CommercioDocsDeriveReceiptStateCopyWithImpl(this._value, this._then);

  final CommercioDocsDeriveReceiptState _value;
  // ignore: unused_field
  final $Res Function(CommercioDocsDeriveReceiptState) _then;
}

/// @nodoc
abstract class $CommercioDocsDeriveReceiptStateDataCopyWith<$Res> {
  factory $CommercioDocsDeriveReceiptStateDataCopyWith(
          CommercioDocsDeriveReceiptStateData value,
          $Res Function(CommercioDocsDeriveReceiptStateData) then) =
      _$CommercioDocsDeriveReceiptStateDataCopyWithImpl<$Res>;
  $Res call({CommercioDocReceipt commercioDocReceipt});
}

/// @nodoc
class _$CommercioDocsDeriveReceiptStateDataCopyWithImpl<$Res>
    extends _$CommercioDocsDeriveReceiptStateCopyWithImpl<$Res>
    implements $CommercioDocsDeriveReceiptStateDataCopyWith<$Res> {
  _$CommercioDocsDeriveReceiptStateDataCopyWithImpl(
      CommercioDocsDeriveReceiptStateData _value,
      $Res Function(CommercioDocsDeriveReceiptStateData) _then)
      : super(_value, (v) => _then(v as CommercioDocsDeriveReceiptStateData));

  @override
  CommercioDocsDeriveReceiptStateData get _value =>
      super._value as CommercioDocsDeriveReceiptStateData;

  @override
  $Res call({
    Object? commercioDocReceipt = freezed,
  }) {
    return _then(CommercioDocsDeriveReceiptStateData(
      commercioDocReceipt: commercioDocReceipt == freezed
          ? _value.commercioDocReceipt
          : commercioDocReceipt // ignore: cast_nullable_to_non_nullable
              as CommercioDocReceipt,
    ));
  }
}

/// @nodoc

class _$CommercioDocsDeriveReceiptStateData
    implements CommercioDocsDeriveReceiptStateData {
  const _$CommercioDocsDeriveReceiptStateData(
      {required this.commercioDocReceipt});

  @override
  final CommercioDocReceipt commercioDocReceipt;

  @override
  String toString() {
    return 'CommercioDocsDeriveReceiptState(commercioDocReceipt: $commercioDocReceipt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioDocsDeriveReceiptStateData &&
            (identical(other.commercioDocReceipt, commercioDocReceipt) ||
                const DeepCollectionEquality()
                    .equals(other.commercioDocReceipt, commercioDocReceipt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(commercioDocReceipt);

  @JsonKey(ignore: true)
  @override
  $CommercioDocsDeriveReceiptStateDataCopyWith<
          CommercioDocsDeriveReceiptStateData>
      get copyWith => _$CommercioDocsDeriveReceiptStateDataCopyWithImpl<
          CommercioDocsDeriveReceiptStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(CommercioDocReceipt commercioDocReceipt) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return $default(commercioDocReceipt);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(CommercioDocReceipt commercioDocReceipt)? $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(commercioDocReceipt);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommercioDocsDeriveReceiptStateData value) $default, {
    required TResult Function(CommercioDocsDeriveReceiptStateInitial value)
        initial,
    required TResult Function(CommercioDocsDeriveReceiptStateLoading value)
        loading,
    required TResult Function(CommercioDocsDeriveReceiptStateError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioDocsDeriveReceiptStateData value)? $default, {
    TResult Function(CommercioDocsDeriveReceiptStateInitial value)? initial,
    TResult Function(CommercioDocsDeriveReceiptStateLoading value)? loading,
    TResult Function(CommercioDocsDeriveReceiptStateError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class CommercioDocsDeriveReceiptStateData
    implements CommercioDocsDeriveReceiptState {
  const factory CommercioDocsDeriveReceiptStateData(
          {required CommercioDocReceipt commercioDocReceipt}) =
      _$CommercioDocsDeriveReceiptStateData;

  CommercioDocReceipt get commercioDocReceipt =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommercioDocsDeriveReceiptStateDataCopyWith<
          CommercioDocsDeriveReceiptStateData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommercioDocsDeriveReceiptStateInitialCopyWith<$Res> {
  factory $CommercioDocsDeriveReceiptStateInitialCopyWith(
          CommercioDocsDeriveReceiptStateInitial value,
          $Res Function(CommercioDocsDeriveReceiptStateInitial) then) =
      _$CommercioDocsDeriveReceiptStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommercioDocsDeriveReceiptStateInitialCopyWithImpl<$Res>
    extends _$CommercioDocsDeriveReceiptStateCopyWithImpl<$Res>
    implements $CommercioDocsDeriveReceiptStateInitialCopyWith<$Res> {
  _$CommercioDocsDeriveReceiptStateInitialCopyWithImpl(
      CommercioDocsDeriveReceiptStateInitial _value,
      $Res Function(CommercioDocsDeriveReceiptStateInitial) _then)
      : super(
            _value, (v) => _then(v as CommercioDocsDeriveReceiptStateInitial));

  @override
  CommercioDocsDeriveReceiptStateInitial get _value =>
      super._value as CommercioDocsDeriveReceiptStateInitial;
}

/// @nodoc

class _$CommercioDocsDeriveReceiptStateInitial
    implements CommercioDocsDeriveReceiptStateInitial {
  const _$CommercioDocsDeriveReceiptStateInitial();

  @override
  String toString() {
    return 'CommercioDocsDeriveReceiptState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioDocsDeriveReceiptStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(CommercioDocReceipt commercioDocReceipt) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(CommercioDocReceipt commercioDocReceipt)? $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommercioDocsDeriveReceiptStateData value) $default, {
    required TResult Function(CommercioDocsDeriveReceiptStateInitial value)
        initial,
    required TResult Function(CommercioDocsDeriveReceiptStateLoading value)
        loading,
    required TResult Function(CommercioDocsDeriveReceiptStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioDocsDeriveReceiptStateData value)? $default, {
    TResult Function(CommercioDocsDeriveReceiptStateInitial value)? initial,
    TResult Function(CommercioDocsDeriveReceiptStateLoading value)? loading,
    TResult Function(CommercioDocsDeriveReceiptStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CommercioDocsDeriveReceiptStateInitial
    implements CommercioDocsDeriveReceiptState {
  const factory CommercioDocsDeriveReceiptStateInitial() =
      _$CommercioDocsDeriveReceiptStateInitial;
}

/// @nodoc
abstract class $CommercioDocsDeriveReceiptStateLoadingCopyWith<$Res> {
  factory $CommercioDocsDeriveReceiptStateLoadingCopyWith(
          CommercioDocsDeriveReceiptStateLoading value,
          $Res Function(CommercioDocsDeriveReceiptStateLoading) then) =
      _$CommercioDocsDeriveReceiptStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommercioDocsDeriveReceiptStateLoadingCopyWithImpl<$Res>
    extends _$CommercioDocsDeriveReceiptStateCopyWithImpl<$Res>
    implements $CommercioDocsDeriveReceiptStateLoadingCopyWith<$Res> {
  _$CommercioDocsDeriveReceiptStateLoadingCopyWithImpl(
      CommercioDocsDeriveReceiptStateLoading _value,
      $Res Function(CommercioDocsDeriveReceiptStateLoading) _then)
      : super(
            _value, (v) => _then(v as CommercioDocsDeriveReceiptStateLoading));

  @override
  CommercioDocsDeriveReceiptStateLoading get _value =>
      super._value as CommercioDocsDeriveReceiptStateLoading;
}

/// @nodoc

class _$CommercioDocsDeriveReceiptStateLoading
    implements CommercioDocsDeriveReceiptStateLoading {
  const _$CommercioDocsDeriveReceiptStateLoading();

  @override
  String toString() {
    return 'CommercioDocsDeriveReceiptState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioDocsDeriveReceiptStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(CommercioDocReceipt commercioDocReceipt) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(CommercioDocReceipt commercioDocReceipt)? $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommercioDocsDeriveReceiptStateData value) $default, {
    required TResult Function(CommercioDocsDeriveReceiptStateInitial value)
        initial,
    required TResult Function(CommercioDocsDeriveReceiptStateLoading value)
        loading,
    required TResult Function(CommercioDocsDeriveReceiptStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioDocsDeriveReceiptStateData value)? $default, {
    TResult Function(CommercioDocsDeriveReceiptStateInitial value)? initial,
    TResult Function(CommercioDocsDeriveReceiptStateLoading value)? loading,
    TResult Function(CommercioDocsDeriveReceiptStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CommercioDocsDeriveReceiptStateLoading
    implements CommercioDocsDeriveReceiptState {
  const factory CommercioDocsDeriveReceiptStateLoading() =
      _$CommercioDocsDeriveReceiptStateLoading;
}

/// @nodoc
abstract class $CommercioDocsDeriveReceiptStateErrorCopyWith<$Res> {
  factory $CommercioDocsDeriveReceiptStateErrorCopyWith(
          CommercioDocsDeriveReceiptStateError value,
          $Res Function(CommercioDocsDeriveReceiptStateError) then) =
      _$CommercioDocsDeriveReceiptStateErrorCopyWithImpl<$Res>;
  $Res call({String? error});
}

/// @nodoc
class _$CommercioDocsDeriveReceiptStateErrorCopyWithImpl<$Res>
    extends _$CommercioDocsDeriveReceiptStateCopyWithImpl<$Res>
    implements $CommercioDocsDeriveReceiptStateErrorCopyWith<$Res> {
  _$CommercioDocsDeriveReceiptStateErrorCopyWithImpl(
      CommercioDocsDeriveReceiptStateError _value,
      $Res Function(CommercioDocsDeriveReceiptStateError) _then)
      : super(_value, (v) => _then(v as CommercioDocsDeriveReceiptStateError));

  @override
  CommercioDocsDeriveReceiptStateError get _value =>
      super._value as CommercioDocsDeriveReceiptStateError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(CommercioDocsDeriveReceiptStateError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CommercioDocsDeriveReceiptStateError
    implements CommercioDocsDeriveReceiptStateError {
  const _$CommercioDocsDeriveReceiptStateError([this.error]);

  @override
  final String? error;

  @override
  String toString() {
    return 'CommercioDocsDeriveReceiptState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioDocsDeriveReceiptStateError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $CommercioDocsDeriveReceiptStateErrorCopyWith<
          CommercioDocsDeriveReceiptStateError>
      get copyWith => _$CommercioDocsDeriveReceiptStateErrorCopyWithImpl<
          CommercioDocsDeriveReceiptStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(CommercioDocReceipt commercioDocReceipt) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(CommercioDocReceipt commercioDocReceipt)? $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommercioDocsDeriveReceiptStateData value) $default, {
    required TResult Function(CommercioDocsDeriveReceiptStateInitial value)
        initial,
    required TResult Function(CommercioDocsDeriveReceiptStateLoading value)
        loading,
    required TResult Function(CommercioDocsDeriveReceiptStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioDocsDeriveReceiptStateData value)? $default, {
    TResult Function(CommercioDocsDeriveReceiptStateInitial value)? initial,
    TResult Function(CommercioDocsDeriveReceiptStateLoading value)? loading,
    TResult Function(CommercioDocsDeriveReceiptStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CommercioDocsDeriveReceiptStateError
    implements CommercioDocsDeriveReceiptState {
  const factory CommercioDocsDeriveReceiptStateError([String? error]) =
      _$CommercioDocsDeriveReceiptStateError;

  String? get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommercioDocsDeriveReceiptStateErrorCopyWith<
          CommercioDocsDeriveReceiptStateError>
      get copyWith => throw _privateConstructorUsedError;
}
