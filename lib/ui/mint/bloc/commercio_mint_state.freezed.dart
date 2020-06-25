// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'commercio_mint_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$CommercioMintOpenedCdpStateTearOff {
  const _$CommercioMintOpenedCdpStateTearOff();

  CommercioMintOpenedCdpStateData call({@required TransactionResult result}) {
    return CommercioMintOpenedCdpStateData(
      result: result,
    );
  }

  CommercioMintOpenedCdpStateInitial initial() {
    return const CommercioMintOpenedCdpStateInitial();
  }

  CommercioMintOpenedCdpStateLoading loading() {
    return const CommercioMintOpenedCdpStateLoading();
  }

  CommercioMintOpenedCdpStateError error([String error]) {
    return CommercioMintOpenedCdpStateError(
      error,
    );
  }
}

// ignore: unused_element
const $CommercioMintOpenedCdpState = _$CommercioMintOpenedCdpStateTearOff();

mixin _$CommercioMintOpenedCdpState {
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
    Result $default(CommercioMintOpenedCdpStateData value), {
    @required Result initial(CommercioMintOpenedCdpStateInitial value),
    @required Result loading(CommercioMintOpenedCdpStateLoading value),
    @required Result error(CommercioMintOpenedCdpStateError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CommercioMintOpenedCdpStateData value), {
    Result initial(CommercioMintOpenedCdpStateInitial value),
    Result loading(CommercioMintOpenedCdpStateLoading value),
    Result error(CommercioMintOpenedCdpStateError value),
    @required Result orElse(),
  });
}

abstract class $CommercioMintOpenedCdpStateCopyWith<$Res> {
  factory $CommercioMintOpenedCdpStateCopyWith(
          CommercioMintOpenedCdpState value,
          $Res Function(CommercioMintOpenedCdpState) then) =
      _$CommercioMintOpenedCdpStateCopyWithImpl<$Res>;
}

class _$CommercioMintOpenedCdpStateCopyWithImpl<$Res>
    implements $CommercioMintOpenedCdpStateCopyWith<$Res> {
  _$CommercioMintOpenedCdpStateCopyWithImpl(this._value, this._then);

  final CommercioMintOpenedCdpState _value;
  // ignore: unused_field
  final $Res Function(CommercioMintOpenedCdpState) _then;
}

abstract class $CommercioMintOpenedCdpStateDataCopyWith<$Res> {
  factory $CommercioMintOpenedCdpStateDataCopyWith(
          CommercioMintOpenedCdpStateData value,
          $Res Function(CommercioMintOpenedCdpStateData) then) =
      _$CommercioMintOpenedCdpStateDataCopyWithImpl<$Res>;
  $Res call({TransactionResult result});
}

class _$CommercioMintOpenedCdpStateDataCopyWithImpl<$Res>
    extends _$CommercioMintOpenedCdpStateCopyWithImpl<$Res>
    implements $CommercioMintOpenedCdpStateDataCopyWith<$Res> {
  _$CommercioMintOpenedCdpStateDataCopyWithImpl(
      CommercioMintOpenedCdpStateData _value,
      $Res Function(CommercioMintOpenedCdpStateData) _then)
      : super(_value, (v) => _then(v as CommercioMintOpenedCdpStateData));

  @override
  CommercioMintOpenedCdpStateData get _value =>
      super._value as CommercioMintOpenedCdpStateData;

  @override
  $Res call({
    Object result = freezed,
  }) {
    return _then(CommercioMintOpenedCdpStateData(
      result: result == freezed ? _value.result : result as TransactionResult,
    ));
  }
}

class _$CommercioMintOpenedCdpStateData
    implements CommercioMintOpenedCdpStateData {
  const _$CommercioMintOpenedCdpStateData({@required this.result})
      : assert(result != null);

  @override
  final TransactionResult result;

  @override
  String toString() {
    return 'CommercioMintOpenedCdpState(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioMintOpenedCdpStateData &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(result);

  @override
  $CommercioMintOpenedCdpStateDataCopyWith<CommercioMintOpenedCdpStateData>
      get copyWith => _$CommercioMintOpenedCdpStateDataCopyWithImpl<
          CommercioMintOpenedCdpStateData>(this, _$identity);

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
    Result $default(CommercioMintOpenedCdpStateData value), {
    @required Result initial(CommercioMintOpenedCdpStateInitial value),
    @required Result loading(CommercioMintOpenedCdpStateLoading value),
    @required Result error(CommercioMintOpenedCdpStateError value),
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
    Result $default(CommercioMintOpenedCdpStateData value), {
    Result initial(CommercioMintOpenedCdpStateInitial value),
    Result loading(CommercioMintOpenedCdpStateLoading value),
    Result error(CommercioMintOpenedCdpStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class CommercioMintOpenedCdpStateData
    implements CommercioMintOpenedCdpState {
  const factory CommercioMintOpenedCdpStateData(
      {@required TransactionResult result}) = _$CommercioMintOpenedCdpStateData;

  TransactionResult get result;
  $CommercioMintOpenedCdpStateDataCopyWith<CommercioMintOpenedCdpStateData>
      get copyWith;
}

abstract class $CommercioMintOpenedCdpStateInitialCopyWith<$Res> {
  factory $CommercioMintOpenedCdpStateInitialCopyWith(
          CommercioMintOpenedCdpStateInitial value,
          $Res Function(CommercioMintOpenedCdpStateInitial) then) =
      _$CommercioMintOpenedCdpStateInitialCopyWithImpl<$Res>;
}

class _$CommercioMintOpenedCdpStateInitialCopyWithImpl<$Res>
    extends _$CommercioMintOpenedCdpStateCopyWithImpl<$Res>
    implements $CommercioMintOpenedCdpStateInitialCopyWith<$Res> {
  _$CommercioMintOpenedCdpStateInitialCopyWithImpl(
      CommercioMintOpenedCdpStateInitial _value,
      $Res Function(CommercioMintOpenedCdpStateInitial) _then)
      : super(_value, (v) => _then(v as CommercioMintOpenedCdpStateInitial));

  @override
  CommercioMintOpenedCdpStateInitial get _value =>
      super._value as CommercioMintOpenedCdpStateInitial;
}

class _$CommercioMintOpenedCdpStateInitial
    implements CommercioMintOpenedCdpStateInitial {
  const _$CommercioMintOpenedCdpStateInitial();

  @override
  String toString() {
    return 'CommercioMintOpenedCdpState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioMintOpenedCdpStateInitial);
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
    Result $default(CommercioMintOpenedCdpStateData value), {
    @required Result initial(CommercioMintOpenedCdpStateInitial value),
    @required Result loading(CommercioMintOpenedCdpStateLoading value),
    @required Result error(CommercioMintOpenedCdpStateError value),
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
    Result $default(CommercioMintOpenedCdpStateData value), {
    Result initial(CommercioMintOpenedCdpStateInitial value),
    Result loading(CommercioMintOpenedCdpStateLoading value),
    Result error(CommercioMintOpenedCdpStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CommercioMintOpenedCdpStateInitial
    implements CommercioMintOpenedCdpState {
  const factory CommercioMintOpenedCdpStateInitial() =
      _$CommercioMintOpenedCdpStateInitial;
}

abstract class $CommercioMintOpenedCdpStateLoadingCopyWith<$Res> {
  factory $CommercioMintOpenedCdpStateLoadingCopyWith(
          CommercioMintOpenedCdpStateLoading value,
          $Res Function(CommercioMintOpenedCdpStateLoading) then) =
      _$CommercioMintOpenedCdpStateLoadingCopyWithImpl<$Res>;
}

class _$CommercioMintOpenedCdpStateLoadingCopyWithImpl<$Res>
    extends _$CommercioMintOpenedCdpStateCopyWithImpl<$Res>
    implements $CommercioMintOpenedCdpStateLoadingCopyWith<$Res> {
  _$CommercioMintOpenedCdpStateLoadingCopyWithImpl(
      CommercioMintOpenedCdpStateLoading _value,
      $Res Function(CommercioMintOpenedCdpStateLoading) _then)
      : super(_value, (v) => _then(v as CommercioMintOpenedCdpStateLoading));

  @override
  CommercioMintOpenedCdpStateLoading get _value =>
      super._value as CommercioMintOpenedCdpStateLoading;
}

class _$CommercioMintOpenedCdpStateLoading
    implements CommercioMintOpenedCdpStateLoading {
  const _$CommercioMintOpenedCdpStateLoading();

  @override
  String toString() {
    return 'CommercioMintOpenedCdpState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioMintOpenedCdpStateLoading);
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
    Result $default(CommercioMintOpenedCdpStateData value), {
    @required Result initial(CommercioMintOpenedCdpStateInitial value),
    @required Result loading(CommercioMintOpenedCdpStateLoading value),
    @required Result error(CommercioMintOpenedCdpStateError value),
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
    Result $default(CommercioMintOpenedCdpStateData value), {
    Result initial(CommercioMintOpenedCdpStateInitial value),
    Result loading(CommercioMintOpenedCdpStateLoading value),
    Result error(CommercioMintOpenedCdpStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CommercioMintOpenedCdpStateLoading
    implements CommercioMintOpenedCdpState {
  const factory CommercioMintOpenedCdpStateLoading() =
      _$CommercioMintOpenedCdpStateLoading;
}

abstract class $CommercioMintOpenedCdpStateErrorCopyWith<$Res> {
  factory $CommercioMintOpenedCdpStateErrorCopyWith(
          CommercioMintOpenedCdpStateError value,
          $Res Function(CommercioMintOpenedCdpStateError) then) =
      _$CommercioMintOpenedCdpStateErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

class _$CommercioMintOpenedCdpStateErrorCopyWithImpl<$Res>
    extends _$CommercioMintOpenedCdpStateCopyWithImpl<$Res>
    implements $CommercioMintOpenedCdpStateErrorCopyWith<$Res> {
  _$CommercioMintOpenedCdpStateErrorCopyWithImpl(
      CommercioMintOpenedCdpStateError _value,
      $Res Function(CommercioMintOpenedCdpStateError) _then)
      : super(_value, (v) => _then(v as CommercioMintOpenedCdpStateError));

  @override
  CommercioMintOpenedCdpStateError get _value =>
      super._value as CommercioMintOpenedCdpStateError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(CommercioMintOpenedCdpStateError(
      error == freezed ? _value.error : error as String,
    ));
  }
}

class _$CommercioMintOpenedCdpStateError
    implements CommercioMintOpenedCdpStateError {
  const _$CommercioMintOpenedCdpStateError([this.error]);

  @override
  final String error;

  @override
  String toString() {
    return 'CommercioMintOpenedCdpState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioMintOpenedCdpStateError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $CommercioMintOpenedCdpStateErrorCopyWith<CommercioMintOpenedCdpStateError>
      get copyWith => _$CommercioMintOpenedCdpStateErrorCopyWithImpl<
          CommercioMintOpenedCdpStateError>(this, _$identity);

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
    Result $default(CommercioMintOpenedCdpStateData value), {
    @required Result initial(CommercioMintOpenedCdpStateInitial value),
    @required Result loading(CommercioMintOpenedCdpStateLoading value),
    @required Result error(CommercioMintOpenedCdpStateError value),
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
    Result $default(CommercioMintOpenedCdpStateData value), {
    Result initial(CommercioMintOpenedCdpStateInitial value),
    Result loading(CommercioMintOpenedCdpStateLoading value),
    Result error(CommercioMintOpenedCdpStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CommercioMintOpenedCdpStateError
    implements CommercioMintOpenedCdpState {
  const factory CommercioMintOpenedCdpStateError([String error]) =
      _$CommercioMintOpenedCdpStateError;

  String get error;
  $CommercioMintOpenedCdpStateErrorCopyWith<CommercioMintOpenedCdpStateError>
      get copyWith;
}

class _$CommercioMintClosedCdpStateTearOff {
  const _$CommercioMintClosedCdpStateTearOff();

  CommercioMintClosedCdpStateData call({@required TransactionResult result}) {
    return CommercioMintClosedCdpStateData(
      result: result,
    );
  }

  CommercioMintClosedCdpStateInitial initial() {
    return const CommercioMintClosedCdpStateInitial();
  }

  CommercioMintClosedCdpStateLoading loading() {
    return const CommercioMintClosedCdpStateLoading();
  }

  CommercioMintClosedCdpStateError error([String error]) {
    return CommercioMintClosedCdpStateError(
      error,
    );
  }
}

// ignore: unused_element
const $CommercioMintClosedCdpState = _$CommercioMintClosedCdpStateTearOff();

mixin _$CommercioMintClosedCdpState {
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
    Result $default(CommercioMintClosedCdpStateData value), {
    @required Result initial(CommercioMintClosedCdpStateInitial value),
    @required Result loading(CommercioMintClosedCdpStateLoading value),
    @required Result error(CommercioMintClosedCdpStateError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CommercioMintClosedCdpStateData value), {
    Result initial(CommercioMintClosedCdpStateInitial value),
    Result loading(CommercioMintClosedCdpStateLoading value),
    Result error(CommercioMintClosedCdpStateError value),
    @required Result orElse(),
  });
}

abstract class $CommercioMintClosedCdpStateCopyWith<$Res> {
  factory $CommercioMintClosedCdpStateCopyWith(
          CommercioMintClosedCdpState value,
          $Res Function(CommercioMintClosedCdpState) then) =
      _$CommercioMintClosedCdpStateCopyWithImpl<$Res>;
}

class _$CommercioMintClosedCdpStateCopyWithImpl<$Res>
    implements $CommercioMintClosedCdpStateCopyWith<$Res> {
  _$CommercioMintClosedCdpStateCopyWithImpl(this._value, this._then);

  final CommercioMintClosedCdpState _value;
  // ignore: unused_field
  final $Res Function(CommercioMintClosedCdpState) _then;
}

abstract class $CommercioMintClosedCdpStateDataCopyWith<$Res> {
  factory $CommercioMintClosedCdpStateDataCopyWith(
          CommercioMintClosedCdpStateData value,
          $Res Function(CommercioMintClosedCdpStateData) then) =
      _$CommercioMintClosedCdpStateDataCopyWithImpl<$Res>;
  $Res call({TransactionResult result});
}

class _$CommercioMintClosedCdpStateDataCopyWithImpl<$Res>
    extends _$CommercioMintClosedCdpStateCopyWithImpl<$Res>
    implements $CommercioMintClosedCdpStateDataCopyWith<$Res> {
  _$CommercioMintClosedCdpStateDataCopyWithImpl(
      CommercioMintClosedCdpStateData _value,
      $Res Function(CommercioMintClosedCdpStateData) _then)
      : super(_value, (v) => _then(v as CommercioMintClosedCdpStateData));

  @override
  CommercioMintClosedCdpStateData get _value =>
      super._value as CommercioMintClosedCdpStateData;

  @override
  $Res call({
    Object result = freezed,
  }) {
    return _then(CommercioMintClosedCdpStateData(
      result: result == freezed ? _value.result : result as TransactionResult,
    ));
  }
}

class _$CommercioMintClosedCdpStateData
    implements CommercioMintClosedCdpStateData {
  const _$CommercioMintClosedCdpStateData({@required this.result})
      : assert(result != null);

  @override
  final TransactionResult result;

  @override
  String toString() {
    return 'CommercioMintClosedCdpState(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioMintClosedCdpStateData &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(result);

  @override
  $CommercioMintClosedCdpStateDataCopyWith<CommercioMintClosedCdpStateData>
      get copyWith => _$CommercioMintClosedCdpStateDataCopyWithImpl<
          CommercioMintClosedCdpStateData>(this, _$identity);

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
    Result $default(CommercioMintClosedCdpStateData value), {
    @required Result initial(CommercioMintClosedCdpStateInitial value),
    @required Result loading(CommercioMintClosedCdpStateLoading value),
    @required Result error(CommercioMintClosedCdpStateError value),
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
    Result $default(CommercioMintClosedCdpStateData value), {
    Result initial(CommercioMintClosedCdpStateInitial value),
    Result loading(CommercioMintClosedCdpStateLoading value),
    Result error(CommercioMintClosedCdpStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class CommercioMintClosedCdpStateData
    implements CommercioMintClosedCdpState {
  const factory CommercioMintClosedCdpStateData(
      {@required TransactionResult result}) = _$CommercioMintClosedCdpStateData;

  TransactionResult get result;
  $CommercioMintClosedCdpStateDataCopyWith<CommercioMintClosedCdpStateData>
      get copyWith;
}

abstract class $CommercioMintClosedCdpStateInitialCopyWith<$Res> {
  factory $CommercioMintClosedCdpStateInitialCopyWith(
          CommercioMintClosedCdpStateInitial value,
          $Res Function(CommercioMintClosedCdpStateInitial) then) =
      _$CommercioMintClosedCdpStateInitialCopyWithImpl<$Res>;
}

class _$CommercioMintClosedCdpStateInitialCopyWithImpl<$Res>
    extends _$CommercioMintClosedCdpStateCopyWithImpl<$Res>
    implements $CommercioMintClosedCdpStateInitialCopyWith<$Res> {
  _$CommercioMintClosedCdpStateInitialCopyWithImpl(
      CommercioMintClosedCdpStateInitial _value,
      $Res Function(CommercioMintClosedCdpStateInitial) _then)
      : super(_value, (v) => _then(v as CommercioMintClosedCdpStateInitial));

  @override
  CommercioMintClosedCdpStateInitial get _value =>
      super._value as CommercioMintClosedCdpStateInitial;
}

class _$CommercioMintClosedCdpStateInitial
    implements CommercioMintClosedCdpStateInitial {
  const _$CommercioMintClosedCdpStateInitial();

  @override
  String toString() {
    return 'CommercioMintClosedCdpState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioMintClosedCdpStateInitial);
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
    Result $default(CommercioMintClosedCdpStateData value), {
    @required Result initial(CommercioMintClosedCdpStateInitial value),
    @required Result loading(CommercioMintClosedCdpStateLoading value),
    @required Result error(CommercioMintClosedCdpStateError value),
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
    Result $default(CommercioMintClosedCdpStateData value), {
    Result initial(CommercioMintClosedCdpStateInitial value),
    Result loading(CommercioMintClosedCdpStateLoading value),
    Result error(CommercioMintClosedCdpStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CommercioMintClosedCdpStateInitial
    implements CommercioMintClosedCdpState {
  const factory CommercioMintClosedCdpStateInitial() =
      _$CommercioMintClosedCdpStateInitial;
}

abstract class $CommercioMintClosedCdpStateLoadingCopyWith<$Res> {
  factory $CommercioMintClosedCdpStateLoadingCopyWith(
          CommercioMintClosedCdpStateLoading value,
          $Res Function(CommercioMintClosedCdpStateLoading) then) =
      _$CommercioMintClosedCdpStateLoadingCopyWithImpl<$Res>;
}

class _$CommercioMintClosedCdpStateLoadingCopyWithImpl<$Res>
    extends _$CommercioMintClosedCdpStateCopyWithImpl<$Res>
    implements $CommercioMintClosedCdpStateLoadingCopyWith<$Res> {
  _$CommercioMintClosedCdpStateLoadingCopyWithImpl(
      CommercioMintClosedCdpStateLoading _value,
      $Res Function(CommercioMintClosedCdpStateLoading) _then)
      : super(_value, (v) => _then(v as CommercioMintClosedCdpStateLoading));

  @override
  CommercioMintClosedCdpStateLoading get _value =>
      super._value as CommercioMintClosedCdpStateLoading;
}

class _$CommercioMintClosedCdpStateLoading
    implements CommercioMintClosedCdpStateLoading {
  const _$CommercioMintClosedCdpStateLoading();

  @override
  String toString() {
    return 'CommercioMintClosedCdpState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioMintClosedCdpStateLoading);
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
    Result $default(CommercioMintClosedCdpStateData value), {
    @required Result initial(CommercioMintClosedCdpStateInitial value),
    @required Result loading(CommercioMintClosedCdpStateLoading value),
    @required Result error(CommercioMintClosedCdpStateError value),
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
    Result $default(CommercioMintClosedCdpStateData value), {
    Result initial(CommercioMintClosedCdpStateInitial value),
    Result loading(CommercioMintClosedCdpStateLoading value),
    Result error(CommercioMintClosedCdpStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CommercioMintClosedCdpStateLoading
    implements CommercioMintClosedCdpState {
  const factory CommercioMintClosedCdpStateLoading() =
      _$CommercioMintClosedCdpStateLoading;
}

abstract class $CommercioMintClosedCdpStateErrorCopyWith<$Res> {
  factory $CommercioMintClosedCdpStateErrorCopyWith(
          CommercioMintClosedCdpStateError value,
          $Res Function(CommercioMintClosedCdpStateError) then) =
      _$CommercioMintClosedCdpStateErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

class _$CommercioMintClosedCdpStateErrorCopyWithImpl<$Res>
    extends _$CommercioMintClosedCdpStateCopyWithImpl<$Res>
    implements $CommercioMintClosedCdpStateErrorCopyWith<$Res> {
  _$CommercioMintClosedCdpStateErrorCopyWithImpl(
      CommercioMintClosedCdpStateError _value,
      $Res Function(CommercioMintClosedCdpStateError) _then)
      : super(_value, (v) => _then(v as CommercioMintClosedCdpStateError));

  @override
  CommercioMintClosedCdpStateError get _value =>
      super._value as CommercioMintClosedCdpStateError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(CommercioMintClosedCdpStateError(
      error == freezed ? _value.error : error as String,
    ));
  }
}

class _$CommercioMintClosedCdpStateError
    implements CommercioMintClosedCdpStateError {
  const _$CommercioMintClosedCdpStateError([this.error]);

  @override
  final String error;

  @override
  String toString() {
    return 'CommercioMintClosedCdpState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioMintClosedCdpStateError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $CommercioMintClosedCdpStateErrorCopyWith<CommercioMintClosedCdpStateError>
      get copyWith => _$CommercioMintClosedCdpStateErrorCopyWithImpl<
          CommercioMintClosedCdpStateError>(this, _$identity);

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
    Result $default(CommercioMintClosedCdpStateData value), {
    @required Result initial(CommercioMintClosedCdpStateInitial value),
    @required Result loading(CommercioMintClosedCdpStateLoading value),
    @required Result error(CommercioMintClosedCdpStateError value),
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
    Result $default(CommercioMintClosedCdpStateData value), {
    Result initial(CommercioMintClosedCdpStateInitial value),
    Result loading(CommercioMintClosedCdpStateLoading value),
    Result error(CommercioMintClosedCdpStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CommercioMintClosedCdpStateError
    implements CommercioMintClosedCdpState {
  const factory CommercioMintClosedCdpStateError([String error]) =
      _$CommercioMintClosedCdpStateError;

  String get error;
  $CommercioMintClosedCdpStateErrorCopyWith<CommercioMintClosedCdpStateError>
      get copyWith;
}
