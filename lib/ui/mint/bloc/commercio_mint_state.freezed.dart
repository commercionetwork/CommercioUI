// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'commercio_mint_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$CommercioMintOpenedCdpStateTearOff {
  const _$CommercioMintOpenedCdpStateTearOff();

// ignore: unused_element
  CommercioMintOpenedCdpStateData call({@required TransactionResult result}) {
    return CommercioMintOpenedCdpStateData(
      result: result,
    );
  }

// ignore: unused_element
  CommercioMintOpenedCdpStateInitial initial() {
    return const CommercioMintOpenedCdpStateInitial();
  }

// ignore: unused_element
  CommercioMintOpenedCdpStateLoading loading() {
    return const CommercioMintOpenedCdpStateLoading();
  }

// ignore: unused_element
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

class _$CommercioMintDeriveCloseCdpStateTearOff {
  const _$CommercioMintDeriveCloseCdpStateTearOff();

// ignore: unused_element
  CommercioMintDeriveCloseCdpStateData call({@required CloseCdp closeCdp}) {
    return CommercioMintDeriveCloseCdpStateData(
      closeCdp: closeCdp,
    );
  }

// ignore: unused_element
  CommercioMintDeriveCloseCdpStateInitial initial() {
    return const CommercioMintDeriveCloseCdpStateInitial();
  }

// ignore: unused_element
  CommercioMintDeriveCloseCdpStateLoading loading() {
    return const CommercioMintDeriveCloseCdpStateLoading();
  }

// ignore: unused_element
  CommercioMintDeriveCloseCdpStateError error([String error]) {
    return CommercioMintDeriveCloseCdpStateError(
      error,
    );
  }
}

// ignore: unused_element
const $CommercioMintDeriveCloseCdpState =
    _$CommercioMintDeriveCloseCdpStateTearOff();

mixin _$CommercioMintDeriveCloseCdpState {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(CloseCdp closeCdp), {
    @required Result initial(),
    @required Result loading(),
    @required Result error(String error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(CloseCdp closeCdp), {
    Result initial(),
    Result loading(),
    Result error(String error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CommercioMintDeriveCloseCdpStateData value), {
    @required Result initial(CommercioMintDeriveCloseCdpStateInitial value),
    @required Result loading(CommercioMintDeriveCloseCdpStateLoading value),
    @required Result error(CommercioMintDeriveCloseCdpStateError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CommercioMintDeriveCloseCdpStateData value), {
    Result initial(CommercioMintDeriveCloseCdpStateInitial value),
    Result loading(CommercioMintDeriveCloseCdpStateLoading value),
    Result error(CommercioMintDeriveCloseCdpStateError value),
    @required Result orElse(),
  });
}

abstract class $CommercioMintDeriveCloseCdpStateCopyWith<$Res> {
  factory $CommercioMintDeriveCloseCdpStateCopyWith(
          CommercioMintDeriveCloseCdpState value,
          $Res Function(CommercioMintDeriveCloseCdpState) then) =
      _$CommercioMintDeriveCloseCdpStateCopyWithImpl<$Res>;
}

class _$CommercioMintDeriveCloseCdpStateCopyWithImpl<$Res>
    implements $CommercioMintDeriveCloseCdpStateCopyWith<$Res> {
  _$CommercioMintDeriveCloseCdpStateCopyWithImpl(this._value, this._then);

  final CommercioMintDeriveCloseCdpState _value;
  // ignore: unused_field
  final $Res Function(CommercioMintDeriveCloseCdpState) _then;
}

abstract class $CommercioMintDeriveCloseCdpStateDataCopyWith<$Res> {
  factory $CommercioMintDeriveCloseCdpStateDataCopyWith(
          CommercioMintDeriveCloseCdpStateData value,
          $Res Function(CommercioMintDeriveCloseCdpStateData) then) =
      _$CommercioMintDeriveCloseCdpStateDataCopyWithImpl<$Res>;
  $Res call({CloseCdp closeCdp});
}

class _$CommercioMintDeriveCloseCdpStateDataCopyWithImpl<$Res>
    extends _$CommercioMintDeriveCloseCdpStateCopyWithImpl<$Res>
    implements $CommercioMintDeriveCloseCdpStateDataCopyWith<$Res> {
  _$CommercioMintDeriveCloseCdpStateDataCopyWithImpl(
      CommercioMintDeriveCloseCdpStateData _value,
      $Res Function(CommercioMintDeriveCloseCdpStateData) _then)
      : super(_value, (v) => _then(v as CommercioMintDeriveCloseCdpStateData));

  @override
  CommercioMintDeriveCloseCdpStateData get _value =>
      super._value as CommercioMintDeriveCloseCdpStateData;

  @override
  $Res call({
    Object closeCdp = freezed,
  }) {
    return _then(CommercioMintDeriveCloseCdpStateData(
      closeCdp: closeCdp == freezed ? _value.closeCdp : closeCdp as CloseCdp,
    ));
  }
}

class _$CommercioMintDeriveCloseCdpStateData
    implements CommercioMintDeriveCloseCdpStateData {
  const _$CommercioMintDeriveCloseCdpStateData({@required this.closeCdp})
      : assert(closeCdp != null);

  @override
  final CloseCdp closeCdp;

  @override
  String toString() {
    return 'CommercioMintDeriveCloseCdpState(closeCdp: $closeCdp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioMintDeriveCloseCdpStateData &&
            (identical(other.closeCdp, closeCdp) ||
                const DeepCollectionEquality()
                    .equals(other.closeCdp, closeCdp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(closeCdp);

  @override
  $CommercioMintDeriveCloseCdpStateDataCopyWith<
          CommercioMintDeriveCloseCdpStateData>
      get copyWith => _$CommercioMintDeriveCloseCdpStateDataCopyWithImpl<
          CommercioMintDeriveCloseCdpStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(CloseCdp closeCdp), {
    @required Result initial(),
    @required Result loading(),
    @required Result error(String error),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return $default(closeCdp);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(CloseCdp closeCdp), {
    Result initial(),
    Result loading(),
    Result error(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(closeCdp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CommercioMintDeriveCloseCdpStateData value), {
    @required Result initial(CommercioMintDeriveCloseCdpStateInitial value),
    @required Result loading(CommercioMintDeriveCloseCdpStateLoading value),
    @required Result error(CommercioMintDeriveCloseCdpStateError value),
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
    Result $default(CommercioMintDeriveCloseCdpStateData value), {
    Result initial(CommercioMintDeriveCloseCdpStateInitial value),
    Result loading(CommercioMintDeriveCloseCdpStateLoading value),
    Result error(CommercioMintDeriveCloseCdpStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class CommercioMintDeriveCloseCdpStateData
    implements CommercioMintDeriveCloseCdpState {
  const factory CommercioMintDeriveCloseCdpStateData(
      {@required CloseCdp closeCdp}) = _$CommercioMintDeriveCloseCdpStateData;

  CloseCdp get closeCdp;
  $CommercioMintDeriveCloseCdpStateDataCopyWith<
      CommercioMintDeriveCloseCdpStateData> get copyWith;
}

abstract class $CommercioMintDeriveCloseCdpStateInitialCopyWith<$Res> {
  factory $CommercioMintDeriveCloseCdpStateInitialCopyWith(
          CommercioMintDeriveCloseCdpStateInitial value,
          $Res Function(CommercioMintDeriveCloseCdpStateInitial) then) =
      _$CommercioMintDeriveCloseCdpStateInitialCopyWithImpl<$Res>;
}

class _$CommercioMintDeriveCloseCdpStateInitialCopyWithImpl<$Res>
    extends _$CommercioMintDeriveCloseCdpStateCopyWithImpl<$Res>
    implements $CommercioMintDeriveCloseCdpStateInitialCopyWith<$Res> {
  _$CommercioMintDeriveCloseCdpStateInitialCopyWithImpl(
      CommercioMintDeriveCloseCdpStateInitial _value,
      $Res Function(CommercioMintDeriveCloseCdpStateInitial) _then)
      : super(
            _value, (v) => _then(v as CommercioMintDeriveCloseCdpStateInitial));

  @override
  CommercioMintDeriveCloseCdpStateInitial get _value =>
      super._value as CommercioMintDeriveCloseCdpStateInitial;
}

class _$CommercioMintDeriveCloseCdpStateInitial
    implements CommercioMintDeriveCloseCdpStateInitial {
  const _$CommercioMintDeriveCloseCdpStateInitial();

  @override
  String toString() {
    return 'CommercioMintDeriveCloseCdpState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioMintDeriveCloseCdpStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(CloseCdp closeCdp), {
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
    Result $default(CloseCdp closeCdp), {
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
    Result $default(CommercioMintDeriveCloseCdpStateData value), {
    @required Result initial(CommercioMintDeriveCloseCdpStateInitial value),
    @required Result loading(CommercioMintDeriveCloseCdpStateLoading value),
    @required Result error(CommercioMintDeriveCloseCdpStateError value),
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
    Result $default(CommercioMintDeriveCloseCdpStateData value), {
    Result initial(CommercioMintDeriveCloseCdpStateInitial value),
    Result loading(CommercioMintDeriveCloseCdpStateLoading value),
    Result error(CommercioMintDeriveCloseCdpStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CommercioMintDeriveCloseCdpStateInitial
    implements CommercioMintDeriveCloseCdpState {
  const factory CommercioMintDeriveCloseCdpStateInitial() =
      _$CommercioMintDeriveCloseCdpStateInitial;
}

abstract class $CommercioMintDeriveCloseCdpStateLoadingCopyWith<$Res> {
  factory $CommercioMintDeriveCloseCdpStateLoadingCopyWith(
          CommercioMintDeriveCloseCdpStateLoading value,
          $Res Function(CommercioMintDeriveCloseCdpStateLoading) then) =
      _$CommercioMintDeriveCloseCdpStateLoadingCopyWithImpl<$Res>;
}

class _$CommercioMintDeriveCloseCdpStateLoadingCopyWithImpl<$Res>
    extends _$CommercioMintDeriveCloseCdpStateCopyWithImpl<$Res>
    implements $CommercioMintDeriveCloseCdpStateLoadingCopyWith<$Res> {
  _$CommercioMintDeriveCloseCdpStateLoadingCopyWithImpl(
      CommercioMintDeriveCloseCdpStateLoading _value,
      $Res Function(CommercioMintDeriveCloseCdpStateLoading) _then)
      : super(
            _value, (v) => _then(v as CommercioMintDeriveCloseCdpStateLoading));

  @override
  CommercioMintDeriveCloseCdpStateLoading get _value =>
      super._value as CommercioMintDeriveCloseCdpStateLoading;
}

class _$CommercioMintDeriveCloseCdpStateLoading
    implements CommercioMintDeriveCloseCdpStateLoading {
  const _$CommercioMintDeriveCloseCdpStateLoading();

  @override
  String toString() {
    return 'CommercioMintDeriveCloseCdpState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioMintDeriveCloseCdpStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(CloseCdp closeCdp), {
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
    Result $default(CloseCdp closeCdp), {
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
    Result $default(CommercioMintDeriveCloseCdpStateData value), {
    @required Result initial(CommercioMintDeriveCloseCdpStateInitial value),
    @required Result loading(CommercioMintDeriveCloseCdpStateLoading value),
    @required Result error(CommercioMintDeriveCloseCdpStateError value),
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
    Result $default(CommercioMintDeriveCloseCdpStateData value), {
    Result initial(CommercioMintDeriveCloseCdpStateInitial value),
    Result loading(CommercioMintDeriveCloseCdpStateLoading value),
    Result error(CommercioMintDeriveCloseCdpStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CommercioMintDeriveCloseCdpStateLoading
    implements CommercioMintDeriveCloseCdpState {
  const factory CommercioMintDeriveCloseCdpStateLoading() =
      _$CommercioMintDeriveCloseCdpStateLoading;
}

abstract class $CommercioMintDeriveCloseCdpStateErrorCopyWith<$Res> {
  factory $CommercioMintDeriveCloseCdpStateErrorCopyWith(
          CommercioMintDeriveCloseCdpStateError value,
          $Res Function(CommercioMintDeriveCloseCdpStateError) then) =
      _$CommercioMintDeriveCloseCdpStateErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

class _$CommercioMintDeriveCloseCdpStateErrorCopyWithImpl<$Res>
    extends _$CommercioMintDeriveCloseCdpStateCopyWithImpl<$Res>
    implements $CommercioMintDeriveCloseCdpStateErrorCopyWith<$Res> {
  _$CommercioMintDeriveCloseCdpStateErrorCopyWithImpl(
      CommercioMintDeriveCloseCdpStateError _value,
      $Res Function(CommercioMintDeriveCloseCdpStateError) _then)
      : super(_value, (v) => _then(v as CommercioMintDeriveCloseCdpStateError));

  @override
  CommercioMintDeriveCloseCdpStateError get _value =>
      super._value as CommercioMintDeriveCloseCdpStateError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(CommercioMintDeriveCloseCdpStateError(
      error == freezed ? _value.error : error as String,
    ));
  }
}

class _$CommercioMintDeriveCloseCdpStateError
    implements CommercioMintDeriveCloseCdpStateError {
  const _$CommercioMintDeriveCloseCdpStateError([this.error]);

  @override
  final String error;

  @override
  String toString() {
    return 'CommercioMintDeriveCloseCdpState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioMintDeriveCloseCdpStateError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $CommercioMintDeriveCloseCdpStateErrorCopyWith<
          CommercioMintDeriveCloseCdpStateError>
      get copyWith => _$CommercioMintDeriveCloseCdpStateErrorCopyWithImpl<
          CommercioMintDeriveCloseCdpStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(CloseCdp closeCdp), {
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
    Result $default(CloseCdp closeCdp), {
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
    Result $default(CommercioMintDeriveCloseCdpStateData value), {
    @required Result initial(CommercioMintDeriveCloseCdpStateInitial value),
    @required Result loading(CommercioMintDeriveCloseCdpStateLoading value),
    @required Result error(CommercioMintDeriveCloseCdpStateError value),
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
    Result $default(CommercioMintDeriveCloseCdpStateData value), {
    Result initial(CommercioMintDeriveCloseCdpStateInitial value),
    Result loading(CommercioMintDeriveCloseCdpStateLoading value),
    Result error(CommercioMintDeriveCloseCdpStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CommercioMintDeriveCloseCdpStateError
    implements CommercioMintDeriveCloseCdpState {
  const factory CommercioMintDeriveCloseCdpStateError([String error]) =
      _$CommercioMintDeriveCloseCdpStateError;

  String get error;
  $CommercioMintDeriveCloseCdpStateErrorCopyWith<
      CommercioMintDeriveCloseCdpStateError> get copyWith;
}

class _$CommercioMintClosedCdpsStateTearOff {
  const _$CommercioMintClosedCdpsStateTearOff();

// ignore: unused_element
  CommercioMintClosedCdpsStateData call({@required TransactionResult result}) {
    return CommercioMintClosedCdpsStateData(
      result: result,
    );
  }

// ignore: unused_element
  CommercioMintClosedCdpsStateInitial initial() {
    return const CommercioMintClosedCdpsStateInitial();
  }

// ignore: unused_element
  CommercioMintClosedCdpsStateLoading loading() {
    return const CommercioMintClosedCdpsStateLoading();
  }

// ignore: unused_element
  CommercioMintClosedCdpsStateError error([String error]) {
    return CommercioMintClosedCdpsStateError(
      error,
    );
  }
}

// ignore: unused_element
const $CommercioMintClosedCdpsState = _$CommercioMintClosedCdpsStateTearOff();

mixin _$CommercioMintClosedCdpsState {
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
    Result $default(CommercioMintClosedCdpsStateData value), {
    @required Result initial(CommercioMintClosedCdpsStateInitial value),
    @required Result loading(CommercioMintClosedCdpsStateLoading value),
    @required Result error(CommercioMintClosedCdpsStateError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CommercioMintClosedCdpsStateData value), {
    Result initial(CommercioMintClosedCdpsStateInitial value),
    Result loading(CommercioMintClosedCdpsStateLoading value),
    Result error(CommercioMintClosedCdpsStateError value),
    @required Result orElse(),
  });
}

abstract class $CommercioMintClosedCdpsStateCopyWith<$Res> {
  factory $CommercioMintClosedCdpsStateCopyWith(
          CommercioMintClosedCdpsState value,
          $Res Function(CommercioMintClosedCdpsState) then) =
      _$CommercioMintClosedCdpsStateCopyWithImpl<$Res>;
}

class _$CommercioMintClosedCdpsStateCopyWithImpl<$Res>
    implements $CommercioMintClosedCdpsStateCopyWith<$Res> {
  _$CommercioMintClosedCdpsStateCopyWithImpl(this._value, this._then);

  final CommercioMintClosedCdpsState _value;
  // ignore: unused_field
  final $Res Function(CommercioMintClosedCdpsState) _then;
}

abstract class $CommercioMintClosedCdpsStateDataCopyWith<$Res> {
  factory $CommercioMintClosedCdpsStateDataCopyWith(
          CommercioMintClosedCdpsStateData value,
          $Res Function(CommercioMintClosedCdpsStateData) then) =
      _$CommercioMintClosedCdpsStateDataCopyWithImpl<$Res>;
  $Res call({TransactionResult result});
}

class _$CommercioMintClosedCdpsStateDataCopyWithImpl<$Res>
    extends _$CommercioMintClosedCdpsStateCopyWithImpl<$Res>
    implements $CommercioMintClosedCdpsStateDataCopyWith<$Res> {
  _$CommercioMintClosedCdpsStateDataCopyWithImpl(
      CommercioMintClosedCdpsStateData _value,
      $Res Function(CommercioMintClosedCdpsStateData) _then)
      : super(_value, (v) => _then(v as CommercioMintClosedCdpsStateData));

  @override
  CommercioMintClosedCdpsStateData get _value =>
      super._value as CommercioMintClosedCdpsStateData;

  @override
  $Res call({
    Object result = freezed,
  }) {
    return _then(CommercioMintClosedCdpsStateData(
      result: result == freezed ? _value.result : result as TransactionResult,
    ));
  }
}

class _$CommercioMintClosedCdpsStateData
    implements CommercioMintClosedCdpsStateData {
  const _$CommercioMintClosedCdpsStateData({@required this.result})
      : assert(result != null);

  @override
  final TransactionResult result;

  @override
  String toString() {
    return 'CommercioMintClosedCdpsState(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioMintClosedCdpsStateData &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(result);

  @override
  $CommercioMintClosedCdpsStateDataCopyWith<CommercioMintClosedCdpsStateData>
      get copyWith => _$CommercioMintClosedCdpsStateDataCopyWithImpl<
          CommercioMintClosedCdpsStateData>(this, _$identity);

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
    Result $default(CommercioMintClosedCdpsStateData value), {
    @required Result initial(CommercioMintClosedCdpsStateInitial value),
    @required Result loading(CommercioMintClosedCdpsStateLoading value),
    @required Result error(CommercioMintClosedCdpsStateError value),
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
    Result $default(CommercioMintClosedCdpsStateData value), {
    Result initial(CommercioMintClosedCdpsStateInitial value),
    Result loading(CommercioMintClosedCdpsStateLoading value),
    Result error(CommercioMintClosedCdpsStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class CommercioMintClosedCdpsStateData
    implements CommercioMintClosedCdpsState {
  const factory CommercioMintClosedCdpsStateData(
          {@required TransactionResult result}) =
      _$CommercioMintClosedCdpsStateData;

  TransactionResult get result;
  $CommercioMintClosedCdpsStateDataCopyWith<CommercioMintClosedCdpsStateData>
      get copyWith;
}

abstract class $CommercioMintClosedCdpsStateInitialCopyWith<$Res> {
  factory $CommercioMintClosedCdpsStateInitialCopyWith(
          CommercioMintClosedCdpsStateInitial value,
          $Res Function(CommercioMintClosedCdpsStateInitial) then) =
      _$CommercioMintClosedCdpsStateInitialCopyWithImpl<$Res>;
}

class _$CommercioMintClosedCdpsStateInitialCopyWithImpl<$Res>
    extends _$CommercioMintClosedCdpsStateCopyWithImpl<$Res>
    implements $CommercioMintClosedCdpsStateInitialCopyWith<$Res> {
  _$CommercioMintClosedCdpsStateInitialCopyWithImpl(
      CommercioMintClosedCdpsStateInitial _value,
      $Res Function(CommercioMintClosedCdpsStateInitial) _then)
      : super(_value, (v) => _then(v as CommercioMintClosedCdpsStateInitial));

  @override
  CommercioMintClosedCdpsStateInitial get _value =>
      super._value as CommercioMintClosedCdpsStateInitial;
}

class _$CommercioMintClosedCdpsStateInitial
    implements CommercioMintClosedCdpsStateInitial {
  const _$CommercioMintClosedCdpsStateInitial();

  @override
  String toString() {
    return 'CommercioMintClosedCdpsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioMintClosedCdpsStateInitial);
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
    Result $default(CommercioMintClosedCdpsStateData value), {
    @required Result initial(CommercioMintClosedCdpsStateInitial value),
    @required Result loading(CommercioMintClosedCdpsStateLoading value),
    @required Result error(CommercioMintClosedCdpsStateError value),
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
    Result $default(CommercioMintClosedCdpsStateData value), {
    Result initial(CommercioMintClosedCdpsStateInitial value),
    Result loading(CommercioMintClosedCdpsStateLoading value),
    Result error(CommercioMintClosedCdpsStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CommercioMintClosedCdpsStateInitial
    implements CommercioMintClosedCdpsState {
  const factory CommercioMintClosedCdpsStateInitial() =
      _$CommercioMintClosedCdpsStateInitial;
}

abstract class $CommercioMintClosedCdpsStateLoadingCopyWith<$Res> {
  factory $CommercioMintClosedCdpsStateLoadingCopyWith(
          CommercioMintClosedCdpsStateLoading value,
          $Res Function(CommercioMintClosedCdpsStateLoading) then) =
      _$CommercioMintClosedCdpsStateLoadingCopyWithImpl<$Res>;
}

class _$CommercioMintClosedCdpsStateLoadingCopyWithImpl<$Res>
    extends _$CommercioMintClosedCdpsStateCopyWithImpl<$Res>
    implements $CommercioMintClosedCdpsStateLoadingCopyWith<$Res> {
  _$CommercioMintClosedCdpsStateLoadingCopyWithImpl(
      CommercioMintClosedCdpsStateLoading _value,
      $Res Function(CommercioMintClosedCdpsStateLoading) _then)
      : super(_value, (v) => _then(v as CommercioMintClosedCdpsStateLoading));

  @override
  CommercioMintClosedCdpsStateLoading get _value =>
      super._value as CommercioMintClosedCdpsStateLoading;
}

class _$CommercioMintClosedCdpsStateLoading
    implements CommercioMintClosedCdpsStateLoading {
  const _$CommercioMintClosedCdpsStateLoading();

  @override
  String toString() {
    return 'CommercioMintClosedCdpsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioMintClosedCdpsStateLoading);
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
    Result $default(CommercioMintClosedCdpsStateData value), {
    @required Result initial(CommercioMintClosedCdpsStateInitial value),
    @required Result loading(CommercioMintClosedCdpsStateLoading value),
    @required Result error(CommercioMintClosedCdpsStateError value),
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
    Result $default(CommercioMintClosedCdpsStateData value), {
    Result initial(CommercioMintClosedCdpsStateInitial value),
    Result loading(CommercioMintClosedCdpsStateLoading value),
    Result error(CommercioMintClosedCdpsStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CommercioMintClosedCdpsStateLoading
    implements CommercioMintClosedCdpsState {
  const factory CommercioMintClosedCdpsStateLoading() =
      _$CommercioMintClosedCdpsStateLoading;
}

abstract class $CommercioMintClosedCdpsStateErrorCopyWith<$Res> {
  factory $CommercioMintClosedCdpsStateErrorCopyWith(
          CommercioMintClosedCdpsStateError value,
          $Res Function(CommercioMintClosedCdpsStateError) then) =
      _$CommercioMintClosedCdpsStateErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

class _$CommercioMintClosedCdpsStateErrorCopyWithImpl<$Res>
    extends _$CommercioMintClosedCdpsStateCopyWithImpl<$Res>
    implements $CommercioMintClosedCdpsStateErrorCopyWith<$Res> {
  _$CommercioMintClosedCdpsStateErrorCopyWithImpl(
      CommercioMintClosedCdpsStateError _value,
      $Res Function(CommercioMintClosedCdpsStateError) _then)
      : super(_value, (v) => _then(v as CommercioMintClosedCdpsStateError));

  @override
  CommercioMintClosedCdpsStateError get _value =>
      super._value as CommercioMintClosedCdpsStateError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(CommercioMintClosedCdpsStateError(
      error == freezed ? _value.error : error as String,
    ));
  }
}

class _$CommercioMintClosedCdpsStateError
    implements CommercioMintClosedCdpsStateError {
  const _$CommercioMintClosedCdpsStateError([this.error]);

  @override
  final String error;

  @override
  String toString() {
    return 'CommercioMintClosedCdpsState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioMintClosedCdpsStateError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $CommercioMintClosedCdpsStateErrorCopyWith<CommercioMintClosedCdpsStateError>
      get copyWith => _$CommercioMintClosedCdpsStateErrorCopyWithImpl<
          CommercioMintClosedCdpsStateError>(this, _$identity);

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
    Result $default(CommercioMintClosedCdpsStateData value), {
    @required Result initial(CommercioMintClosedCdpsStateInitial value),
    @required Result loading(CommercioMintClosedCdpsStateLoading value),
    @required Result error(CommercioMintClosedCdpsStateError value),
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
    Result $default(CommercioMintClosedCdpsStateData value), {
    Result initial(CommercioMintClosedCdpsStateInitial value),
    Result loading(CommercioMintClosedCdpsStateLoading value),
    Result error(CommercioMintClosedCdpsStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CommercioMintClosedCdpsStateError
    implements CommercioMintClosedCdpsState {
  const factory CommercioMintClosedCdpsStateError([String error]) =
      _$CommercioMintClosedCdpsStateError;

  String get error;
  $CommercioMintClosedCdpsStateErrorCopyWith<CommercioMintClosedCdpsStateError>
      get copyWith;
}
