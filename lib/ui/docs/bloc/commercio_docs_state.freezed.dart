// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'commercio_docs_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$CommercioDocsSharedDocumentStateTearOff {
  const _$CommercioDocsSharedDocumentStateTearOff();

  CommercioDocsSharedDocumentStateData call(
      {@required TransactionResult result}) {
    return CommercioDocsSharedDocumentStateData(
      result: result,
    );
  }

  CommercioDocsSharedDocumentStateInitial initial() {
    return const CommercioDocsSharedDocumentStateInitial();
  }

  CommercioDocsSharedDocumentStateLoading loading() {
    return const CommercioDocsSharedDocumentStateLoading();
  }

  CommercioDocsSharedDocumentStateError error([String error]) {
    return CommercioDocsSharedDocumentStateError(
      error,
    );
  }
}

// ignore: unused_element
const $CommercioDocsSharedDocumentState =
    _$CommercioDocsSharedDocumentStateTearOff();

mixin _$CommercioDocsSharedDocumentState {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(TransactionResult result), {
    @required Result initial(),
    @required Result loading(),
    @required Result error(String error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(TransactionResult result), {
    Result initial(),
    Result loading(),
    Result error(String error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CommercioDocsSharedDocumentStateData value), {
    @required Result initial(CommercioDocsSharedDocumentStateInitial value),
    @required Result loading(CommercioDocsSharedDocumentStateLoading value),
    @required Result error(CommercioDocsSharedDocumentStateError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CommercioDocsSharedDocumentStateData value), {
    Result initial(CommercioDocsSharedDocumentStateInitial value),
    Result loading(CommercioDocsSharedDocumentStateLoading value),
    Result error(CommercioDocsSharedDocumentStateError value),
    @required Result orElse(),
  });
}

abstract class $CommercioDocsSharedDocumentStateCopyWith<$Res> {
  factory $CommercioDocsSharedDocumentStateCopyWith(
          CommercioDocsSharedDocumentState value,
          $Res Function(CommercioDocsSharedDocumentState) then) =
      _$CommercioDocsSharedDocumentStateCopyWithImpl<$Res>;
}

class _$CommercioDocsSharedDocumentStateCopyWithImpl<$Res>
    implements $CommercioDocsSharedDocumentStateCopyWith<$Res> {
  _$CommercioDocsSharedDocumentStateCopyWithImpl(this._value, this._then);

  final CommercioDocsSharedDocumentState _value;
  // ignore: unused_field
  final $Res Function(CommercioDocsSharedDocumentState) _then;
}

abstract class $CommercioDocsSharedDocumentStateDataCopyWith<$Res> {
  factory $CommercioDocsSharedDocumentStateDataCopyWith(
          CommercioDocsSharedDocumentStateData value,
          $Res Function(CommercioDocsSharedDocumentStateData) then) =
      _$CommercioDocsSharedDocumentStateDataCopyWithImpl<$Res>;
  $Res call({TransactionResult result});
}

class _$CommercioDocsSharedDocumentStateDataCopyWithImpl<$Res>
    extends _$CommercioDocsSharedDocumentStateCopyWithImpl<$Res>
    implements $CommercioDocsSharedDocumentStateDataCopyWith<$Res> {
  _$CommercioDocsSharedDocumentStateDataCopyWithImpl(
      CommercioDocsSharedDocumentStateData _value,
      $Res Function(CommercioDocsSharedDocumentStateData) _then)
      : super(_value, (v) => _then(v as CommercioDocsSharedDocumentStateData));

  @override
  CommercioDocsSharedDocumentStateData get _value =>
      super._value as CommercioDocsSharedDocumentStateData;

  @override
  $Res call({
    Object result = freezed,
  }) {
    return _then(CommercioDocsSharedDocumentStateData(
      result: result == freezed ? _value.result : result as TransactionResult,
    ));
  }
}

class _$CommercioDocsSharedDocumentStateData
    implements CommercioDocsSharedDocumentStateData {
  const _$CommercioDocsSharedDocumentStateData({@required this.result})
      : assert(result != null);

  @override
  final TransactionResult result;

  @override
  String toString() {
    return 'CommercioDocsSharedDocumentState(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioDocsSharedDocumentStateData &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(result);

  @override
  $CommercioDocsSharedDocumentStateDataCopyWith<
          CommercioDocsSharedDocumentStateData>
      get copyWith => _$CommercioDocsSharedDocumentStateDataCopyWithImpl<
          CommercioDocsSharedDocumentStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(TransactionResult result), {
    @required Result initial(),
    @required Result loading(),
    @required Result error(String error),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return $default(result);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(TransactionResult result), {
    Result initial(),
    Result loading(),
    Result error(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CommercioDocsSharedDocumentStateData value), {
    @required Result initial(CommercioDocsSharedDocumentStateInitial value),
    @required Result loading(CommercioDocsSharedDocumentStateLoading value),
    @required Result error(CommercioDocsSharedDocumentStateError value),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CommercioDocsSharedDocumentStateData value), {
    Result initial(CommercioDocsSharedDocumentStateInitial value),
    Result loading(CommercioDocsSharedDocumentStateLoading value),
    Result error(CommercioDocsSharedDocumentStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class CommercioDocsSharedDocumentStateData
    implements CommercioDocsSharedDocumentState {
  const factory CommercioDocsSharedDocumentStateData(
          {@required TransactionResult result}) =
      _$CommercioDocsSharedDocumentStateData;

  TransactionResult get result;
  $CommercioDocsSharedDocumentStateDataCopyWith<
      CommercioDocsSharedDocumentStateData> get copyWith;
}

abstract class $CommercioDocsSharedDocumentStateInitialCopyWith<$Res> {
  factory $CommercioDocsSharedDocumentStateInitialCopyWith(
          CommercioDocsSharedDocumentStateInitial value,
          $Res Function(CommercioDocsSharedDocumentStateInitial) then) =
      _$CommercioDocsSharedDocumentStateInitialCopyWithImpl<$Res>;
}

class _$CommercioDocsSharedDocumentStateInitialCopyWithImpl<$Res>
    extends _$CommercioDocsSharedDocumentStateCopyWithImpl<$Res>
    implements $CommercioDocsSharedDocumentStateInitialCopyWith<$Res> {
  _$CommercioDocsSharedDocumentStateInitialCopyWithImpl(
      CommercioDocsSharedDocumentStateInitial _value,
      $Res Function(CommercioDocsSharedDocumentStateInitial) _then)
      : super(
            _value, (v) => _then(v as CommercioDocsSharedDocumentStateInitial));

  @override
  CommercioDocsSharedDocumentStateInitial get _value =>
      super._value as CommercioDocsSharedDocumentStateInitial;
}

class _$CommercioDocsSharedDocumentStateInitial
    implements CommercioDocsSharedDocumentStateInitial {
  const _$CommercioDocsSharedDocumentStateInitial();

  @override
  String toString() {
    return 'CommercioDocsSharedDocumentState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioDocsSharedDocumentStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(TransactionResult result), {
    @required Result initial(),
    @required Result loading(),
    @required Result error(String error),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(TransactionResult result), {
    Result initial(),
    Result loading(),
    Result error(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CommercioDocsSharedDocumentStateData value), {
    @required Result initial(CommercioDocsSharedDocumentStateInitial value),
    @required Result loading(CommercioDocsSharedDocumentStateLoading value),
    @required Result error(CommercioDocsSharedDocumentStateError value),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CommercioDocsSharedDocumentStateData value), {
    Result initial(CommercioDocsSharedDocumentStateInitial value),
    Result loading(CommercioDocsSharedDocumentStateLoading value),
    Result error(CommercioDocsSharedDocumentStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CommercioDocsSharedDocumentStateInitial
    implements CommercioDocsSharedDocumentState {
  const factory CommercioDocsSharedDocumentStateInitial() =
      _$CommercioDocsSharedDocumentStateInitial;
}

abstract class $CommercioDocsSharedDocumentStateLoadingCopyWith<$Res> {
  factory $CommercioDocsSharedDocumentStateLoadingCopyWith(
          CommercioDocsSharedDocumentStateLoading value,
          $Res Function(CommercioDocsSharedDocumentStateLoading) then) =
      _$CommercioDocsSharedDocumentStateLoadingCopyWithImpl<$Res>;
}

class _$CommercioDocsSharedDocumentStateLoadingCopyWithImpl<$Res>
    extends _$CommercioDocsSharedDocumentStateCopyWithImpl<$Res>
    implements $CommercioDocsSharedDocumentStateLoadingCopyWith<$Res> {
  _$CommercioDocsSharedDocumentStateLoadingCopyWithImpl(
      CommercioDocsSharedDocumentStateLoading _value,
      $Res Function(CommercioDocsSharedDocumentStateLoading) _then)
      : super(
            _value, (v) => _then(v as CommercioDocsSharedDocumentStateLoading));

  @override
  CommercioDocsSharedDocumentStateLoading get _value =>
      super._value as CommercioDocsSharedDocumentStateLoading;
}

class _$CommercioDocsSharedDocumentStateLoading
    implements CommercioDocsSharedDocumentStateLoading {
  const _$CommercioDocsSharedDocumentStateLoading();

  @override
  String toString() {
    return 'CommercioDocsSharedDocumentState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioDocsSharedDocumentStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(TransactionResult result), {
    @required Result initial(),
    @required Result loading(),
    @required Result error(String error),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(TransactionResult result), {
    Result initial(),
    Result loading(),
    Result error(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CommercioDocsSharedDocumentStateData value), {
    @required Result initial(CommercioDocsSharedDocumentStateInitial value),
    @required Result loading(CommercioDocsSharedDocumentStateLoading value),
    @required Result error(CommercioDocsSharedDocumentStateError value),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CommercioDocsSharedDocumentStateData value), {
    Result initial(CommercioDocsSharedDocumentStateInitial value),
    Result loading(CommercioDocsSharedDocumentStateLoading value),
    Result error(CommercioDocsSharedDocumentStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CommercioDocsSharedDocumentStateLoading
    implements CommercioDocsSharedDocumentState {
  const factory CommercioDocsSharedDocumentStateLoading() =
      _$CommercioDocsSharedDocumentStateLoading;
}

abstract class $CommercioDocsSharedDocumentStateErrorCopyWith<$Res> {
  factory $CommercioDocsSharedDocumentStateErrorCopyWith(
          CommercioDocsSharedDocumentStateError value,
          $Res Function(CommercioDocsSharedDocumentStateError) then) =
      _$CommercioDocsSharedDocumentStateErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

class _$CommercioDocsSharedDocumentStateErrorCopyWithImpl<$Res>
    extends _$CommercioDocsSharedDocumentStateCopyWithImpl<$Res>
    implements $CommercioDocsSharedDocumentStateErrorCopyWith<$Res> {
  _$CommercioDocsSharedDocumentStateErrorCopyWithImpl(
      CommercioDocsSharedDocumentStateError _value,
      $Res Function(CommercioDocsSharedDocumentStateError) _then)
      : super(_value, (v) => _then(v as CommercioDocsSharedDocumentStateError));

  @override
  CommercioDocsSharedDocumentStateError get _value =>
      super._value as CommercioDocsSharedDocumentStateError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(CommercioDocsSharedDocumentStateError(
      error == freezed ? _value.error : error as String,
    ));
  }
}

class _$CommercioDocsSharedDocumentStateError
    implements CommercioDocsSharedDocumentStateError {
  const _$CommercioDocsSharedDocumentStateError([this.error]);

  @override
  final String error;

  @override
  String toString() {
    return 'CommercioDocsSharedDocumentState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioDocsSharedDocumentStateError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $CommercioDocsSharedDocumentStateErrorCopyWith<
          CommercioDocsSharedDocumentStateError>
      get copyWith => _$CommercioDocsSharedDocumentStateErrorCopyWithImpl<
          CommercioDocsSharedDocumentStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(TransactionResult result), {
    @required Result initial(),
    @required Result loading(),
    @required Result error(String error),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(TransactionResult result), {
    Result initial(),
    Result loading(),
    Result error(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CommercioDocsSharedDocumentStateData value), {
    @required Result initial(CommercioDocsSharedDocumentStateInitial value),
    @required Result loading(CommercioDocsSharedDocumentStateLoading value),
    @required Result error(CommercioDocsSharedDocumentStateError value),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CommercioDocsSharedDocumentStateData value), {
    Result initial(CommercioDocsSharedDocumentStateInitial value),
    Result loading(CommercioDocsSharedDocumentStateLoading value),
    Result error(CommercioDocsSharedDocumentStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CommercioDocsSharedDocumentStateError
    implements CommercioDocsSharedDocumentState {
  const factory CommercioDocsSharedDocumentStateError([String error]) =
      _$CommercioDocsSharedDocumentStateError;

  String get error;
  $CommercioDocsSharedDocumentStateErrorCopyWith<
      CommercioDocsSharedDocumentStateError> get copyWith;
}

class _$CommercioDocsSharedEncryptedDocumentStateTearOff {
  const _$CommercioDocsSharedEncryptedDocumentStateTearOff();

  CommercioDocsSharedEncryptedDocumentStateData call(
      {@required TransactionResult result}) {
    return CommercioDocsSharedEncryptedDocumentStateData(
      result: result,
    );
  }

  CommercioDocsSharedEncryptedDocumentStateInitial initial() {
    return const CommercioDocsSharedEncryptedDocumentStateInitial();
  }

  CommercioDocsSharedEncryptedDocumentStateLoading loading() {
    return const CommercioDocsSharedEncryptedDocumentStateLoading();
  }

  CommercioDocsSharedEncryptedDocumentStateError error([String error]) {
    return CommercioDocsSharedEncryptedDocumentStateError(
      error,
    );
  }
}

// ignore: unused_element
const $CommercioDocsSharedEncryptedDocumentState =
    _$CommercioDocsSharedEncryptedDocumentStateTearOff();

mixin _$CommercioDocsSharedEncryptedDocumentState {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(TransactionResult result), {
    @required Result initial(),
    @required Result loading(),
    @required Result error(String error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(TransactionResult result), {
    Result initial(),
    Result loading(),
    Result error(String error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CommercioDocsSharedEncryptedDocumentStateData value), {
    @required
        Result initial(CommercioDocsSharedEncryptedDocumentStateInitial value),
    @required
        Result loading(CommercioDocsSharedEncryptedDocumentStateLoading value),
    @required
        Result error(CommercioDocsSharedEncryptedDocumentStateError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CommercioDocsSharedEncryptedDocumentStateData value), {
    Result initial(CommercioDocsSharedEncryptedDocumentStateInitial value),
    Result loading(CommercioDocsSharedEncryptedDocumentStateLoading value),
    Result error(CommercioDocsSharedEncryptedDocumentStateError value),
    @required Result orElse(),
  });
}

abstract class $CommercioDocsSharedEncryptedDocumentStateCopyWith<$Res> {
  factory $CommercioDocsSharedEncryptedDocumentStateCopyWith(
          CommercioDocsSharedEncryptedDocumentState value,
          $Res Function(CommercioDocsSharedEncryptedDocumentState) then) =
      _$CommercioDocsSharedEncryptedDocumentStateCopyWithImpl<$Res>;
}

class _$CommercioDocsSharedEncryptedDocumentStateCopyWithImpl<$Res>
    implements $CommercioDocsSharedEncryptedDocumentStateCopyWith<$Res> {
  _$CommercioDocsSharedEncryptedDocumentStateCopyWithImpl(
      this._value, this._then);

  final CommercioDocsSharedEncryptedDocumentState _value;
  // ignore: unused_field
  final $Res Function(CommercioDocsSharedEncryptedDocumentState) _then;
}

abstract class $CommercioDocsSharedEncryptedDocumentStateDataCopyWith<$Res> {
  factory $CommercioDocsSharedEncryptedDocumentStateDataCopyWith(
          CommercioDocsSharedEncryptedDocumentStateData value,
          $Res Function(CommercioDocsSharedEncryptedDocumentStateData) then) =
      _$CommercioDocsSharedEncryptedDocumentStateDataCopyWithImpl<$Res>;
  $Res call({TransactionResult result});
}

class _$CommercioDocsSharedEncryptedDocumentStateDataCopyWithImpl<$Res>
    extends _$CommercioDocsSharedEncryptedDocumentStateCopyWithImpl<$Res>
    implements $CommercioDocsSharedEncryptedDocumentStateDataCopyWith<$Res> {
  _$CommercioDocsSharedEncryptedDocumentStateDataCopyWithImpl(
      CommercioDocsSharedEncryptedDocumentStateData _value,
      $Res Function(CommercioDocsSharedEncryptedDocumentStateData) _then)
      : super(_value,
            (v) => _then(v as CommercioDocsSharedEncryptedDocumentStateData));

  @override
  CommercioDocsSharedEncryptedDocumentStateData get _value =>
      super._value as CommercioDocsSharedEncryptedDocumentStateData;

  @override
  $Res call({
    Object result = freezed,
  }) {
    return _then(CommercioDocsSharedEncryptedDocumentStateData(
      result: result == freezed ? _value.result : result as TransactionResult,
    ));
  }
}

class _$CommercioDocsSharedEncryptedDocumentStateData
    implements CommercioDocsSharedEncryptedDocumentStateData {
  const _$CommercioDocsSharedEncryptedDocumentStateData({@required this.result})
      : assert(result != null);

  @override
  final TransactionResult result;

  @override
  String toString() {
    return 'CommercioDocsSharedEncryptedDocumentState(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioDocsSharedEncryptedDocumentStateData &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(result);

  @override
  $CommercioDocsSharedEncryptedDocumentStateDataCopyWith<
          CommercioDocsSharedEncryptedDocumentStateData>
      get copyWith =>
          _$CommercioDocsSharedEncryptedDocumentStateDataCopyWithImpl<
              CommercioDocsSharedEncryptedDocumentStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(TransactionResult result), {
    @required Result initial(),
    @required Result loading(),
    @required Result error(String error),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return $default(result);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(TransactionResult result), {
    Result initial(),
    Result loading(),
    Result error(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CommercioDocsSharedEncryptedDocumentStateData value), {
    @required
        Result initial(CommercioDocsSharedEncryptedDocumentStateInitial value),
    @required
        Result loading(CommercioDocsSharedEncryptedDocumentStateLoading value),
    @required
        Result error(CommercioDocsSharedEncryptedDocumentStateError value),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CommercioDocsSharedEncryptedDocumentStateData value), {
    Result initial(CommercioDocsSharedEncryptedDocumentStateInitial value),
    Result loading(CommercioDocsSharedEncryptedDocumentStateLoading value),
    Result error(CommercioDocsSharedEncryptedDocumentStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class CommercioDocsSharedEncryptedDocumentStateData
    implements CommercioDocsSharedEncryptedDocumentState {
  const factory CommercioDocsSharedEncryptedDocumentStateData(
          {@required TransactionResult result}) =
      _$CommercioDocsSharedEncryptedDocumentStateData;

  TransactionResult get result;
  $CommercioDocsSharedEncryptedDocumentStateDataCopyWith<
      CommercioDocsSharedEncryptedDocumentStateData> get copyWith;
}

abstract class $CommercioDocsSharedEncryptedDocumentStateInitialCopyWith<$Res> {
  factory $CommercioDocsSharedEncryptedDocumentStateInitialCopyWith(
          CommercioDocsSharedEncryptedDocumentStateInitial value,
          $Res Function(CommercioDocsSharedEncryptedDocumentStateInitial)
              then) =
      _$CommercioDocsSharedEncryptedDocumentStateInitialCopyWithImpl<$Res>;
}

class _$CommercioDocsSharedEncryptedDocumentStateInitialCopyWithImpl<$Res>
    extends _$CommercioDocsSharedEncryptedDocumentStateCopyWithImpl<$Res>
    implements $CommercioDocsSharedEncryptedDocumentStateInitialCopyWith<$Res> {
  _$CommercioDocsSharedEncryptedDocumentStateInitialCopyWithImpl(
      CommercioDocsSharedEncryptedDocumentStateInitial _value,
      $Res Function(CommercioDocsSharedEncryptedDocumentStateInitial) _then)
      : super(
            _value,
            (v) =>
                _then(v as CommercioDocsSharedEncryptedDocumentStateInitial));

  @override
  CommercioDocsSharedEncryptedDocumentStateInitial get _value =>
      super._value as CommercioDocsSharedEncryptedDocumentStateInitial;
}

class _$CommercioDocsSharedEncryptedDocumentStateInitial
    implements CommercioDocsSharedEncryptedDocumentStateInitial {
  const _$CommercioDocsSharedEncryptedDocumentStateInitial();

  @override
  String toString() {
    return 'CommercioDocsSharedEncryptedDocumentState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioDocsSharedEncryptedDocumentStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(TransactionResult result), {
    @required Result initial(),
    @required Result loading(),
    @required Result error(String error),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(TransactionResult result), {
    Result initial(),
    Result loading(),
    Result error(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CommercioDocsSharedEncryptedDocumentStateData value), {
    @required
        Result initial(CommercioDocsSharedEncryptedDocumentStateInitial value),
    @required
        Result loading(CommercioDocsSharedEncryptedDocumentStateLoading value),
    @required
        Result error(CommercioDocsSharedEncryptedDocumentStateError value),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CommercioDocsSharedEncryptedDocumentStateData value), {
    Result initial(CommercioDocsSharedEncryptedDocumentStateInitial value),
    Result loading(CommercioDocsSharedEncryptedDocumentStateLoading value),
    Result error(CommercioDocsSharedEncryptedDocumentStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CommercioDocsSharedEncryptedDocumentStateInitial
    implements CommercioDocsSharedEncryptedDocumentState {
  const factory CommercioDocsSharedEncryptedDocumentStateInitial() =
      _$CommercioDocsSharedEncryptedDocumentStateInitial;
}

abstract class $CommercioDocsSharedEncryptedDocumentStateLoadingCopyWith<$Res> {
  factory $CommercioDocsSharedEncryptedDocumentStateLoadingCopyWith(
          CommercioDocsSharedEncryptedDocumentStateLoading value,
          $Res Function(CommercioDocsSharedEncryptedDocumentStateLoading)
              then) =
      _$CommercioDocsSharedEncryptedDocumentStateLoadingCopyWithImpl<$Res>;
}

class _$CommercioDocsSharedEncryptedDocumentStateLoadingCopyWithImpl<$Res>
    extends _$CommercioDocsSharedEncryptedDocumentStateCopyWithImpl<$Res>
    implements $CommercioDocsSharedEncryptedDocumentStateLoadingCopyWith<$Res> {
  _$CommercioDocsSharedEncryptedDocumentStateLoadingCopyWithImpl(
      CommercioDocsSharedEncryptedDocumentStateLoading _value,
      $Res Function(CommercioDocsSharedEncryptedDocumentStateLoading) _then)
      : super(
            _value,
            (v) =>
                _then(v as CommercioDocsSharedEncryptedDocumentStateLoading));

  @override
  CommercioDocsSharedEncryptedDocumentStateLoading get _value =>
      super._value as CommercioDocsSharedEncryptedDocumentStateLoading;
}

class _$CommercioDocsSharedEncryptedDocumentStateLoading
    implements CommercioDocsSharedEncryptedDocumentStateLoading {
  const _$CommercioDocsSharedEncryptedDocumentStateLoading();

  @override
  String toString() {
    return 'CommercioDocsSharedEncryptedDocumentState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioDocsSharedEncryptedDocumentStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(TransactionResult result), {
    @required Result initial(),
    @required Result loading(),
    @required Result error(String error),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(TransactionResult result), {
    Result initial(),
    Result loading(),
    Result error(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CommercioDocsSharedEncryptedDocumentStateData value), {
    @required
        Result initial(CommercioDocsSharedEncryptedDocumentStateInitial value),
    @required
        Result loading(CommercioDocsSharedEncryptedDocumentStateLoading value),
    @required
        Result error(CommercioDocsSharedEncryptedDocumentStateError value),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CommercioDocsSharedEncryptedDocumentStateData value), {
    Result initial(CommercioDocsSharedEncryptedDocumentStateInitial value),
    Result loading(CommercioDocsSharedEncryptedDocumentStateLoading value),
    Result error(CommercioDocsSharedEncryptedDocumentStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CommercioDocsSharedEncryptedDocumentStateLoading
    implements CommercioDocsSharedEncryptedDocumentState {
  const factory CommercioDocsSharedEncryptedDocumentStateLoading() =
      _$CommercioDocsSharedEncryptedDocumentStateLoading;
}

abstract class $CommercioDocsSharedEncryptedDocumentStateErrorCopyWith<$Res> {
  factory $CommercioDocsSharedEncryptedDocumentStateErrorCopyWith(
          CommercioDocsSharedEncryptedDocumentStateError value,
          $Res Function(CommercioDocsSharedEncryptedDocumentStateError) then) =
      _$CommercioDocsSharedEncryptedDocumentStateErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

class _$CommercioDocsSharedEncryptedDocumentStateErrorCopyWithImpl<$Res>
    extends _$CommercioDocsSharedEncryptedDocumentStateCopyWithImpl<$Res>
    implements $CommercioDocsSharedEncryptedDocumentStateErrorCopyWith<$Res> {
  _$CommercioDocsSharedEncryptedDocumentStateErrorCopyWithImpl(
      CommercioDocsSharedEncryptedDocumentStateError _value,
      $Res Function(CommercioDocsSharedEncryptedDocumentStateError) _then)
      : super(_value,
            (v) => _then(v as CommercioDocsSharedEncryptedDocumentStateError));

  @override
  CommercioDocsSharedEncryptedDocumentStateError get _value =>
      super._value as CommercioDocsSharedEncryptedDocumentStateError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(CommercioDocsSharedEncryptedDocumentStateError(
      error == freezed ? _value.error : error as String,
    ));
  }
}

class _$CommercioDocsSharedEncryptedDocumentStateError
    implements CommercioDocsSharedEncryptedDocumentStateError {
  const _$CommercioDocsSharedEncryptedDocumentStateError([this.error]);

  @override
  final String error;

  @override
  String toString() {
    return 'CommercioDocsSharedEncryptedDocumentState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioDocsSharedEncryptedDocumentStateError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $CommercioDocsSharedEncryptedDocumentStateErrorCopyWith<
          CommercioDocsSharedEncryptedDocumentStateError>
      get copyWith =>
          _$CommercioDocsSharedEncryptedDocumentStateErrorCopyWithImpl<
              CommercioDocsSharedEncryptedDocumentStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(TransactionResult result), {
    @required Result initial(),
    @required Result loading(),
    @required Result error(String error),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(TransactionResult result), {
    Result initial(),
    Result loading(),
    Result error(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CommercioDocsSharedEncryptedDocumentStateData value), {
    @required
        Result initial(CommercioDocsSharedEncryptedDocumentStateInitial value),
    @required
        Result loading(CommercioDocsSharedEncryptedDocumentStateLoading value),
    @required
        Result error(CommercioDocsSharedEncryptedDocumentStateError value),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CommercioDocsSharedEncryptedDocumentStateData value), {
    Result initial(CommercioDocsSharedEncryptedDocumentStateInitial value),
    Result loading(CommercioDocsSharedEncryptedDocumentStateLoading value),
    Result error(CommercioDocsSharedEncryptedDocumentStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CommercioDocsSharedEncryptedDocumentStateError
    implements CommercioDocsSharedEncryptedDocumentState {
  const factory CommercioDocsSharedEncryptedDocumentStateError([String error]) =
      _$CommercioDocsSharedEncryptedDocumentStateError;

  String get error;
  $CommercioDocsSharedEncryptedDocumentStateErrorCopyWith<
      CommercioDocsSharedEncryptedDocumentStateError> get copyWith;
}

class _$CommercioDocsSentReceiptStateTearOff {
  const _$CommercioDocsSentReceiptStateTearOff();

  CommercioDocsSentReceiptStateData call({@required TransactionResult result}) {
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

  CommercioDocsSentReceiptStateError error([String error]) {
    return CommercioDocsSentReceiptStateError(
      error,
    );
  }
}

// ignore: unused_element
const $CommercioDocsSentReceiptState = _$CommercioDocsSentReceiptStateTearOff();

mixin _$CommercioDocsSentReceiptState {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(TransactionResult result), {
    @required Result initial(),
    @required Result loading(),
    @required Result error(String error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(TransactionResult result), {
    Result initial(),
    Result loading(),
    Result error(String error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CommercioDocsSentReceiptStateData value), {
    @required Result initial(CommercioDocsSentReceiptStateInitial value),
    @required Result loading(CommercioDocsSentReceiptStateLoading value),
    @required Result error(CommercioDocsSentReceiptStateError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CommercioDocsSentReceiptStateData value), {
    Result initial(CommercioDocsSentReceiptStateInitial value),
    Result loading(CommercioDocsSentReceiptStateLoading value),
    Result error(CommercioDocsSentReceiptStateError value),
    @required Result orElse(),
  });
}

abstract class $CommercioDocsSentReceiptStateCopyWith<$Res> {
  factory $CommercioDocsSentReceiptStateCopyWith(
          CommercioDocsSentReceiptState value,
          $Res Function(CommercioDocsSentReceiptState) then) =
      _$CommercioDocsSentReceiptStateCopyWithImpl<$Res>;
}

class _$CommercioDocsSentReceiptStateCopyWithImpl<$Res>
    implements $CommercioDocsSentReceiptStateCopyWith<$Res> {
  _$CommercioDocsSentReceiptStateCopyWithImpl(this._value, this._then);

  final CommercioDocsSentReceiptState _value;
  // ignore: unused_field
  final $Res Function(CommercioDocsSentReceiptState) _then;
}

abstract class $CommercioDocsSentReceiptStateDataCopyWith<$Res> {
  factory $CommercioDocsSentReceiptStateDataCopyWith(
          CommercioDocsSentReceiptStateData value,
          $Res Function(CommercioDocsSentReceiptStateData) then) =
      _$CommercioDocsSentReceiptStateDataCopyWithImpl<$Res>;
  $Res call({TransactionResult result});
}

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
    Object result = freezed,
  }) {
    return _then(CommercioDocsSentReceiptStateData(
      result: result == freezed ? _value.result : result as TransactionResult,
    ));
  }
}

class _$CommercioDocsSentReceiptStateData
    implements CommercioDocsSentReceiptStateData {
  const _$CommercioDocsSentReceiptStateData({@required this.result})
      : assert(result != null);

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

  @override
  $CommercioDocsSentReceiptStateDataCopyWith<CommercioDocsSentReceiptStateData>
      get copyWith => _$CommercioDocsSentReceiptStateDataCopyWithImpl<
          CommercioDocsSentReceiptStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(TransactionResult result), {
    @required Result initial(),
    @required Result loading(),
    @required Result error(String error),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return $default(result);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(TransactionResult result), {
    Result initial(),
    Result loading(),
    Result error(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CommercioDocsSentReceiptStateData value), {
    @required Result initial(CommercioDocsSentReceiptStateInitial value),
    @required Result loading(CommercioDocsSentReceiptStateLoading value),
    @required Result error(CommercioDocsSentReceiptStateError value),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CommercioDocsSentReceiptStateData value), {
    Result initial(CommercioDocsSentReceiptStateInitial value),
    Result loading(CommercioDocsSentReceiptStateLoading value),
    Result error(CommercioDocsSentReceiptStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class CommercioDocsSentReceiptStateData
    implements CommercioDocsSentReceiptState {
  const factory CommercioDocsSentReceiptStateData(
          {@required TransactionResult result}) =
      _$CommercioDocsSentReceiptStateData;

  TransactionResult get result;
  $CommercioDocsSentReceiptStateDataCopyWith<CommercioDocsSentReceiptStateData>
      get copyWith;
}

abstract class $CommercioDocsSentReceiptStateInitialCopyWith<$Res> {
  factory $CommercioDocsSentReceiptStateInitialCopyWith(
          CommercioDocsSentReceiptStateInitial value,
          $Res Function(CommercioDocsSentReceiptStateInitial) then) =
      _$CommercioDocsSentReceiptStateInitialCopyWithImpl<$Res>;
}

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
  Result when<Result extends Object>(
    Result $default(TransactionResult result), {
    @required Result initial(),
    @required Result loading(),
    @required Result error(String error),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(TransactionResult result), {
    Result initial(),
    Result loading(),
    Result error(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CommercioDocsSentReceiptStateData value), {
    @required Result initial(CommercioDocsSentReceiptStateInitial value),
    @required Result loading(CommercioDocsSentReceiptStateLoading value),
    @required Result error(CommercioDocsSentReceiptStateError value),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CommercioDocsSentReceiptStateData value), {
    Result initial(CommercioDocsSentReceiptStateInitial value),
    Result loading(CommercioDocsSentReceiptStateLoading value),
    Result error(CommercioDocsSentReceiptStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
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

abstract class $CommercioDocsSentReceiptStateLoadingCopyWith<$Res> {
  factory $CommercioDocsSentReceiptStateLoadingCopyWith(
          CommercioDocsSentReceiptStateLoading value,
          $Res Function(CommercioDocsSentReceiptStateLoading) then) =
      _$CommercioDocsSentReceiptStateLoadingCopyWithImpl<$Res>;
}

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
  Result when<Result extends Object>(
    Result $default(TransactionResult result), {
    @required Result initial(),
    @required Result loading(),
    @required Result error(String error),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(TransactionResult result), {
    Result initial(),
    Result loading(),
    Result error(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CommercioDocsSentReceiptStateData value), {
    @required Result initial(CommercioDocsSentReceiptStateInitial value),
    @required Result loading(CommercioDocsSentReceiptStateLoading value),
    @required Result error(CommercioDocsSentReceiptStateError value),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CommercioDocsSentReceiptStateData value), {
    Result initial(CommercioDocsSentReceiptStateInitial value),
    Result loading(CommercioDocsSentReceiptStateLoading value),
    Result error(CommercioDocsSentReceiptStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
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

abstract class $CommercioDocsSentReceiptStateErrorCopyWith<$Res> {
  factory $CommercioDocsSentReceiptStateErrorCopyWith(
          CommercioDocsSentReceiptStateError value,
          $Res Function(CommercioDocsSentReceiptStateError) then) =
      _$CommercioDocsSentReceiptStateErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

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
    Object error = freezed,
  }) {
    return _then(CommercioDocsSentReceiptStateError(
      error == freezed ? _value.error : error as String,
    ));
  }
}

class _$CommercioDocsSentReceiptStateError
    implements CommercioDocsSentReceiptStateError {
  const _$CommercioDocsSentReceiptStateError([this.error]);

  @override
  final String error;

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

  @override
  $CommercioDocsSentReceiptStateErrorCopyWith<
          CommercioDocsSentReceiptStateError>
      get copyWith => _$CommercioDocsSentReceiptStateErrorCopyWithImpl<
          CommercioDocsSentReceiptStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(TransactionResult result), {
    @required Result initial(),
    @required Result loading(),
    @required Result error(String error),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(TransactionResult result), {
    Result initial(),
    Result loading(),
    Result error(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CommercioDocsSentReceiptStateData value), {
    @required Result initial(CommercioDocsSentReceiptStateInitial value),
    @required Result loading(CommercioDocsSentReceiptStateLoading value),
    @required Result error(CommercioDocsSentReceiptStateError value),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CommercioDocsSentReceiptStateData value), {
    Result initial(CommercioDocsSentReceiptStateInitial value),
    Result loading(CommercioDocsSentReceiptStateLoading value),
    Result error(CommercioDocsSentReceiptStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CommercioDocsSentReceiptStateError
    implements CommercioDocsSentReceiptState {
  const factory CommercioDocsSentReceiptStateError([String error]) =
      _$CommercioDocsSentReceiptStateError;

  String get error;
  $CommercioDocsSentReceiptStateErrorCopyWith<
      CommercioDocsSentReceiptStateError> get copyWith;
}

class _$CommercioDocsSentDocumentsStateTearOff {
  const _$CommercioDocsSentDocumentsStateTearOff();

  CommercioDocsSentDocumentsStateData call(
      {@required List<CommercioDoc> sentDocuments}) {
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

  CommercioDocsSentDocumentsStateError error([String error]) {
    return CommercioDocsSentDocumentsStateError(
      error,
    );
  }
}

// ignore: unused_element
const $CommercioDocsSentDocumentsState =
    _$CommercioDocsSentDocumentsStateTearOff();

mixin _$CommercioDocsSentDocumentsState {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(List<CommercioDoc> sentDocuments), {
    @required Result initial(),
    @required Result loading(),
    @required Result error(String error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(List<CommercioDoc> sentDocuments), {
    Result initial(),
    Result loading(),
    Result error(String error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CommercioDocsSentDocumentsStateData value), {
    @required Result initial(CommercioDocsSentDocumentsStateInitial value),
    @required Result loading(CommercioDocsSentDocumentsStateLoading value),
    @required Result error(CommercioDocsSentDocumentsStateError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CommercioDocsSentDocumentsStateData value), {
    Result initial(CommercioDocsSentDocumentsStateInitial value),
    Result loading(CommercioDocsSentDocumentsStateLoading value),
    Result error(CommercioDocsSentDocumentsStateError value),
    @required Result orElse(),
  });
}

abstract class $CommercioDocsSentDocumentsStateCopyWith<$Res> {
  factory $CommercioDocsSentDocumentsStateCopyWith(
          CommercioDocsSentDocumentsState value,
          $Res Function(CommercioDocsSentDocumentsState) then) =
      _$CommercioDocsSentDocumentsStateCopyWithImpl<$Res>;
}

class _$CommercioDocsSentDocumentsStateCopyWithImpl<$Res>
    implements $CommercioDocsSentDocumentsStateCopyWith<$Res> {
  _$CommercioDocsSentDocumentsStateCopyWithImpl(this._value, this._then);

  final CommercioDocsSentDocumentsState _value;
  // ignore: unused_field
  final $Res Function(CommercioDocsSentDocumentsState) _then;
}

abstract class $CommercioDocsSentDocumentsStateDataCopyWith<$Res> {
  factory $CommercioDocsSentDocumentsStateDataCopyWith(
          CommercioDocsSentDocumentsStateData value,
          $Res Function(CommercioDocsSentDocumentsStateData) then) =
      _$CommercioDocsSentDocumentsStateDataCopyWithImpl<$Res>;
  $Res call({List<CommercioDoc> sentDocuments});
}

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
    Object sentDocuments = freezed,
  }) {
    return _then(CommercioDocsSentDocumentsStateData(
      sentDocuments: sentDocuments == freezed
          ? _value.sentDocuments
          : sentDocuments as List<CommercioDoc>,
    ));
  }
}

class _$CommercioDocsSentDocumentsStateData
    implements CommercioDocsSentDocumentsStateData {
  const _$CommercioDocsSentDocumentsStateData({@required this.sentDocuments})
      : assert(sentDocuments != null);

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

  @override
  $CommercioDocsSentDocumentsStateDataCopyWith<
          CommercioDocsSentDocumentsStateData>
      get copyWith => _$CommercioDocsSentDocumentsStateDataCopyWithImpl<
          CommercioDocsSentDocumentsStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(List<CommercioDoc> sentDocuments), {
    @required Result initial(),
    @required Result loading(),
    @required Result error(String error),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return $default(sentDocuments);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(List<CommercioDoc> sentDocuments), {
    Result initial(),
    Result loading(),
    Result error(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(sentDocuments);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CommercioDocsSentDocumentsStateData value), {
    @required Result initial(CommercioDocsSentDocumentsStateInitial value),
    @required Result loading(CommercioDocsSentDocumentsStateLoading value),
    @required Result error(CommercioDocsSentDocumentsStateError value),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CommercioDocsSentDocumentsStateData value), {
    Result initial(CommercioDocsSentDocumentsStateInitial value),
    Result loading(CommercioDocsSentDocumentsStateLoading value),
    Result error(CommercioDocsSentDocumentsStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class CommercioDocsSentDocumentsStateData
    implements CommercioDocsSentDocumentsState {
  const factory CommercioDocsSentDocumentsStateData(
          {@required List<CommercioDoc> sentDocuments}) =
      _$CommercioDocsSentDocumentsStateData;

  List<CommercioDoc> get sentDocuments;
  $CommercioDocsSentDocumentsStateDataCopyWith<
      CommercioDocsSentDocumentsStateData> get copyWith;
}

abstract class $CommercioDocsSentDocumentsStateInitialCopyWith<$Res> {
  factory $CommercioDocsSentDocumentsStateInitialCopyWith(
          CommercioDocsSentDocumentsStateInitial value,
          $Res Function(CommercioDocsSentDocumentsStateInitial) then) =
      _$CommercioDocsSentDocumentsStateInitialCopyWithImpl<$Res>;
}

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
  Result when<Result extends Object>(
    Result $default(List<CommercioDoc> sentDocuments), {
    @required Result initial(),
    @required Result loading(),
    @required Result error(String error),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(List<CommercioDoc> sentDocuments), {
    Result initial(),
    Result loading(),
    Result error(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CommercioDocsSentDocumentsStateData value), {
    @required Result initial(CommercioDocsSentDocumentsStateInitial value),
    @required Result loading(CommercioDocsSentDocumentsStateLoading value),
    @required Result error(CommercioDocsSentDocumentsStateError value),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CommercioDocsSentDocumentsStateData value), {
    Result initial(CommercioDocsSentDocumentsStateInitial value),
    Result loading(CommercioDocsSentDocumentsStateLoading value),
    Result error(CommercioDocsSentDocumentsStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
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

abstract class $CommercioDocsSentDocumentsStateLoadingCopyWith<$Res> {
  factory $CommercioDocsSentDocumentsStateLoadingCopyWith(
          CommercioDocsSentDocumentsStateLoading value,
          $Res Function(CommercioDocsSentDocumentsStateLoading) then) =
      _$CommercioDocsSentDocumentsStateLoadingCopyWithImpl<$Res>;
}

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
  Result when<Result extends Object>(
    Result $default(List<CommercioDoc> sentDocuments), {
    @required Result initial(),
    @required Result loading(),
    @required Result error(String error),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(List<CommercioDoc> sentDocuments), {
    Result initial(),
    Result loading(),
    Result error(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CommercioDocsSentDocumentsStateData value), {
    @required Result initial(CommercioDocsSentDocumentsStateInitial value),
    @required Result loading(CommercioDocsSentDocumentsStateLoading value),
    @required Result error(CommercioDocsSentDocumentsStateError value),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CommercioDocsSentDocumentsStateData value), {
    Result initial(CommercioDocsSentDocumentsStateInitial value),
    Result loading(CommercioDocsSentDocumentsStateLoading value),
    Result error(CommercioDocsSentDocumentsStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
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

abstract class $CommercioDocsSentDocumentsStateErrorCopyWith<$Res> {
  factory $CommercioDocsSentDocumentsStateErrorCopyWith(
          CommercioDocsSentDocumentsStateError value,
          $Res Function(CommercioDocsSentDocumentsStateError) then) =
      _$CommercioDocsSentDocumentsStateErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

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
    Object error = freezed,
  }) {
    return _then(CommercioDocsSentDocumentsStateError(
      error == freezed ? _value.error : error as String,
    ));
  }
}

class _$CommercioDocsSentDocumentsStateError
    implements CommercioDocsSentDocumentsStateError {
  const _$CommercioDocsSentDocumentsStateError([this.error]);

  @override
  final String error;

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

  @override
  $CommercioDocsSentDocumentsStateErrorCopyWith<
          CommercioDocsSentDocumentsStateError>
      get copyWith => _$CommercioDocsSentDocumentsStateErrorCopyWithImpl<
          CommercioDocsSentDocumentsStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(List<CommercioDoc> sentDocuments), {
    @required Result initial(),
    @required Result loading(),
    @required Result error(String error),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(List<CommercioDoc> sentDocuments), {
    Result initial(),
    Result loading(),
    Result error(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CommercioDocsSentDocumentsStateData value), {
    @required Result initial(CommercioDocsSentDocumentsStateInitial value),
    @required Result loading(CommercioDocsSentDocumentsStateLoading value),
    @required Result error(CommercioDocsSentDocumentsStateError value),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CommercioDocsSentDocumentsStateData value), {
    Result initial(CommercioDocsSentDocumentsStateInitial value),
    Result loading(CommercioDocsSentDocumentsStateLoading value),
    Result error(CommercioDocsSentDocumentsStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CommercioDocsSentDocumentsStateError
    implements CommercioDocsSentDocumentsState {
  const factory CommercioDocsSentDocumentsStateError([String error]) =
      _$CommercioDocsSentDocumentsStateError;

  String get error;
  $CommercioDocsSentDocumentsStateErrorCopyWith<
      CommercioDocsSentDocumentsStateError> get copyWith;
}

class _$CommercioDocsReceivedDocumentsStateTearOff {
  const _$CommercioDocsReceivedDocumentsStateTearOff();

  CommercioDocsReceivedDocumentsStateData call(
      {@required List<CommercioDoc> receivedDocuments}) {
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

  CommercioDocsReceivedDocumentsStateError error([String error]) {
    return CommercioDocsReceivedDocumentsStateError(
      error,
    );
  }
}

// ignore: unused_element
const $CommercioDocsReceivedDocumentsState =
    _$CommercioDocsReceivedDocumentsStateTearOff();

mixin _$CommercioDocsReceivedDocumentsState {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(List<CommercioDoc> receivedDocuments), {
    @required Result initial(),
    @required Result loading(),
    @required Result error(String error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(List<CommercioDoc> receivedDocuments), {
    Result initial(),
    Result loading(),
    Result error(String error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CommercioDocsReceivedDocumentsStateData value), {
    @required Result initial(CommercioDocsReceivedDocumentsStateInitial value),
    @required Result loading(CommercioDocsReceivedDocumentsStateLoading value),
    @required Result error(CommercioDocsReceivedDocumentsStateError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CommercioDocsReceivedDocumentsStateData value), {
    Result initial(CommercioDocsReceivedDocumentsStateInitial value),
    Result loading(CommercioDocsReceivedDocumentsStateLoading value),
    Result error(CommercioDocsReceivedDocumentsStateError value),
    @required Result orElse(),
  });
}

abstract class $CommercioDocsReceivedDocumentsStateCopyWith<$Res> {
  factory $CommercioDocsReceivedDocumentsStateCopyWith(
          CommercioDocsReceivedDocumentsState value,
          $Res Function(CommercioDocsReceivedDocumentsState) then) =
      _$CommercioDocsReceivedDocumentsStateCopyWithImpl<$Res>;
}

class _$CommercioDocsReceivedDocumentsStateCopyWithImpl<$Res>
    implements $CommercioDocsReceivedDocumentsStateCopyWith<$Res> {
  _$CommercioDocsReceivedDocumentsStateCopyWithImpl(this._value, this._then);

  final CommercioDocsReceivedDocumentsState _value;
  // ignore: unused_field
  final $Res Function(CommercioDocsReceivedDocumentsState) _then;
}

abstract class $CommercioDocsReceivedDocumentsStateDataCopyWith<$Res> {
  factory $CommercioDocsReceivedDocumentsStateDataCopyWith(
          CommercioDocsReceivedDocumentsStateData value,
          $Res Function(CommercioDocsReceivedDocumentsStateData) then) =
      _$CommercioDocsReceivedDocumentsStateDataCopyWithImpl<$Res>;
  $Res call({List<CommercioDoc> receivedDocuments});
}

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
    Object receivedDocuments = freezed,
  }) {
    return _then(CommercioDocsReceivedDocumentsStateData(
      receivedDocuments: receivedDocuments == freezed
          ? _value.receivedDocuments
          : receivedDocuments as List<CommercioDoc>,
    ));
  }
}

class _$CommercioDocsReceivedDocumentsStateData
    implements CommercioDocsReceivedDocumentsStateData {
  const _$CommercioDocsReceivedDocumentsStateData(
      {@required this.receivedDocuments})
      : assert(receivedDocuments != null);

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

  @override
  $CommercioDocsReceivedDocumentsStateDataCopyWith<
          CommercioDocsReceivedDocumentsStateData>
      get copyWith => _$CommercioDocsReceivedDocumentsStateDataCopyWithImpl<
          CommercioDocsReceivedDocumentsStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(List<CommercioDoc> receivedDocuments), {
    @required Result initial(),
    @required Result loading(),
    @required Result error(String error),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return $default(receivedDocuments);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(List<CommercioDoc> receivedDocuments), {
    Result initial(),
    Result loading(),
    Result error(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(receivedDocuments);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CommercioDocsReceivedDocumentsStateData value), {
    @required Result initial(CommercioDocsReceivedDocumentsStateInitial value),
    @required Result loading(CommercioDocsReceivedDocumentsStateLoading value),
    @required Result error(CommercioDocsReceivedDocumentsStateError value),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CommercioDocsReceivedDocumentsStateData value), {
    Result initial(CommercioDocsReceivedDocumentsStateInitial value),
    Result loading(CommercioDocsReceivedDocumentsStateLoading value),
    Result error(CommercioDocsReceivedDocumentsStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class CommercioDocsReceivedDocumentsStateData
    implements CommercioDocsReceivedDocumentsState {
  const factory CommercioDocsReceivedDocumentsStateData(
          {@required List<CommercioDoc> receivedDocuments}) =
      _$CommercioDocsReceivedDocumentsStateData;

  List<CommercioDoc> get receivedDocuments;
  $CommercioDocsReceivedDocumentsStateDataCopyWith<
      CommercioDocsReceivedDocumentsStateData> get copyWith;
}

abstract class $CommercioDocsReceivedDocumentsStateInitialCopyWith<$Res> {
  factory $CommercioDocsReceivedDocumentsStateInitialCopyWith(
          CommercioDocsReceivedDocumentsStateInitial value,
          $Res Function(CommercioDocsReceivedDocumentsStateInitial) then) =
      _$CommercioDocsReceivedDocumentsStateInitialCopyWithImpl<$Res>;
}

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
  Result when<Result extends Object>(
    Result $default(List<CommercioDoc> receivedDocuments), {
    @required Result initial(),
    @required Result loading(),
    @required Result error(String error),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(List<CommercioDoc> receivedDocuments), {
    Result initial(),
    Result loading(),
    Result error(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CommercioDocsReceivedDocumentsStateData value), {
    @required Result initial(CommercioDocsReceivedDocumentsStateInitial value),
    @required Result loading(CommercioDocsReceivedDocumentsStateLoading value),
    @required Result error(CommercioDocsReceivedDocumentsStateError value),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CommercioDocsReceivedDocumentsStateData value), {
    Result initial(CommercioDocsReceivedDocumentsStateInitial value),
    Result loading(CommercioDocsReceivedDocumentsStateLoading value),
    Result error(CommercioDocsReceivedDocumentsStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
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

abstract class $CommercioDocsReceivedDocumentsStateLoadingCopyWith<$Res> {
  factory $CommercioDocsReceivedDocumentsStateLoadingCopyWith(
          CommercioDocsReceivedDocumentsStateLoading value,
          $Res Function(CommercioDocsReceivedDocumentsStateLoading) then) =
      _$CommercioDocsReceivedDocumentsStateLoadingCopyWithImpl<$Res>;
}

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
  Result when<Result extends Object>(
    Result $default(List<CommercioDoc> receivedDocuments), {
    @required Result initial(),
    @required Result loading(),
    @required Result error(String error),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(List<CommercioDoc> receivedDocuments), {
    Result initial(),
    Result loading(),
    Result error(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CommercioDocsReceivedDocumentsStateData value), {
    @required Result initial(CommercioDocsReceivedDocumentsStateInitial value),
    @required Result loading(CommercioDocsReceivedDocumentsStateLoading value),
    @required Result error(CommercioDocsReceivedDocumentsStateError value),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CommercioDocsReceivedDocumentsStateData value), {
    Result initial(CommercioDocsReceivedDocumentsStateInitial value),
    Result loading(CommercioDocsReceivedDocumentsStateLoading value),
    Result error(CommercioDocsReceivedDocumentsStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
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

abstract class $CommercioDocsReceivedDocumentsStateErrorCopyWith<$Res> {
  factory $CommercioDocsReceivedDocumentsStateErrorCopyWith(
          CommercioDocsReceivedDocumentsStateError value,
          $Res Function(CommercioDocsReceivedDocumentsStateError) then) =
      _$CommercioDocsReceivedDocumentsStateErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

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
    Object error = freezed,
  }) {
    return _then(CommercioDocsReceivedDocumentsStateError(
      error == freezed ? _value.error : error as String,
    ));
  }
}

class _$CommercioDocsReceivedDocumentsStateError
    implements CommercioDocsReceivedDocumentsStateError {
  const _$CommercioDocsReceivedDocumentsStateError([this.error]);

  @override
  final String error;

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

  @override
  $CommercioDocsReceivedDocumentsStateErrorCopyWith<
          CommercioDocsReceivedDocumentsStateError>
      get copyWith => _$CommercioDocsReceivedDocumentsStateErrorCopyWithImpl<
          CommercioDocsReceivedDocumentsStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(List<CommercioDoc> receivedDocuments), {
    @required Result initial(),
    @required Result loading(),
    @required Result error(String error),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(List<CommercioDoc> receivedDocuments), {
    Result initial(),
    Result loading(),
    Result error(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CommercioDocsReceivedDocumentsStateData value), {
    @required Result initial(CommercioDocsReceivedDocumentsStateInitial value),
    @required Result loading(CommercioDocsReceivedDocumentsStateLoading value),
    @required Result error(CommercioDocsReceivedDocumentsStateError value),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CommercioDocsReceivedDocumentsStateData value), {
    Result initial(CommercioDocsReceivedDocumentsStateInitial value),
    Result loading(CommercioDocsReceivedDocumentsStateLoading value),
    Result error(CommercioDocsReceivedDocumentsStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CommercioDocsReceivedDocumentsStateError
    implements CommercioDocsReceivedDocumentsState {
  const factory CommercioDocsReceivedDocumentsStateError([String error]) =
      _$CommercioDocsReceivedDocumentsStateError;

  String get error;
  $CommercioDocsReceivedDocumentsStateErrorCopyWith<
      CommercioDocsReceivedDocumentsStateError> get copyWith;
}

class _$CommercioDocsSentReceiptsStateTearOff {
  const _$CommercioDocsSentReceiptsStateTearOff();

  CommercioDocsSentReceiptsStateData call(
      {@required List<CommercioDocReceipt> sentReceipts}) {
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

  CommercioDocsSentReceiptsStateError error([String error]) {
    return CommercioDocsSentReceiptsStateError(
      error,
    );
  }
}

// ignore: unused_element
const $CommercioDocsSentReceiptsState =
    _$CommercioDocsSentReceiptsStateTearOff();

mixin _$CommercioDocsSentReceiptsState {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(List<CommercioDocReceipt> sentReceipts), {
    @required Result initial(),
    @required Result loading(),
    @required Result error(String error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(List<CommercioDocReceipt> sentReceipts), {
    Result initial(),
    Result loading(),
    Result error(String error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CommercioDocsSentReceiptsStateData value), {
    @required Result initial(CommercioDocsSentReceiptsStateInitial value),
    @required Result loading(CommercioDocsSentReceiptsStateLoading value),
    @required Result error(CommercioDocsSentReceiptsStateError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CommercioDocsSentReceiptsStateData value), {
    Result initial(CommercioDocsSentReceiptsStateInitial value),
    Result loading(CommercioDocsSentReceiptsStateLoading value),
    Result error(CommercioDocsSentReceiptsStateError value),
    @required Result orElse(),
  });
}

abstract class $CommercioDocsSentReceiptsStateCopyWith<$Res> {
  factory $CommercioDocsSentReceiptsStateCopyWith(
          CommercioDocsSentReceiptsState value,
          $Res Function(CommercioDocsSentReceiptsState) then) =
      _$CommercioDocsSentReceiptsStateCopyWithImpl<$Res>;
}

class _$CommercioDocsSentReceiptsStateCopyWithImpl<$Res>
    implements $CommercioDocsSentReceiptsStateCopyWith<$Res> {
  _$CommercioDocsSentReceiptsStateCopyWithImpl(this._value, this._then);

  final CommercioDocsSentReceiptsState _value;
  // ignore: unused_field
  final $Res Function(CommercioDocsSentReceiptsState) _then;
}

abstract class $CommercioDocsSentReceiptsStateDataCopyWith<$Res> {
  factory $CommercioDocsSentReceiptsStateDataCopyWith(
          CommercioDocsSentReceiptsStateData value,
          $Res Function(CommercioDocsSentReceiptsStateData) then) =
      _$CommercioDocsSentReceiptsStateDataCopyWithImpl<$Res>;
  $Res call({List<CommercioDocReceipt> sentReceipts});
}

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
    Object sentReceipts = freezed,
  }) {
    return _then(CommercioDocsSentReceiptsStateData(
      sentReceipts: sentReceipts == freezed
          ? _value.sentReceipts
          : sentReceipts as List<CommercioDocReceipt>,
    ));
  }
}

class _$CommercioDocsSentReceiptsStateData
    implements CommercioDocsSentReceiptsStateData {
  const _$CommercioDocsSentReceiptsStateData({@required this.sentReceipts})
      : assert(sentReceipts != null);

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

  @override
  $CommercioDocsSentReceiptsStateDataCopyWith<
          CommercioDocsSentReceiptsStateData>
      get copyWith => _$CommercioDocsSentReceiptsStateDataCopyWithImpl<
          CommercioDocsSentReceiptsStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(List<CommercioDocReceipt> sentReceipts), {
    @required Result initial(),
    @required Result loading(),
    @required Result error(String error),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return $default(sentReceipts);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(List<CommercioDocReceipt> sentReceipts), {
    Result initial(),
    Result loading(),
    Result error(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(sentReceipts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CommercioDocsSentReceiptsStateData value), {
    @required Result initial(CommercioDocsSentReceiptsStateInitial value),
    @required Result loading(CommercioDocsSentReceiptsStateLoading value),
    @required Result error(CommercioDocsSentReceiptsStateError value),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CommercioDocsSentReceiptsStateData value), {
    Result initial(CommercioDocsSentReceiptsStateInitial value),
    Result loading(CommercioDocsSentReceiptsStateLoading value),
    Result error(CommercioDocsSentReceiptsStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class CommercioDocsSentReceiptsStateData
    implements CommercioDocsSentReceiptsState {
  const factory CommercioDocsSentReceiptsStateData(
          {@required List<CommercioDocReceipt> sentReceipts}) =
      _$CommercioDocsSentReceiptsStateData;

  List<CommercioDocReceipt> get sentReceipts;
  $CommercioDocsSentReceiptsStateDataCopyWith<
      CommercioDocsSentReceiptsStateData> get copyWith;
}

abstract class $CommercioDocsSentReceiptsStateInitialCopyWith<$Res> {
  factory $CommercioDocsSentReceiptsStateInitialCopyWith(
          CommercioDocsSentReceiptsStateInitial value,
          $Res Function(CommercioDocsSentReceiptsStateInitial) then) =
      _$CommercioDocsSentReceiptsStateInitialCopyWithImpl<$Res>;
}

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
  Result when<Result extends Object>(
    Result $default(List<CommercioDocReceipt> sentReceipts), {
    @required Result initial(),
    @required Result loading(),
    @required Result error(String error),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(List<CommercioDocReceipt> sentReceipts), {
    Result initial(),
    Result loading(),
    Result error(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CommercioDocsSentReceiptsStateData value), {
    @required Result initial(CommercioDocsSentReceiptsStateInitial value),
    @required Result loading(CommercioDocsSentReceiptsStateLoading value),
    @required Result error(CommercioDocsSentReceiptsStateError value),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CommercioDocsSentReceiptsStateData value), {
    Result initial(CommercioDocsSentReceiptsStateInitial value),
    Result loading(CommercioDocsSentReceiptsStateLoading value),
    Result error(CommercioDocsSentReceiptsStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
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

abstract class $CommercioDocsSentReceiptsStateLoadingCopyWith<$Res> {
  factory $CommercioDocsSentReceiptsStateLoadingCopyWith(
          CommercioDocsSentReceiptsStateLoading value,
          $Res Function(CommercioDocsSentReceiptsStateLoading) then) =
      _$CommercioDocsSentReceiptsStateLoadingCopyWithImpl<$Res>;
}

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
  Result when<Result extends Object>(
    Result $default(List<CommercioDocReceipt> sentReceipts), {
    @required Result initial(),
    @required Result loading(),
    @required Result error(String error),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(List<CommercioDocReceipt> sentReceipts), {
    Result initial(),
    Result loading(),
    Result error(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CommercioDocsSentReceiptsStateData value), {
    @required Result initial(CommercioDocsSentReceiptsStateInitial value),
    @required Result loading(CommercioDocsSentReceiptsStateLoading value),
    @required Result error(CommercioDocsSentReceiptsStateError value),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CommercioDocsSentReceiptsStateData value), {
    Result initial(CommercioDocsSentReceiptsStateInitial value),
    Result loading(CommercioDocsSentReceiptsStateLoading value),
    Result error(CommercioDocsSentReceiptsStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
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

abstract class $CommercioDocsSentReceiptsStateErrorCopyWith<$Res> {
  factory $CommercioDocsSentReceiptsStateErrorCopyWith(
          CommercioDocsSentReceiptsStateError value,
          $Res Function(CommercioDocsSentReceiptsStateError) then) =
      _$CommercioDocsSentReceiptsStateErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

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
    Object error = freezed,
  }) {
    return _then(CommercioDocsSentReceiptsStateError(
      error == freezed ? _value.error : error as String,
    ));
  }
}

class _$CommercioDocsSentReceiptsStateError
    implements CommercioDocsSentReceiptsStateError {
  const _$CommercioDocsSentReceiptsStateError([this.error]);

  @override
  final String error;

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

  @override
  $CommercioDocsSentReceiptsStateErrorCopyWith<
          CommercioDocsSentReceiptsStateError>
      get copyWith => _$CommercioDocsSentReceiptsStateErrorCopyWithImpl<
          CommercioDocsSentReceiptsStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(List<CommercioDocReceipt> sentReceipts), {
    @required Result initial(),
    @required Result loading(),
    @required Result error(String error),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(List<CommercioDocReceipt> sentReceipts), {
    Result initial(),
    Result loading(),
    Result error(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CommercioDocsSentReceiptsStateData value), {
    @required Result initial(CommercioDocsSentReceiptsStateInitial value),
    @required Result loading(CommercioDocsSentReceiptsStateLoading value),
    @required Result error(CommercioDocsSentReceiptsStateError value),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CommercioDocsSentReceiptsStateData value), {
    Result initial(CommercioDocsSentReceiptsStateInitial value),
    Result loading(CommercioDocsSentReceiptsStateLoading value),
    Result error(CommercioDocsSentReceiptsStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CommercioDocsSentReceiptsStateError
    implements CommercioDocsSentReceiptsState {
  const factory CommercioDocsSentReceiptsStateError([String error]) =
      _$CommercioDocsSentReceiptsStateError;

  String get error;
  $CommercioDocsSentReceiptsStateErrorCopyWith<
      CommercioDocsSentReceiptsStateError> get copyWith;
}

class _$CommercioDocsReceivedReceiptsStateTearOff {
  const _$CommercioDocsReceivedReceiptsStateTearOff();

  CommercioDocsReceivedReceiptsStateData call(
      {@required List<CommercioDocReceipt> receivedReceipts}) {
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

  CommercioDocsReceivedReceiptsStateError error([String error]) {
    return CommercioDocsReceivedReceiptsStateError(
      error,
    );
  }
}

// ignore: unused_element
const $CommercioDocsReceivedReceiptsState =
    _$CommercioDocsReceivedReceiptsStateTearOff();

mixin _$CommercioDocsReceivedReceiptsState {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(List<CommercioDocReceipt> receivedReceipts), {
    @required Result initial(),
    @required Result loading(),
    @required Result error(String error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(List<CommercioDocReceipt> receivedReceipts), {
    Result initial(),
    Result loading(),
    Result error(String error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CommercioDocsReceivedReceiptsStateData value), {
    @required Result initial(CommercioDocsReceivedReceiptsStateInitial value),
    @required Result loading(CommercioDocsReceivedReceiptsStateLoading value),
    @required Result error(CommercioDocsReceivedReceiptsStateError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CommercioDocsReceivedReceiptsStateData value), {
    Result initial(CommercioDocsReceivedReceiptsStateInitial value),
    Result loading(CommercioDocsReceivedReceiptsStateLoading value),
    Result error(CommercioDocsReceivedReceiptsStateError value),
    @required Result orElse(),
  });
}

abstract class $CommercioDocsReceivedReceiptsStateCopyWith<$Res> {
  factory $CommercioDocsReceivedReceiptsStateCopyWith(
          CommercioDocsReceivedReceiptsState value,
          $Res Function(CommercioDocsReceivedReceiptsState) then) =
      _$CommercioDocsReceivedReceiptsStateCopyWithImpl<$Res>;
}

class _$CommercioDocsReceivedReceiptsStateCopyWithImpl<$Res>
    implements $CommercioDocsReceivedReceiptsStateCopyWith<$Res> {
  _$CommercioDocsReceivedReceiptsStateCopyWithImpl(this._value, this._then);

  final CommercioDocsReceivedReceiptsState _value;
  // ignore: unused_field
  final $Res Function(CommercioDocsReceivedReceiptsState) _then;
}

abstract class $CommercioDocsReceivedReceiptsStateDataCopyWith<$Res> {
  factory $CommercioDocsReceivedReceiptsStateDataCopyWith(
          CommercioDocsReceivedReceiptsStateData value,
          $Res Function(CommercioDocsReceivedReceiptsStateData) then) =
      _$CommercioDocsReceivedReceiptsStateDataCopyWithImpl<$Res>;
  $Res call({List<CommercioDocReceipt> receivedReceipts});
}

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
    Object receivedReceipts = freezed,
  }) {
    return _then(CommercioDocsReceivedReceiptsStateData(
      receivedReceipts: receivedReceipts == freezed
          ? _value.receivedReceipts
          : receivedReceipts as List<CommercioDocReceipt>,
    ));
  }
}

class _$CommercioDocsReceivedReceiptsStateData
    implements CommercioDocsReceivedReceiptsStateData {
  const _$CommercioDocsReceivedReceiptsStateData(
      {@required this.receivedReceipts})
      : assert(receivedReceipts != null);

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

  @override
  $CommercioDocsReceivedReceiptsStateDataCopyWith<
          CommercioDocsReceivedReceiptsStateData>
      get copyWith => _$CommercioDocsReceivedReceiptsStateDataCopyWithImpl<
          CommercioDocsReceivedReceiptsStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(List<CommercioDocReceipt> receivedReceipts), {
    @required Result initial(),
    @required Result loading(),
    @required Result error(String error),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return $default(receivedReceipts);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(List<CommercioDocReceipt> receivedReceipts), {
    Result initial(),
    Result loading(),
    Result error(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(receivedReceipts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CommercioDocsReceivedReceiptsStateData value), {
    @required Result initial(CommercioDocsReceivedReceiptsStateInitial value),
    @required Result loading(CommercioDocsReceivedReceiptsStateLoading value),
    @required Result error(CommercioDocsReceivedReceiptsStateError value),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CommercioDocsReceivedReceiptsStateData value), {
    Result initial(CommercioDocsReceivedReceiptsStateInitial value),
    Result loading(CommercioDocsReceivedReceiptsStateLoading value),
    Result error(CommercioDocsReceivedReceiptsStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class CommercioDocsReceivedReceiptsStateData
    implements CommercioDocsReceivedReceiptsState {
  const factory CommercioDocsReceivedReceiptsStateData(
          {@required List<CommercioDocReceipt> receivedReceipts}) =
      _$CommercioDocsReceivedReceiptsStateData;

  List<CommercioDocReceipt> get receivedReceipts;
  $CommercioDocsReceivedReceiptsStateDataCopyWith<
      CommercioDocsReceivedReceiptsStateData> get copyWith;
}

abstract class $CommercioDocsReceivedReceiptsStateInitialCopyWith<$Res> {
  factory $CommercioDocsReceivedReceiptsStateInitialCopyWith(
          CommercioDocsReceivedReceiptsStateInitial value,
          $Res Function(CommercioDocsReceivedReceiptsStateInitial) then) =
      _$CommercioDocsReceivedReceiptsStateInitialCopyWithImpl<$Res>;
}

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
  Result when<Result extends Object>(
    Result $default(List<CommercioDocReceipt> receivedReceipts), {
    @required Result initial(),
    @required Result loading(),
    @required Result error(String error),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(List<CommercioDocReceipt> receivedReceipts), {
    Result initial(),
    Result loading(),
    Result error(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CommercioDocsReceivedReceiptsStateData value), {
    @required Result initial(CommercioDocsReceivedReceiptsStateInitial value),
    @required Result loading(CommercioDocsReceivedReceiptsStateLoading value),
    @required Result error(CommercioDocsReceivedReceiptsStateError value),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CommercioDocsReceivedReceiptsStateData value), {
    Result initial(CommercioDocsReceivedReceiptsStateInitial value),
    Result loading(CommercioDocsReceivedReceiptsStateLoading value),
    Result error(CommercioDocsReceivedReceiptsStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
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

abstract class $CommercioDocsReceivedReceiptsStateLoadingCopyWith<$Res> {
  factory $CommercioDocsReceivedReceiptsStateLoadingCopyWith(
          CommercioDocsReceivedReceiptsStateLoading value,
          $Res Function(CommercioDocsReceivedReceiptsStateLoading) then) =
      _$CommercioDocsReceivedReceiptsStateLoadingCopyWithImpl<$Res>;
}

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
  Result when<Result extends Object>(
    Result $default(List<CommercioDocReceipt> receivedReceipts), {
    @required Result initial(),
    @required Result loading(),
    @required Result error(String error),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(List<CommercioDocReceipt> receivedReceipts), {
    Result initial(),
    Result loading(),
    Result error(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CommercioDocsReceivedReceiptsStateData value), {
    @required Result initial(CommercioDocsReceivedReceiptsStateInitial value),
    @required Result loading(CommercioDocsReceivedReceiptsStateLoading value),
    @required Result error(CommercioDocsReceivedReceiptsStateError value),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CommercioDocsReceivedReceiptsStateData value), {
    Result initial(CommercioDocsReceivedReceiptsStateInitial value),
    Result loading(CommercioDocsReceivedReceiptsStateLoading value),
    Result error(CommercioDocsReceivedReceiptsStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
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

abstract class $CommercioDocsReceivedReceiptsStateErrorCopyWith<$Res> {
  factory $CommercioDocsReceivedReceiptsStateErrorCopyWith(
          CommercioDocsReceivedReceiptsStateError value,
          $Res Function(CommercioDocsReceivedReceiptsStateError) then) =
      _$CommercioDocsReceivedReceiptsStateErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

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
    Object error = freezed,
  }) {
    return _then(CommercioDocsReceivedReceiptsStateError(
      error == freezed ? _value.error : error as String,
    ));
  }
}

class _$CommercioDocsReceivedReceiptsStateError
    implements CommercioDocsReceivedReceiptsStateError {
  const _$CommercioDocsReceivedReceiptsStateError([this.error]);

  @override
  final String error;

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

  @override
  $CommercioDocsReceivedReceiptsStateErrorCopyWith<
          CommercioDocsReceivedReceiptsStateError>
      get copyWith => _$CommercioDocsReceivedReceiptsStateErrorCopyWithImpl<
          CommercioDocsReceivedReceiptsStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(List<CommercioDocReceipt> receivedReceipts), {
    @required Result initial(),
    @required Result loading(),
    @required Result error(String error),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(List<CommercioDocReceipt> receivedReceipts), {
    Result initial(),
    Result loading(),
    Result error(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CommercioDocsReceivedReceiptsStateData value), {
    @required Result initial(CommercioDocsReceivedReceiptsStateInitial value),
    @required Result loading(CommercioDocsReceivedReceiptsStateLoading value),
    @required Result error(CommercioDocsReceivedReceiptsStateError value),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CommercioDocsReceivedReceiptsStateData value), {
    Result initial(CommercioDocsReceivedReceiptsStateInitial value),
    Result loading(CommercioDocsReceivedReceiptsStateLoading value),
    Result error(CommercioDocsReceivedReceiptsStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CommercioDocsReceivedReceiptsStateError
    implements CommercioDocsReceivedReceiptsState {
  const factory CommercioDocsReceivedReceiptsStateError([String error]) =
      _$CommercioDocsReceivedReceiptsStateError;

  String get error;
  $CommercioDocsReceivedReceiptsStateErrorCopyWith<
      CommercioDocsReceivedReceiptsStateError> get copyWith;
}

class _$CommercioDocsEncDataStateTearOff {
  const _$CommercioDocsEncDataStateTearOff();

  CommercioDocsEncDataStateData call(
      {@required Map<EncryptedData, bool> encryptedData}) {
    return CommercioDocsEncDataStateData(
      encryptedData: encryptedData,
    );
  }

  CommercioDocsEncDataStateInitial initial(
      {@required Map<EncryptedData, bool> encryptedData}) {
    return CommercioDocsEncDataStateInitial(
      encryptedData: encryptedData,
    );
  }

  CommercioDocsEncDataStateLoading loading() {
    return const CommercioDocsEncDataStateLoading();
  }

  CommercioDocsEncDataStateError error([String error]) {
    return CommercioDocsEncDataStateError(
      error,
    );
  }
}

// ignore: unused_element
const $CommercioDocsEncDataState = _$CommercioDocsEncDataStateTearOff();

mixin _$CommercioDocsEncDataState {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(Map<EncryptedData, bool> encryptedData), {
    @required Result initial(Map<EncryptedData, bool> encryptedData),
    @required Result loading(),
    @required Result error(String error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(Map<EncryptedData, bool> encryptedData), {
    Result initial(Map<EncryptedData, bool> encryptedData),
    Result loading(),
    Result error(String error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CommercioDocsEncDataStateData value), {
    @required Result initial(CommercioDocsEncDataStateInitial value),
    @required Result loading(CommercioDocsEncDataStateLoading value),
    @required Result error(CommercioDocsEncDataStateError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CommercioDocsEncDataStateData value), {
    Result initial(CommercioDocsEncDataStateInitial value),
    Result loading(CommercioDocsEncDataStateLoading value),
    Result error(CommercioDocsEncDataStateError value),
    @required Result orElse(),
  });
}

abstract class $CommercioDocsEncDataStateCopyWith<$Res> {
  factory $CommercioDocsEncDataStateCopyWith(CommercioDocsEncDataState value,
          $Res Function(CommercioDocsEncDataState) then) =
      _$CommercioDocsEncDataStateCopyWithImpl<$Res>;
}

class _$CommercioDocsEncDataStateCopyWithImpl<$Res>
    implements $CommercioDocsEncDataStateCopyWith<$Res> {
  _$CommercioDocsEncDataStateCopyWithImpl(this._value, this._then);

  final CommercioDocsEncDataState _value;
  // ignore: unused_field
  final $Res Function(CommercioDocsEncDataState) _then;
}

abstract class $CommercioDocsEncDataStateDataCopyWith<$Res> {
  factory $CommercioDocsEncDataStateDataCopyWith(
          CommercioDocsEncDataStateData value,
          $Res Function(CommercioDocsEncDataStateData) then) =
      _$CommercioDocsEncDataStateDataCopyWithImpl<$Res>;
  $Res call({Map<EncryptedData, bool> encryptedData});
}

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
    Object encryptedData = freezed,
  }) {
    return _then(CommercioDocsEncDataStateData(
      encryptedData: encryptedData == freezed
          ? _value.encryptedData
          : encryptedData as Map<EncryptedData, bool>,
    ));
  }
}

class _$CommercioDocsEncDataStateData implements CommercioDocsEncDataStateData {
  const _$CommercioDocsEncDataStateData({@required this.encryptedData})
      : assert(encryptedData != null);

  @override
  final Map<EncryptedData, bool> encryptedData;

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

  @override
  $CommercioDocsEncDataStateDataCopyWith<CommercioDocsEncDataStateData>
      get copyWith => _$CommercioDocsEncDataStateDataCopyWithImpl<
          CommercioDocsEncDataStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(Map<EncryptedData, bool> encryptedData), {
    @required Result initial(Map<EncryptedData, bool> encryptedData),
    @required Result loading(),
    @required Result error(String error),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return $default(encryptedData);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(Map<EncryptedData, bool> encryptedData), {
    Result initial(Map<EncryptedData, bool> encryptedData),
    Result loading(),
    Result error(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(encryptedData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CommercioDocsEncDataStateData value), {
    @required Result initial(CommercioDocsEncDataStateInitial value),
    @required Result loading(CommercioDocsEncDataStateLoading value),
    @required Result error(CommercioDocsEncDataStateError value),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CommercioDocsEncDataStateData value), {
    Result initial(CommercioDocsEncDataStateInitial value),
    Result loading(CommercioDocsEncDataStateLoading value),
    Result error(CommercioDocsEncDataStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class CommercioDocsEncDataStateData
    implements CommercioDocsEncDataState {
  const factory CommercioDocsEncDataStateData(
          {@required Map<EncryptedData, bool> encryptedData}) =
      _$CommercioDocsEncDataStateData;

  Map<EncryptedData, bool> get encryptedData;
  $CommercioDocsEncDataStateDataCopyWith<CommercioDocsEncDataStateData>
      get copyWith;
}

abstract class $CommercioDocsEncDataStateInitialCopyWith<$Res> {
  factory $CommercioDocsEncDataStateInitialCopyWith(
          CommercioDocsEncDataStateInitial value,
          $Res Function(CommercioDocsEncDataStateInitial) then) =
      _$CommercioDocsEncDataStateInitialCopyWithImpl<$Res>;
  $Res call({Map<EncryptedData, bool> encryptedData});
}

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
    Object encryptedData = freezed,
  }) {
    return _then(CommercioDocsEncDataStateInitial(
      encryptedData: encryptedData == freezed
          ? _value.encryptedData
          : encryptedData as Map<EncryptedData, bool>,
    ));
  }
}

class _$CommercioDocsEncDataStateInitial
    implements CommercioDocsEncDataStateInitial {
  const _$CommercioDocsEncDataStateInitial({@required this.encryptedData})
      : assert(encryptedData != null);

  @override
  final Map<EncryptedData, bool> encryptedData;

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

  @override
  $CommercioDocsEncDataStateInitialCopyWith<CommercioDocsEncDataStateInitial>
      get copyWith => _$CommercioDocsEncDataStateInitialCopyWithImpl<
          CommercioDocsEncDataStateInitial>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(Map<EncryptedData, bool> encryptedData), {
    @required Result initial(Map<EncryptedData, bool> encryptedData),
    @required Result loading(),
    @required Result error(String error),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return initial(encryptedData);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(Map<EncryptedData, bool> encryptedData), {
    Result initial(Map<EncryptedData, bool> encryptedData),
    Result loading(),
    Result error(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(encryptedData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CommercioDocsEncDataStateData value), {
    @required Result initial(CommercioDocsEncDataStateInitial value),
    @required Result loading(CommercioDocsEncDataStateLoading value),
    @required Result error(CommercioDocsEncDataStateError value),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CommercioDocsEncDataStateData value), {
    Result initial(CommercioDocsEncDataStateInitial value),
    Result loading(CommercioDocsEncDataStateLoading value),
    Result error(CommercioDocsEncDataStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CommercioDocsEncDataStateInitial
    implements CommercioDocsEncDataState {
  const factory CommercioDocsEncDataStateInitial(
          {@required Map<EncryptedData, bool> encryptedData}) =
      _$CommercioDocsEncDataStateInitial;

  Map<EncryptedData, bool> get encryptedData;
  $CommercioDocsEncDataStateInitialCopyWith<CommercioDocsEncDataStateInitial>
      get copyWith;
}

abstract class $CommercioDocsEncDataStateLoadingCopyWith<$Res> {
  factory $CommercioDocsEncDataStateLoadingCopyWith(
          CommercioDocsEncDataStateLoading value,
          $Res Function(CommercioDocsEncDataStateLoading) then) =
      _$CommercioDocsEncDataStateLoadingCopyWithImpl<$Res>;
}

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
  Result when<Result extends Object>(
    Result $default(Map<EncryptedData, bool> encryptedData), {
    @required Result initial(Map<EncryptedData, bool> encryptedData),
    @required Result loading(),
    @required Result error(String error),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(Map<EncryptedData, bool> encryptedData), {
    Result initial(Map<EncryptedData, bool> encryptedData),
    Result loading(),
    Result error(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CommercioDocsEncDataStateData value), {
    @required Result initial(CommercioDocsEncDataStateInitial value),
    @required Result loading(CommercioDocsEncDataStateLoading value),
    @required Result error(CommercioDocsEncDataStateError value),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CommercioDocsEncDataStateData value), {
    Result initial(CommercioDocsEncDataStateInitial value),
    Result loading(CommercioDocsEncDataStateLoading value),
    Result error(CommercioDocsEncDataStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
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

abstract class $CommercioDocsEncDataStateErrorCopyWith<$Res> {
  factory $CommercioDocsEncDataStateErrorCopyWith(
          CommercioDocsEncDataStateError value,
          $Res Function(CommercioDocsEncDataStateError) then) =
      _$CommercioDocsEncDataStateErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

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
    Object error = freezed,
  }) {
    return _then(CommercioDocsEncDataStateError(
      error == freezed ? _value.error : error as String,
    ));
  }
}

class _$CommercioDocsEncDataStateError
    implements CommercioDocsEncDataStateError {
  const _$CommercioDocsEncDataStateError([this.error]);

  @override
  final String error;

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

  @override
  $CommercioDocsEncDataStateErrorCopyWith<CommercioDocsEncDataStateError>
      get copyWith => _$CommercioDocsEncDataStateErrorCopyWithImpl<
          CommercioDocsEncDataStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(Map<EncryptedData, bool> encryptedData), {
    @required Result initial(Map<EncryptedData, bool> encryptedData),
    @required Result loading(),
    @required Result error(String error),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(Map<EncryptedData, bool> encryptedData), {
    Result initial(Map<EncryptedData, bool> encryptedData),
    Result loading(),
    Result error(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CommercioDocsEncDataStateData value), {
    @required Result initial(CommercioDocsEncDataStateInitial value),
    @required Result loading(CommercioDocsEncDataStateLoading value),
    @required Result error(CommercioDocsEncDataStateError value),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CommercioDocsEncDataStateData value), {
    Result initial(CommercioDocsEncDataStateInitial value),
    Result loading(CommercioDocsEncDataStateLoading value),
    Result error(CommercioDocsEncDataStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CommercioDocsEncDataStateError
    implements CommercioDocsEncDataState {
  const factory CommercioDocsEncDataStateError([String error]) =
      _$CommercioDocsEncDataStateError;

  String get error;
  $CommercioDocsEncDataStateErrorCopyWith<CommercioDocsEncDataStateError>
      get copyWith;
}
