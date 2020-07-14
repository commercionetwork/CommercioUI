// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'commercio_id_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$CommercioIdGeneratedKeysStateTearOff {
  const _$CommercioIdGeneratedKeysStateTearOff();

  CommercioIdGeneratedKeysStateData call(
      {@required CommercioIdKeys commercioIdKeys}) {
    return CommercioIdGeneratedKeysStateData(
      commercioIdKeys: commercioIdKeys,
    );
  }

  CommercioIdGeneratedKeysStateInitial initial() {
    return const CommercioIdGeneratedKeysStateInitial();
  }

  CommercioIdGeneratedKeysStateLoading loading() {
    return const CommercioIdGeneratedKeysStateLoading();
  }

  CommercioIdGeneratedKeysStateError error([String error]) {
    return CommercioIdGeneratedKeysStateError(
      error,
    );
  }
}

// ignore: unused_element
const $CommercioIdGeneratedKeysState = _$CommercioIdGeneratedKeysStateTearOff();

mixin _$CommercioIdGeneratedKeysState {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(CommercioIdKeys commercioIdKeys), {
    @required Result initial(),
    @required Result loading(),
    @required Result error(String error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(CommercioIdKeys commercioIdKeys), {
    Result initial(),
    Result loading(),
    Result error(String error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CommercioIdGeneratedKeysStateData value), {
    @required Result initial(CommercioIdGeneratedKeysStateInitial value),
    @required Result loading(CommercioIdGeneratedKeysStateLoading value),
    @required Result error(CommercioIdGeneratedKeysStateError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CommercioIdGeneratedKeysStateData value), {
    Result initial(CommercioIdGeneratedKeysStateInitial value),
    Result loading(CommercioIdGeneratedKeysStateLoading value),
    Result error(CommercioIdGeneratedKeysStateError value),
    @required Result orElse(),
  });
}

abstract class $CommercioIdGeneratedKeysStateCopyWith<$Res> {
  factory $CommercioIdGeneratedKeysStateCopyWith(
          CommercioIdGeneratedKeysState value,
          $Res Function(CommercioIdGeneratedKeysState) then) =
      _$CommercioIdGeneratedKeysStateCopyWithImpl<$Res>;
}

class _$CommercioIdGeneratedKeysStateCopyWithImpl<$Res>
    implements $CommercioIdGeneratedKeysStateCopyWith<$Res> {
  _$CommercioIdGeneratedKeysStateCopyWithImpl(this._value, this._then);

  final CommercioIdGeneratedKeysState _value;
  // ignore: unused_field
  final $Res Function(CommercioIdGeneratedKeysState) _then;
}

abstract class $CommercioIdGeneratedKeysStateDataCopyWith<$Res> {
  factory $CommercioIdGeneratedKeysStateDataCopyWith(
          CommercioIdGeneratedKeysStateData value,
          $Res Function(CommercioIdGeneratedKeysStateData) then) =
      _$CommercioIdGeneratedKeysStateDataCopyWithImpl<$Res>;
  $Res call({CommercioIdKeys commercioIdKeys});
}

class _$CommercioIdGeneratedKeysStateDataCopyWithImpl<$Res>
    extends _$CommercioIdGeneratedKeysStateCopyWithImpl<$Res>
    implements $CommercioIdGeneratedKeysStateDataCopyWith<$Res> {
  _$CommercioIdGeneratedKeysStateDataCopyWithImpl(
      CommercioIdGeneratedKeysStateData _value,
      $Res Function(CommercioIdGeneratedKeysStateData) _then)
      : super(_value, (v) => _then(v as CommercioIdGeneratedKeysStateData));

  @override
  CommercioIdGeneratedKeysStateData get _value =>
      super._value as CommercioIdGeneratedKeysStateData;

  @override
  $Res call({
    Object commercioIdKeys = freezed,
  }) {
    return _then(CommercioIdGeneratedKeysStateData(
      commercioIdKeys: commercioIdKeys == freezed
          ? _value.commercioIdKeys
          : commercioIdKeys as CommercioIdKeys,
    ));
  }
}

class _$CommercioIdGeneratedKeysStateData
    implements CommercioIdGeneratedKeysStateData {
  const _$CommercioIdGeneratedKeysStateData({@required this.commercioIdKeys})
      : assert(commercioIdKeys != null);

  @override
  final CommercioIdKeys commercioIdKeys;

  @override
  String toString() {
    return 'CommercioIdGeneratedKeysState(commercioIdKeys: $commercioIdKeys)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioIdGeneratedKeysStateData &&
            (identical(other.commercioIdKeys, commercioIdKeys) ||
                const DeepCollectionEquality()
                    .equals(other.commercioIdKeys, commercioIdKeys)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(commercioIdKeys);

  @override
  $CommercioIdGeneratedKeysStateDataCopyWith<CommercioIdGeneratedKeysStateData>
      get copyWith => _$CommercioIdGeneratedKeysStateDataCopyWithImpl<
          CommercioIdGeneratedKeysStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(CommercioIdKeys commercioIdKeys), {
    @required Result initial(),
    @required Result loading(),
    @required Result error(String error),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return $default(commercioIdKeys);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(CommercioIdKeys commercioIdKeys), {
    Result initial(),
    Result loading(),
    Result error(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(commercioIdKeys);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CommercioIdGeneratedKeysStateData value), {
    @required Result initial(CommercioIdGeneratedKeysStateInitial value),
    @required Result loading(CommercioIdGeneratedKeysStateLoading value),
    @required Result error(CommercioIdGeneratedKeysStateError value),
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
    Result $default(CommercioIdGeneratedKeysStateData value), {
    Result initial(CommercioIdGeneratedKeysStateInitial value),
    Result loading(CommercioIdGeneratedKeysStateLoading value),
    Result error(CommercioIdGeneratedKeysStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class CommercioIdGeneratedKeysStateData
    implements CommercioIdGeneratedKeysState {
  const factory CommercioIdGeneratedKeysStateData(
          {@required CommercioIdKeys commercioIdKeys}) =
      _$CommercioIdGeneratedKeysStateData;

  CommercioIdKeys get commercioIdKeys;
  $CommercioIdGeneratedKeysStateDataCopyWith<CommercioIdGeneratedKeysStateData>
      get copyWith;
}

abstract class $CommercioIdGeneratedKeysStateInitialCopyWith<$Res> {
  factory $CommercioIdGeneratedKeysStateInitialCopyWith(
          CommercioIdGeneratedKeysStateInitial value,
          $Res Function(CommercioIdGeneratedKeysStateInitial) then) =
      _$CommercioIdGeneratedKeysStateInitialCopyWithImpl<$Res>;
}

class _$CommercioIdGeneratedKeysStateInitialCopyWithImpl<$Res>
    extends _$CommercioIdGeneratedKeysStateCopyWithImpl<$Res>
    implements $CommercioIdGeneratedKeysStateInitialCopyWith<$Res> {
  _$CommercioIdGeneratedKeysStateInitialCopyWithImpl(
      CommercioIdGeneratedKeysStateInitial _value,
      $Res Function(CommercioIdGeneratedKeysStateInitial) _then)
      : super(_value, (v) => _then(v as CommercioIdGeneratedKeysStateInitial));

  @override
  CommercioIdGeneratedKeysStateInitial get _value =>
      super._value as CommercioIdGeneratedKeysStateInitial;
}

class _$CommercioIdGeneratedKeysStateInitial
    implements CommercioIdGeneratedKeysStateInitial {
  const _$CommercioIdGeneratedKeysStateInitial();

  @override
  String toString() {
    return 'CommercioIdGeneratedKeysState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioIdGeneratedKeysStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(CommercioIdKeys commercioIdKeys), {
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
    Result $default(CommercioIdKeys commercioIdKeys), {
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
    Result $default(CommercioIdGeneratedKeysStateData value), {
    @required Result initial(CommercioIdGeneratedKeysStateInitial value),
    @required Result loading(CommercioIdGeneratedKeysStateLoading value),
    @required Result error(CommercioIdGeneratedKeysStateError value),
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
    Result $default(CommercioIdGeneratedKeysStateData value), {
    Result initial(CommercioIdGeneratedKeysStateInitial value),
    Result loading(CommercioIdGeneratedKeysStateLoading value),
    Result error(CommercioIdGeneratedKeysStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CommercioIdGeneratedKeysStateInitial
    implements CommercioIdGeneratedKeysState {
  const factory CommercioIdGeneratedKeysStateInitial() =
      _$CommercioIdGeneratedKeysStateInitial;
}

abstract class $CommercioIdGeneratedKeysStateLoadingCopyWith<$Res> {
  factory $CommercioIdGeneratedKeysStateLoadingCopyWith(
          CommercioIdGeneratedKeysStateLoading value,
          $Res Function(CommercioIdGeneratedKeysStateLoading) then) =
      _$CommercioIdGeneratedKeysStateLoadingCopyWithImpl<$Res>;
}

class _$CommercioIdGeneratedKeysStateLoadingCopyWithImpl<$Res>
    extends _$CommercioIdGeneratedKeysStateCopyWithImpl<$Res>
    implements $CommercioIdGeneratedKeysStateLoadingCopyWith<$Res> {
  _$CommercioIdGeneratedKeysStateLoadingCopyWithImpl(
      CommercioIdGeneratedKeysStateLoading _value,
      $Res Function(CommercioIdGeneratedKeysStateLoading) _then)
      : super(_value, (v) => _then(v as CommercioIdGeneratedKeysStateLoading));

  @override
  CommercioIdGeneratedKeysStateLoading get _value =>
      super._value as CommercioIdGeneratedKeysStateLoading;
}

class _$CommercioIdGeneratedKeysStateLoading
    implements CommercioIdGeneratedKeysStateLoading {
  const _$CommercioIdGeneratedKeysStateLoading();

  @override
  String toString() {
    return 'CommercioIdGeneratedKeysState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioIdGeneratedKeysStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(CommercioIdKeys commercioIdKeys), {
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
    Result $default(CommercioIdKeys commercioIdKeys), {
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
    Result $default(CommercioIdGeneratedKeysStateData value), {
    @required Result initial(CommercioIdGeneratedKeysStateInitial value),
    @required Result loading(CommercioIdGeneratedKeysStateLoading value),
    @required Result error(CommercioIdGeneratedKeysStateError value),
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
    Result $default(CommercioIdGeneratedKeysStateData value), {
    Result initial(CommercioIdGeneratedKeysStateInitial value),
    Result loading(CommercioIdGeneratedKeysStateLoading value),
    Result error(CommercioIdGeneratedKeysStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CommercioIdGeneratedKeysStateLoading
    implements CommercioIdGeneratedKeysState {
  const factory CommercioIdGeneratedKeysStateLoading() =
      _$CommercioIdGeneratedKeysStateLoading;
}

abstract class $CommercioIdGeneratedKeysStateErrorCopyWith<$Res> {
  factory $CommercioIdGeneratedKeysStateErrorCopyWith(
          CommercioIdGeneratedKeysStateError value,
          $Res Function(CommercioIdGeneratedKeysStateError) then) =
      _$CommercioIdGeneratedKeysStateErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

class _$CommercioIdGeneratedKeysStateErrorCopyWithImpl<$Res>
    extends _$CommercioIdGeneratedKeysStateCopyWithImpl<$Res>
    implements $CommercioIdGeneratedKeysStateErrorCopyWith<$Res> {
  _$CommercioIdGeneratedKeysStateErrorCopyWithImpl(
      CommercioIdGeneratedKeysStateError _value,
      $Res Function(CommercioIdGeneratedKeysStateError) _then)
      : super(_value, (v) => _then(v as CommercioIdGeneratedKeysStateError));

  @override
  CommercioIdGeneratedKeysStateError get _value =>
      super._value as CommercioIdGeneratedKeysStateError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(CommercioIdGeneratedKeysStateError(
      error == freezed ? _value.error : error as String,
    ));
  }
}

class _$CommercioIdGeneratedKeysStateError
    implements CommercioIdGeneratedKeysStateError {
  const _$CommercioIdGeneratedKeysStateError([this.error]);

  @override
  final String error;

  @override
  String toString() {
    return 'CommercioIdGeneratedKeysState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioIdGeneratedKeysStateError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $CommercioIdGeneratedKeysStateErrorCopyWith<
          CommercioIdGeneratedKeysStateError>
      get copyWith => _$CommercioIdGeneratedKeysStateErrorCopyWithImpl<
          CommercioIdGeneratedKeysStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(CommercioIdKeys commercioIdKeys), {
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
    Result $default(CommercioIdKeys commercioIdKeys), {
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
    Result $default(CommercioIdGeneratedKeysStateData value), {
    @required Result initial(CommercioIdGeneratedKeysStateInitial value),
    @required Result loading(CommercioIdGeneratedKeysStateLoading value),
    @required Result error(CommercioIdGeneratedKeysStateError value),
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
    Result $default(CommercioIdGeneratedKeysStateData value), {
    Result initial(CommercioIdGeneratedKeysStateInitial value),
    Result loading(CommercioIdGeneratedKeysStateLoading value),
    Result error(CommercioIdGeneratedKeysStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CommercioIdGeneratedKeysStateError
    implements CommercioIdGeneratedKeysState {
  const factory CommercioIdGeneratedKeysStateError([String error]) =
      _$CommercioIdGeneratedKeysStateError;

  String get error;
  $CommercioIdGeneratedKeysStateErrorCopyWith<
      CommercioIdGeneratedKeysStateError> get copyWith;
}

class _$CommercioIdRestoredKeysStateTearOff {
  const _$CommercioIdRestoredKeysStateTearOff();

  CommercioIdRestoredKeysStateData call(
      {@required CommercioIdKeys commercioIdKeys}) {
    return CommercioIdRestoredKeysStateData(
      commercioIdKeys: commercioIdKeys,
    );
  }

  CommercioIdRestoredKeysStateInitial initial() {
    return const CommercioIdRestoredKeysStateInitial();
  }

  CommercioIdRestoredKeysStateLoading loading() {
    return const CommercioIdRestoredKeysStateLoading();
  }

  CommercioIdRestoredKeysStateError error([String error]) {
    return CommercioIdRestoredKeysStateError(
      error,
    );
  }
}

// ignore: unused_element
const $CommercioIdRestoredKeysState = _$CommercioIdRestoredKeysStateTearOff();

mixin _$CommercioIdRestoredKeysState {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(CommercioIdKeys commercioIdKeys), {
    @required Result initial(),
    @required Result loading(),
    @required Result error(String error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(CommercioIdKeys commercioIdKeys), {
    Result initial(),
    Result loading(),
    Result error(String error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CommercioIdRestoredKeysStateData value), {
    @required Result initial(CommercioIdRestoredKeysStateInitial value),
    @required Result loading(CommercioIdRestoredKeysStateLoading value),
    @required Result error(CommercioIdRestoredKeysStateError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CommercioIdRestoredKeysStateData value), {
    Result initial(CommercioIdRestoredKeysStateInitial value),
    Result loading(CommercioIdRestoredKeysStateLoading value),
    Result error(CommercioIdRestoredKeysStateError value),
    @required Result orElse(),
  });
}

abstract class $CommercioIdRestoredKeysStateCopyWith<$Res> {
  factory $CommercioIdRestoredKeysStateCopyWith(
          CommercioIdRestoredKeysState value,
          $Res Function(CommercioIdRestoredKeysState) then) =
      _$CommercioIdRestoredKeysStateCopyWithImpl<$Res>;
}

class _$CommercioIdRestoredKeysStateCopyWithImpl<$Res>
    implements $CommercioIdRestoredKeysStateCopyWith<$Res> {
  _$CommercioIdRestoredKeysStateCopyWithImpl(this._value, this._then);

  final CommercioIdRestoredKeysState _value;
  // ignore: unused_field
  final $Res Function(CommercioIdRestoredKeysState) _then;
}

abstract class $CommercioIdRestoredKeysStateDataCopyWith<$Res> {
  factory $CommercioIdRestoredKeysStateDataCopyWith(
          CommercioIdRestoredKeysStateData value,
          $Res Function(CommercioIdRestoredKeysStateData) then) =
      _$CommercioIdRestoredKeysStateDataCopyWithImpl<$Res>;
  $Res call({CommercioIdKeys commercioIdKeys});
}

class _$CommercioIdRestoredKeysStateDataCopyWithImpl<$Res>
    extends _$CommercioIdRestoredKeysStateCopyWithImpl<$Res>
    implements $CommercioIdRestoredKeysStateDataCopyWith<$Res> {
  _$CommercioIdRestoredKeysStateDataCopyWithImpl(
      CommercioIdRestoredKeysStateData _value,
      $Res Function(CommercioIdRestoredKeysStateData) _then)
      : super(_value, (v) => _then(v as CommercioIdRestoredKeysStateData));

  @override
  CommercioIdRestoredKeysStateData get _value =>
      super._value as CommercioIdRestoredKeysStateData;

  @override
  $Res call({
    Object commercioIdKeys = freezed,
  }) {
    return _then(CommercioIdRestoredKeysStateData(
      commercioIdKeys: commercioIdKeys == freezed
          ? _value.commercioIdKeys
          : commercioIdKeys as CommercioIdKeys,
    ));
  }
}

class _$CommercioIdRestoredKeysStateData
    implements CommercioIdRestoredKeysStateData {
  const _$CommercioIdRestoredKeysStateData({@required this.commercioIdKeys})
      : assert(commercioIdKeys != null);

  @override
  final CommercioIdKeys commercioIdKeys;

  @override
  String toString() {
    return 'CommercioIdRestoredKeysState(commercioIdKeys: $commercioIdKeys)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioIdRestoredKeysStateData &&
            (identical(other.commercioIdKeys, commercioIdKeys) ||
                const DeepCollectionEquality()
                    .equals(other.commercioIdKeys, commercioIdKeys)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(commercioIdKeys);

  @override
  $CommercioIdRestoredKeysStateDataCopyWith<CommercioIdRestoredKeysStateData>
      get copyWith => _$CommercioIdRestoredKeysStateDataCopyWithImpl<
          CommercioIdRestoredKeysStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(CommercioIdKeys commercioIdKeys), {
    @required Result initial(),
    @required Result loading(),
    @required Result error(String error),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return $default(commercioIdKeys);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(CommercioIdKeys commercioIdKeys), {
    Result initial(),
    Result loading(),
    Result error(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(commercioIdKeys);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CommercioIdRestoredKeysStateData value), {
    @required Result initial(CommercioIdRestoredKeysStateInitial value),
    @required Result loading(CommercioIdRestoredKeysStateLoading value),
    @required Result error(CommercioIdRestoredKeysStateError value),
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
    Result $default(CommercioIdRestoredKeysStateData value), {
    Result initial(CommercioIdRestoredKeysStateInitial value),
    Result loading(CommercioIdRestoredKeysStateLoading value),
    Result error(CommercioIdRestoredKeysStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class CommercioIdRestoredKeysStateData
    implements CommercioIdRestoredKeysState {
  const factory CommercioIdRestoredKeysStateData(
          {@required CommercioIdKeys commercioIdKeys}) =
      _$CommercioIdRestoredKeysStateData;

  CommercioIdKeys get commercioIdKeys;
  $CommercioIdRestoredKeysStateDataCopyWith<CommercioIdRestoredKeysStateData>
      get copyWith;
}

abstract class $CommercioIdRestoredKeysStateInitialCopyWith<$Res> {
  factory $CommercioIdRestoredKeysStateInitialCopyWith(
          CommercioIdRestoredKeysStateInitial value,
          $Res Function(CommercioIdRestoredKeysStateInitial) then) =
      _$CommercioIdRestoredKeysStateInitialCopyWithImpl<$Res>;
}

class _$CommercioIdRestoredKeysStateInitialCopyWithImpl<$Res>
    extends _$CommercioIdRestoredKeysStateCopyWithImpl<$Res>
    implements $CommercioIdRestoredKeysStateInitialCopyWith<$Res> {
  _$CommercioIdRestoredKeysStateInitialCopyWithImpl(
      CommercioIdRestoredKeysStateInitial _value,
      $Res Function(CommercioIdRestoredKeysStateInitial) _then)
      : super(_value, (v) => _then(v as CommercioIdRestoredKeysStateInitial));

  @override
  CommercioIdRestoredKeysStateInitial get _value =>
      super._value as CommercioIdRestoredKeysStateInitial;
}

class _$CommercioIdRestoredKeysStateInitial
    implements CommercioIdRestoredKeysStateInitial {
  const _$CommercioIdRestoredKeysStateInitial();

  @override
  String toString() {
    return 'CommercioIdRestoredKeysState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioIdRestoredKeysStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(CommercioIdKeys commercioIdKeys), {
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
    Result $default(CommercioIdKeys commercioIdKeys), {
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
    Result $default(CommercioIdRestoredKeysStateData value), {
    @required Result initial(CommercioIdRestoredKeysStateInitial value),
    @required Result loading(CommercioIdRestoredKeysStateLoading value),
    @required Result error(CommercioIdRestoredKeysStateError value),
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
    Result $default(CommercioIdRestoredKeysStateData value), {
    Result initial(CommercioIdRestoredKeysStateInitial value),
    Result loading(CommercioIdRestoredKeysStateLoading value),
    Result error(CommercioIdRestoredKeysStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CommercioIdRestoredKeysStateInitial
    implements CommercioIdRestoredKeysState {
  const factory CommercioIdRestoredKeysStateInitial() =
      _$CommercioIdRestoredKeysStateInitial;
}

abstract class $CommercioIdRestoredKeysStateLoadingCopyWith<$Res> {
  factory $CommercioIdRestoredKeysStateLoadingCopyWith(
          CommercioIdRestoredKeysStateLoading value,
          $Res Function(CommercioIdRestoredKeysStateLoading) then) =
      _$CommercioIdRestoredKeysStateLoadingCopyWithImpl<$Res>;
}

class _$CommercioIdRestoredKeysStateLoadingCopyWithImpl<$Res>
    extends _$CommercioIdRestoredKeysStateCopyWithImpl<$Res>
    implements $CommercioIdRestoredKeysStateLoadingCopyWith<$Res> {
  _$CommercioIdRestoredKeysStateLoadingCopyWithImpl(
      CommercioIdRestoredKeysStateLoading _value,
      $Res Function(CommercioIdRestoredKeysStateLoading) _then)
      : super(_value, (v) => _then(v as CommercioIdRestoredKeysStateLoading));

  @override
  CommercioIdRestoredKeysStateLoading get _value =>
      super._value as CommercioIdRestoredKeysStateLoading;
}

class _$CommercioIdRestoredKeysStateLoading
    implements CommercioIdRestoredKeysStateLoading {
  const _$CommercioIdRestoredKeysStateLoading();

  @override
  String toString() {
    return 'CommercioIdRestoredKeysState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioIdRestoredKeysStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(CommercioIdKeys commercioIdKeys), {
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
    Result $default(CommercioIdKeys commercioIdKeys), {
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
    Result $default(CommercioIdRestoredKeysStateData value), {
    @required Result initial(CommercioIdRestoredKeysStateInitial value),
    @required Result loading(CommercioIdRestoredKeysStateLoading value),
    @required Result error(CommercioIdRestoredKeysStateError value),
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
    Result $default(CommercioIdRestoredKeysStateData value), {
    Result initial(CommercioIdRestoredKeysStateInitial value),
    Result loading(CommercioIdRestoredKeysStateLoading value),
    Result error(CommercioIdRestoredKeysStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CommercioIdRestoredKeysStateLoading
    implements CommercioIdRestoredKeysState {
  const factory CommercioIdRestoredKeysStateLoading() =
      _$CommercioIdRestoredKeysStateLoading;
}

abstract class $CommercioIdRestoredKeysStateErrorCopyWith<$Res> {
  factory $CommercioIdRestoredKeysStateErrorCopyWith(
          CommercioIdRestoredKeysStateError value,
          $Res Function(CommercioIdRestoredKeysStateError) then) =
      _$CommercioIdRestoredKeysStateErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

class _$CommercioIdRestoredKeysStateErrorCopyWithImpl<$Res>
    extends _$CommercioIdRestoredKeysStateCopyWithImpl<$Res>
    implements $CommercioIdRestoredKeysStateErrorCopyWith<$Res> {
  _$CommercioIdRestoredKeysStateErrorCopyWithImpl(
      CommercioIdRestoredKeysStateError _value,
      $Res Function(CommercioIdRestoredKeysStateError) _then)
      : super(_value, (v) => _then(v as CommercioIdRestoredKeysStateError));

  @override
  CommercioIdRestoredKeysStateError get _value =>
      super._value as CommercioIdRestoredKeysStateError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(CommercioIdRestoredKeysStateError(
      error == freezed ? _value.error : error as String,
    ));
  }
}

class _$CommercioIdRestoredKeysStateError
    implements CommercioIdRestoredKeysStateError {
  const _$CommercioIdRestoredKeysStateError([this.error]);

  @override
  final String error;

  @override
  String toString() {
    return 'CommercioIdRestoredKeysState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioIdRestoredKeysStateError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $CommercioIdRestoredKeysStateErrorCopyWith<CommercioIdRestoredKeysStateError>
      get copyWith => _$CommercioIdRestoredKeysStateErrorCopyWithImpl<
          CommercioIdRestoredKeysStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(CommercioIdKeys commercioIdKeys), {
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
    Result $default(CommercioIdKeys commercioIdKeys), {
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
    Result $default(CommercioIdRestoredKeysStateData value), {
    @required Result initial(CommercioIdRestoredKeysStateInitial value),
    @required Result loading(CommercioIdRestoredKeysStateLoading value),
    @required Result error(CommercioIdRestoredKeysStateError value),
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
    Result $default(CommercioIdRestoredKeysStateData value), {
    Result initial(CommercioIdRestoredKeysStateInitial value),
    Result loading(CommercioIdRestoredKeysStateLoading value),
    Result error(CommercioIdRestoredKeysStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CommercioIdRestoredKeysStateError
    implements CommercioIdRestoredKeysState {
  const factory CommercioIdRestoredKeysStateError([String error]) =
      _$CommercioIdRestoredKeysStateError;

  String get error;
  $CommercioIdRestoredKeysStateErrorCopyWith<CommercioIdRestoredKeysStateError>
      get copyWith;
}

class _$CommercioIdDeletedKeysStateTearOff {
  const _$CommercioIdDeletedKeysStateTearOff();

  CommercioIdDeletedKeysStateData call() {
    return const CommercioIdDeletedKeysStateData();
  }

  CommercioIdDeletedKeysStateInitial initial() {
    return const CommercioIdDeletedKeysStateInitial();
  }

  CommercioIdDeletedKeysStateLoading loading() {
    return const CommercioIdDeletedKeysStateLoading();
  }

  CommercioIdDeletedKeysStateError error([String error]) {
    return CommercioIdDeletedKeysStateError(
      error,
    );
  }
}

// ignore: unused_element
const $CommercioIdDeletedKeysState = _$CommercioIdDeletedKeysStateTearOff();

mixin _$CommercioIdDeletedKeysState {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result initial(),
    @required Result loading(),
    @required Result error(String error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result initial(),
    Result loading(),
    Result error(String error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CommercioIdDeletedKeysStateData value), {
    @required Result initial(CommercioIdDeletedKeysStateInitial value),
    @required Result loading(CommercioIdDeletedKeysStateLoading value),
    @required Result error(CommercioIdDeletedKeysStateError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CommercioIdDeletedKeysStateData value), {
    Result initial(CommercioIdDeletedKeysStateInitial value),
    Result loading(CommercioIdDeletedKeysStateLoading value),
    Result error(CommercioIdDeletedKeysStateError value),
    @required Result orElse(),
  });
}

abstract class $CommercioIdDeletedKeysStateCopyWith<$Res> {
  factory $CommercioIdDeletedKeysStateCopyWith(
          CommercioIdDeletedKeysState value,
          $Res Function(CommercioIdDeletedKeysState) then) =
      _$CommercioIdDeletedKeysStateCopyWithImpl<$Res>;
}

class _$CommercioIdDeletedKeysStateCopyWithImpl<$Res>
    implements $CommercioIdDeletedKeysStateCopyWith<$Res> {
  _$CommercioIdDeletedKeysStateCopyWithImpl(this._value, this._then);

  final CommercioIdDeletedKeysState _value;
  // ignore: unused_field
  final $Res Function(CommercioIdDeletedKeysState) _then;
}

abstract class $CommercioIdDeletedKeysStateDataCopyWith<$Res> {
  factory $CommercioIdDeletedKeysStateDataCopyWith(
          CommercioIdDeletedKeysStateData value,
          $Res Function(CommercioIdDeletedKeysStateData) then) =
      _$CommercioIdDeletedKeysStateDataCopyWithImpl<$Res>;
}

class _$CommercioIdDeletedKeysStateDataCopyWithImpl<$Res>
    extends _$CommercioIdDeletedKeysStateCopyWithImpl<$Res>
    implements $CommercioIdDeletedKeysStateDataCopyWith<$Res> {
  _$CommercioIdDeletedKeysStateDataCopyWithImpl(
      CommercioIdDeletedKeysStateData _value,
      $Res Function(CommercioIdDeletedKeysStateData) _then)
      : super(_value, (v) => _then(v as CommercioIdDeletedKeysStateData));

  @override
  CommercioIdDeletedKeysStateData get _value =>
      super._value as CommercioIdDeletedKeysStateData;
}

class _$CommercioIdDeletedKeysStateData
    implements CommercioIdDeletedKeysStateData {
  const _$CommercioIdDeletedKeysStateData();

  @override
  String toString() {
    return 'CommercioIdDeletedKeysState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CommercioIdDeletedKeysStateData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result initial(),
    @required Result loading(),
    @required Result error(String error),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return $default();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result initial(),
    Result loading(),
    Result error(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CommercioIdDeletedKeysStateData value), {
    @required Result initial(CommercioIdDeletedKeysStateInitial value),
    @required Result loading(CommercioIdDeletedKeysStateLoading value),
    @required Result error(CommercioIdDeletedKeysStateError value),
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
    Result $default(CommercioIdDeletedKeysStateData value), {
    Result initial(CommercioIdDeletedKeysStateInitial value),
    Result loading(CommercioIdDeletedKeysStateLoading value),
    Result error(CommercioIdDeletedKeysStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class CommercioIdDeletedKeysStateData
    implements CommercioIdDeletedKeysState {
  const factory CommercioIdDeletedKeysStateData() =
      _$CommercioIdDeletedKeysStateData;
}

abstract class $CommercioIdDeletedKeysStateInitialCopyWith<$Res> {
  factory $CommercioIdDeletedKeysStateInitialCopyWith(
          CommercioIdDeletedKeysStateInitial value,
          $Res Function(CommercioIdDeletedKeysStateInitial) then) =
      _$CommercioIdDeletedKeysStateInitialCopyWithImpl<$Res>;
}

class _$CommercioIdDeletedKeysStateInitialCopyWithImpl<$Res>
    extends _$CommercioIdDeletedKeysStateCopyWithImpl<$Res>
    implements $CommercioIdDeletedKeysStateInitialCopyWith<$Res> {
  _$CommercioIdDeletedKeysStateInitialCopyWithImpl(
      CommercioIdDeletedKeysStateInitial _value,
      $Res Function(CommercioIdDeletedKeysStateInitial) _then)
      : super(_value, (v) => _then(v as CommercioIdDeletedKeysStateInitial));

  @override
  CommercioIdDeletedKeysStateInitial get _value =>
      super._value as CommercioIdDeletedKeysStateInitial;
}

class _$CommercioIdDeletedKeysStateInitial
    implements CommercioIdDeletedKeysStateInitial {
  const _$CommercioIdDeletedKeysStateInitial();

  @override
  String toString() {
    return 'CommercioIdDeletedKeysState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioIdDeletedKeysStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
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
    Result $default(), {
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
    Result $default(CommercioIdDeletedKeysStateData value), {
    @required Result initial(CommercioIdDeletedKeysStateInitial value),
    @required Result loading(CommercioIdDeletedKeysStateLoading value),
    @required Result error(CommercioIdDeletedKeysStateError value),
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
    Result $default(CommercioIdDeletedKeysStateData value), {
    Result initial(CommercioIdDeletedKeysStateInitial value),
    Result loading(CommercioIdDeletedKeysStateLoading value),
    Result error(CommercioIdDeletedKeysStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CommercioIdDeletedKeysStateInitial
    implements CommercioIdDeletedKeysState {
  const factory CommercioIdDeletedKeysStateInitial() =
      _$CommercioIdDeletedKeysStateInitial;
}

abstract class $CommercioIdDeletedKeysStateLoadingCopyWith<$Res> {
  factory $CommercioIdDeletedKeysStateLoadingCopyWith(
          CommercioIdDeletedKeysStateLoading value,
          $Res Function(CommercioIdDeletedKeysStateLoading) then) =
      _$CommercioIdDeletedKeysStateLoadingCopyWithImpl<$Res>;
}

class _$CommercioIdDeletedKeysStateLoadingCopyWithImpl<$Res>
    extends _$CommercioIdDeletedKeysStateCopyWithImpl<$Res>
    implements $CommercioIdDeletedKeysStateLoadingCopyWith<$Res> {
  _$CommercioIdDeletedKeysStateLoadingCopyWithImpl(
      CommercioIdDeletedKeysStateLoading _value,
      $Res Function(CommercioIdDeletedKeysStateLoading) _then)
      : super(_value, (v) => _then(v as CommercioIdDeletedKeysStateLoading));

  @override
  CommercioIdDeletedKeysStateLoading get _value =>
      super._value as CommercioIdDeletedKeysStateLoading;
}

class _$CommercioIdDeletedKeysStateLoading
    implements CommercioIdDeletedKeysStateLoading {
  const _$CommercioIdDeletedKeysStateLoading();

  @override
  String toString() {
    return 'CommercioIdDeletedKeysState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioIdDeletedKeysStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
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
    Result $default(), {
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
    Result $default(CommercioIdDeletedKeysStateData value), {
    @required Result initial(CommercioIdDeletedKeysStateInitial value),
    @required Result loading(CommercioIdDeletedKeysStateLoading value),
    @required Result error(CommercioIdDeletedKeysStateError value),
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
    Result $default(CommercioIdDeletedKeysStateData value), {
    Result initial(CommercioIdDeletedKeysStateInitial value),
    Result loading(CommercioIdDeletedKeysStateLoading value),
    Result error(CommercioIdDeletedKeysStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CommercioIdDeletedKeysStateLoading
    implements CommercioIdDeletedKeysState {
  const factory CommercioIdDeletedKeysStateLoading() =
      _$CommercioIdDeletedKeysStateLoading;
}

abstract class $CommercioIdDeletedKeysStateErrorCopyWith<$Res> {
  factory $CommercioIdDeletedKeysStateErrorCopyWith(
          CommercioIdDeletedKeysStateError value,
          $Res Function(CommercioIdDeletedKeysStateError) then) =
      _$CommercioIdDeletedKeysStateErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

class _$CommercioIdDeletedKeysStateErrorCopyWithImpl<$Res>
    extends _$CommercioIdDeletedKeysStateCopyWithImpl<$Res>
    implements $CommercioIdDeletedKeysStateErrorCopyWith<$Res> {
  _$CommercioIdDeletedKeysStateErrorCopyWithImpl(
      CommercioIdDeletedKeysStateError _value,
      $Res Function(CommercioIdDeletedKeysStateError) _then)
      : super(_value, (v) => _then(v as CommercioIdDeletedKeysStateError));

  @override
  CommercioIdDeletedKeysStateError get _value =>
      super._value as CommercioIdDeletedKeysStateError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(CommercioIdDeletedKeysStateError(
      error == freezed ? _value.error : error as String,
    ));
  }
}

class _$CommercioIdDeletedKeysStateError
    implements CommercioIdDeletedKeysStateError {
  const _$CommercioIdDeletedKeysStateError([this.error]);

  @override
  final String error;

  @override
  String toString() {
    return 'CommercioIdDeletedKeysState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioIdDeletedKeysStateError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $CommercioIdDeletedKeysStateErrorCopyWith<CommercioIdDeletedKeysStateError>
      get copyWith => _$CommercioIdDeletedKeysStateErrorCopyWithImpl<
          CommercioIdDeletedKeysStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
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
    Result $default(), {
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
    Result $default(CommercioIdDeletedKeysStateData value), {
    @required Result initial(CommercioIdDeletedKeysStateInitial value),
    @required Result loading(CommercioIdDeletedKeysStateLoading value),
    @required Result error(CommercioIdDeletedKeysStateError value),
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
    Result $default(CommercioIdDeletedKeysStateData value), {
    Result initial(CommercioIdDeletedKeysStateInitial value),
    Result loading(CommercioIdDeletedKeysStateLoading value),
    Result error(CommercioIdDeletedKeysStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CommercioIdDeletedKeysStateError
    implements CommercioIdDeletedKeysState {
  const factory CommercioIdDeletedKeysStateError([String error]) =
      _$CommercioIdDeletedKeysStateError;

  String get error;
  $CommercioIdDeletedKeysStateErrorCopyWith<CommercioIdDeletedKeysStateError>
      get copyWith;
}

class _$CommercioIdDerivedDidDocumentStateTearOff {
  const _$CommercioIdDerivedDidDocumentStateTearOff();

  CommercioIdDerivedDidDocumentStateData call(
      {@required DidDocument didDocument}) {
    return CommercioIdDerivedDidDocumentStateData(
      didDocument: didDocument,
    );
  }

  CommercioIdDerivedDidDocumentStateInitial initial() {
    return const CommercioIdDerivedDidDocumentStateInitial();
  }

  CommercioIdDerivedDidDocumentStateLoading loading() {
    return const CommercioIdDerivedDidDocumentStateLoading();
  }

  CommercioIdDerivedDidDocumentStateError error([String error]) {
    return CommercioIdDerivedDidDocumentStateError(
      error,
    );
  }
}

// ignore: unused_element
const $CommercioIdDerivedDidDocumentState =
    _$CommercioIdDerivedDidDocumentStateTearOff();

mixin _$CommercioIdDerivedDidDocumentState {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(DidDocument didDocument), {
    @required Result initial(),
    @required Result loading(),
    @required Result error(String error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(DidDocument didDocument), {
    Result initial(),
    Result loading(),
    Result error(String error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CommercioIdDerivedDidDocumentStateData value), {
    @required Result initial(CommercioIdDerivedDidDocumentStateInitial value),
    @required Result loading(CommercioIdDerivedDidDocumentStateLoading value),
    @required Result error(CommercioIdDerivedDidDocumentStateError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CommercioIdDerivedDidDocumentStateData value), {
    Result initial(CommercioIdDerivedDidDocumentStateInitial value),
    Result loading(CommercioIdDerivedDidDocumentStateLoading value),
    Result error(CommercioIdDerivedDidDocumentStateError value),
    @required Result orElse(),
  });
}

abstract class $CommercioIdDerivedDidDocumentStateCopyWith<$Res> {
  factory $CommercioIdDerivedDidDocumentStateCopyWith(
          CommercioIdDerivedDidDocumentState value,
          $Res Function(CommercioIdDerivedDidDocumentState) then) =
      _$CommercioIdDerivedDidDocumentStateCopyWithImpl<$Res>;
}

class _$CommercioIdDerivedDidDocumentStateCopyWithImpl<$Res>
    implements $CommercioIdDerivedDidDocumentStateCopyWith<$Res> {
  _$CommercioIdDerivedDidDocumentStateCopyWithImpl(this._value, this._then);

  final CommercioIdDerivedDidDocumentState _value;
  // ignore: unused_field
  final $Res Function(CommercioIdDerivedDidDocumentState) _then;
}

abstract class $CommercioIdDerivedDidDocumentStateDataCopyWith<$Res> {
  factory $CommercioIdDerivedDidDocumentStateDataCopyWith(
          CommercioIdDerivedDidDocumentStateData value,
          $Res Function(CommercioIdDerivedDidDocumentStateData) then) =
      _$CommercioIdDerivedDidDocumentStateDataCopyWithImpl<$Res>;
  $Res call({DidDocument didDocument});
}

class _$CommercioIdDerivedDidDocumentStateDataCopyWithImpl<$Res>
    extends _$CommercioIdDerivedDidDocumentStateCopyWithImpl<$Res>
    implements $CommercioIdDerivedDidDocumentStateDataCopyWith<$Res> {
  _$CommercioIdDerivedDidDocumentStateDataCopyWithImpl(
      CommercioIdDerivedDidDocumentStateData _value,
      $Res Function(CommercioIdDerivedDidDocumentStateData) _then)
      : super(
            _value, (v) => _then(v as CommercioIdDerivedDidDocumentStateData));

  @override
  CommercioIdDerivedDidDocumentStateData get _value =>
      super._value as CommercioIdDerivedDidDocumentStateData;

  @override
  $Res call({
    Object didDocument = freezed,
  }) {
    return _then(CommercioIdDerivedDidDocumentStateData(
      didDocument: didDocument == freezed
          ? _value.didDocument
          : didDocument as DidDocument,
    ));
  }
}

class _$CommercioIdDerivedDidDocumentStateData
    implements CommercioIdDerivedDidDocumentStateData {
  const _$CommercioIdDerivedDidDocumentStateData({@required this.didDocument})
      : assert(didDocument != null);

  @override
  final DidDocument didDocument;

  @override
  String toString() {
    return 'CommercioIdDerivedDidDocumentState(didDocument: $didDocument)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioIdDerivedDidDocumentStateData &&
            (identical(other.didDocument, didDocument) ||
                const DeepCollectionEquality()
                    .equals(other.didDocument, didDocument)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(didDocument);

  @override
  $CommercioIdDerivedDidDocumentStateDataCopyWith<
          CommercioIdDerivedDidDocumentStateData>
      get copyWith => _$CommercioIdDerivedDidDocumentStateDataCopyWithImpl<
          CommercioIdDerivedDidDocumentStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(DidDocument didDocument), {
    @required Result initial(),
    @required Result loading(),
    @required Result error(String error),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return $default(didDocument);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(DidDocument didDocument), {
    Result initial(),
    Result loading(),
    Result error(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(didDocument);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CommercioIdDerivedDidDocumentStateData value), {
    @required Result initial(CommercioIdDerivedDidDocumentStateInitial value),
    @required Result loading(CommercioIdDerivedDidDocumentStateLoading value),
    @required Result error(CommercioIdDerivedDidDocumentStateError value),
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
    Result $default(CommercioIdDerivedDidDocumentStateData value), {
    Result initial(CommercioIdDerivedDidDocumentStateInitial value),
    Result loading(CommercioIdDerivedDidDocumentStateLoading value),
    Result error(CommercioIdDerivedDidDocumentStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class CommercioIdDerivedDidDocumentStateData
    implements CommercioIdDerivedDidDocumentState {
  const factory CommercioIdDerivedDidDocumentStateData(
          {@required DidDocument didDocument}) =
      _$CommercioIdDerivedDidDocumentStateData;

  DidDocument get didDocument;
  $CommercioIdDerivedDidDocumentStateDataCopyWith<
      CommercioIdDerivedDidDocumentStateData> get copyWith;
}

abstract class $CommercioIdDerivedDidDocumentStateInitialCopyWith<$Res> {
  factory $CommercioIdDerivedDidDocumentStateInitialCopyWith(
          CommercioIdDerivedDidDocumentStateInitial value,
          $Res Function(CommercioIdDerivedDidDocumentStateInitial) then) =
      _$CommercioIdDerivedDidDocumentStateInitialCopyWithImpl<$Res>;
}

class _$CommercioIdDerivedDidDocumentStateInitialCopyWithImpl<$Res>
    extends _$CommercioIdDerivedDidDocumentStateCopyWithImpl<$Res>
    implements $CommercioIdDerivedDidDocumentStateInitialCopyWith<$Res> {
  _$CommercioIdDerivedDidDocumentStateInitialCopyWithImpl(
      CommercioIdDerivedDidDocumentStateInitial _value,
      $Res Function(CommercioIdDerivedDidDocumentStateInitial) _then)
      : super(_value,
            (v) => _then(v as CommercioIdDerivedDidDocumentStateInitial));

  @override
  CommercioIdDerivedDidDocumentStateInitial get _value =>
      super._value as CommercioIdDerivedDidDocumentStateInitial;
}

class _$CommercioIdDerivedDidDocumentStateInitial
    implements CommercioIdDerivedDidDocumentStateInitial {
  const _$CommercioIdDerivedDidDocumentStateInitial();

  @override
  String toString() {
    return 'CommercioIdDerivedDidDocumentState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioIdDerivedDidDocumentStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(DidDocument didDocument), {
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
    Result $default(DidDocument didDocument), {
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
    Result $default(CommercioIdDerivedDidDocumentStateData value), {
    @required Result initial(CommercioIdDerivedDidDocumentStateInitial value),
    @required Result loading(CommercioIdDerivedDidDocumentStateLoading value),
    @required Result error(CommercioIdDerivedDidDocumentStateError value),
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
    Result $default(CommercioIdDerivedDidDocumentStateData value), {
    Result initial(CommercioIdDerivedDidDocumentStateInitial value),
    Result loading(CommercioIdDerivedDidDocumentStateLoading value),
    Result error(CommercioIdDerivedDidDocumentStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CommercioIdDerivedDidDocumentStateInitial
    implements CommercioIdDerivedDidDocumentState {
  const factory CommercioIdDerivedDidDocumentStateInitial() =
      _$CommercioIdDerivedDidDocumentStateInitial;
}

abstract class $CommercioIdDerivedDidDocumentStateLoadingCopyWith<$Res> {
  factory $CommercioIdDerivedDidDocumentStateLoadingCopyWith(
          CommercioIdDerivedDidDocumentStateLoading value,
          $Res Function(CommercioIdDerivedDidDocumentStateLoading) then) =
      _$CommercioIdDerivedDidDocumentStateLoadingCopyWithImpl<$Res>;
}

class _$CommercioIdDerivedDidDocumentStateLoadingCopyWithImpl<$Res>
    extends _$CommercioIdDerivedDidDocumentStateCopyWithImpl<$Res>
    implements $CommercioIdDerivedDidDocumentStateLoadingCopyWith<$Res> {
  _$CommercioIdDerivedDidDocumentStateLoadingCopyWithImpl(
      CommercioIdDerivedDidDocumentStateLoading _value,
      $Res Function(CommercioIdDerivedDidDocumentStateLoading) _then)
      : super(_value,
            (v) => _then(v as CommercioIdDerivedDidDocumentStateLoading));

  @override
  CommercioIdDerivedDidDocumentStateLoading get _value =>
      super._value as CommercioIdDerivedDidDocumentStateLoading;
}

class _$CommercioIdDerivedDidDocumentStateLoading
    implements CommercioIdDerivedDidDocumentStateLoading {
  const _$CommercioIdDerivedDidDocumentStateLoading();

  @override
  String toString() {
    return 'CommercioIdDerivedDidDocumentState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioIdDerivedDidDocumentStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(DidDocument didDocument), {
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
    Result $default(DidDocument didDocument), {
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
    Result $default(CommercioIdDerivedDidDocumentStateData value), {
    @required Result initial(CommercioIdDerivedDidDocumentStateInitial value),
    @required Result loading(CommercioIdDerivedDidDocumentStateLoading value),
    @required Result error(CommercioIdDerivedDidDocumentStateError value),
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
    Result $default(CommercioIdDerivedDidDocumentStateData value), {
    Result initial(CommercioIdDerivedDidDocumentStateInitial value),
    Result loading(CommercioIdDerivedDidDocumentStateLoading value),
    Result error(CommercioIdDerivedDidDocumentStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CommercioIdDerivedDidDocumentStateLoading
    implements CommercioIdDerivedDidDocumentState {
  const factory CommercioIdDerivedDidDocumentStateLoading() =
      _$CommercioIdDerivedDidDocumentStateLoading;
}

abstract class $CommercioIdDerivedDidDocumentStateErrorCopyWith<$Res> {
  factory $CommercioIdDerivedDidDocumentStateErrorCopyWith(
          CommercioIdDerivedDidDocumentStateError value,
          $Res Function(CommercioIdDerivedDidDocumentStateError) then) =
      _$CommercioIdDerivedDidDocumentStateErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

class _$CommercioIdDerivedDidDocumentStateErrorCopyWithImpl<$Res>
    extends _$CommercioIdDerivedDidDocumentStateCopyWithImpl<$Res>
    implements $CommercioIdDerivedDidDocumentStateErrorCopyWith<$Res> {
  _$CommercioIdDerivedDidDocumentStateErrorCopyWithImpl(
      CommercioIdDerivedDidDocumentStateError _value,
      $Res Function(CommercioIdDerivedDidDocumentStateError) _then)
      : super(
            _value, (v) => _then(v as CommercioIdDerivedDidDocumentStateError));

  @override
  CommercioIdDerivedDidDocumentStateError get _value =>
      super._value as CommercioIdDerivedDidDocumentStateError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(CommercioIdDerivedDidDocumentStateError(
      error == freezed ? _value.error : error as String,
    ));
  }
}

class _$CommercioIdDerivedDidDocumentStateError
    implements CommercioIdDerivedDidDocumentStateError {
  const _$CommercioIdDerivedDidDocumentStateError([this.error]);

  @override
  final String error;

  @override
  String toString() {
    return 'CommercioIdDerivedDidDocumentState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioIdDerivedDidDocumentStateError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $CommercioIdDerivedDidDocumentStateErrorCopyWith<
          CommercioIdDerivedDidDocumentStateError>
      get copyWith => _$CommercioIdDerivedDidDocumentStateErrorCopyWithImpl<
          CommercioIdDerivedDidDocumentStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(DidDocument didDocument), {
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
    Result $default(DidDocument didDocument), {
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
    Result $default(CommercioIdDerivedDidDocumentStateData value), {
    @required Result initial(CommercioIdDerivedDidDocumentStateInitial value),
    @required Result loading(CommercioIdDerivedDidDocumentStateLoading value),
    @required Result error(CommercioIdDerivedDidDocumentStateError value),
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
    Result $default(CommercioIdDerivedDidDocumentStateData value), {
    Result initial(CommercioIdDerivedDidDocumentStateInitial value),
    Result loading(CommercioIdDerivedDidDocumentStateLoading value),
    Result error(CommercioIdDerivedDidDocumentStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CommercioIdDerivedDidDocumentStateError
    implements CommercioIdDerivedDidDocumentState {
  const factory CommercioIdDerivedDidDocumentStateError([String error]) =
      _$CommercioIdDerivedDidDocumentStateError;

  String get error;
  $CommercioIdDerivedDidDocumentStateErrorCopyWith<
      CommercioIdDerivedDidDocumentStateError> get copyWith;
}

class _$CommercioIdSetDidDocumentsStateTearOff {
  const _$CommercioIdSetDidDocumentsStateTearOff();

  CommercioIdSetDidDocumentsStateData call(
      {@required TransactionResult result}) {
    return CommercioIdSetDidDocumentsStateData(
      result: result,
    );
  }

  CommercioIdSetDidDocumentsStateInitial initial() {
    return const CommercioIdSetDidDocumentsStateInitial();
  }

  CommercioIdSetDidDocumentsStateLoading loading() {
    return const CommercioIdSetDidDocumentsStateLoading();
  }

  CommercioIdSetDidDocumentsStateError error([String error]) {
    return CommercioIdSetDidDocumentsStateError(
      error,
    );
  }
}

// ignore: unused_element
const $CommercioIdSetDidDocumentsState =
    _$CommercioIdSetDidDocumentsStateTearOff();

mixin _$CommercioIdSetDidDocumentsState {
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
    Result $default(CommercioIdSetDidDocumentsStateData value), {
    @required Result initial(CommercioIdSetDidDocumentsStateInitial value),
    @required Result loading(CommercioIdSetDidDocumentsStateLoading value),
    @required Result error(CommercioIdSetDidDocumentsStateError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CommercioIdSetDidDocumentsStateData value), {
    Result initial(CommercioIdSetDidDocumentsStateInitial value),
    Result loading(CommercioIdSetDidDocumentsStateLoading value),
    Result error(CommercioIdSetDidDocumentsStateError value),
    @required Result orElse(),
  });
}

abstract class $CommercioIdSetDidDocumentsStateCopyWith<$Res> {
  factory $CommercioIdSetDidDocumentsStateCopyWith(
          CommercioIdSetDidDocumentsState value,
          $Res Function(CommercioIdSetDidDocumentsState) then) =
      _$CommercioIdSetDidDocumentsStateCopyWithImpl<$Res>;
}

class _$CommercioIdSetDidDocumentsStateCopyWithImpl<$Res>
    implements $CommercioIdSetDidDocumentsStateCopyWith<$Res> {
  _$CommercioIdSetDidDocumentsStateCopyWithImpl(this._value, this._then);

  final CommercioIdSetDidDocumentsState _value;
  // ignore: unused_field
  final $Res Function(CommercioIdSetDidDocumentsState) _then;
}

abstract class $CommercioIdSetDidDocumentsStateDataCopyWith<$Res> {
  factory $CommercioIdSetDidDocumentsStateDataCopyWith(
          CommercioIdSetDidDocumentsStateData value,
          $Res Function(CommercioIdSetDidDocumentsStateData) then) =
      _$CommercioIdSetDidDocumentsStateDataCopyWithImpl<$Res>;
  $Res call({TransactionResult result});
}

class _$CommercioIdSetDidDocumentsStateDataCopyWithImpl<$Res>
    extends _$CommercioIdSetDidDocumentsStateCopyWithImpl<$Res>
    implements $CommercioIdSetDidDocumentsStateDataCopyWith<$Res> {
  _$CommercioIdSetDidDocumentsStateDataCopyWithImpl(
      CommercioIdSetDidDocumentsStateData _value,
      $Res Function(CommercioIdSetDidDocumentsStateData) _then)
      : super(_value, (v) => _then(v as CommercioIdSetDidDocumentsStateData));

  @override
  CommercioIdSetDidDocumentsStateData get _value =>
      super._value as CommercioIdSetDidDocumentsStateData;

  @override
  $Res call({
    Object result = freezed,
  }) {
    return _then(CommercioIdSetDidDocumentsStateData(
      result: result == freezed ? _value.result : result as TransactionResult,
    ));
  }
}

class _$CommercioIdSetDidDocumentsStateData
    implements CommercioIdSetDidDocumentsStateData {
  const _$CommercioIdSetDidDocumentsStateData({@required this.result})
      : assert(result != null);

  @override
  final TransactionResult result;

  @override
  String toString() {
    return 'CommercioIdSetDidDocumentsState(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioIdSetDidDocumentsStateData &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(result);

  @override
  $CommercioIdSetDidDocumentsStateDataCopyWith<
          CommercioIdSetDidDocumentsStateData>
      get copyWith => _$CommercioIdSetDidDocumentsStateDataCopyWithImpl<
          CommercioIdSetDidDocumentsStateData>(this, _$identity);

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
    Result $default(CommercioIdSetDidDocumentsStateData value), {
    @required Result initial(CommercioIdSetDidDocumentsStateInitial value),
    @required Result loading(CommercioIdSetDidDocumentsStateLoading value),
    @required Result error(CommercioIdSetDidDocumentsStateError value),
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
    Result $default(CommercioIdSetDidDocumentsStateData value), {
    Result initial(CommercioIdSetDidDocumentsStateInitial value),
    Result loading(CommercioIdSetDidDocumentsStateLoading value),
    Result error(CommercioIdSetDidDocumentsStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class CommercioIdSetDidDocumentsStateData
    implements CommercioIdSetDidDocumentsState {
  const factory CommercioIdSetDidDocumentsStateData(
          {@required TransactionResult result}) =
      _$CommercioIdSetDidDocumentsStateData;

  TransactionResult get result;
  $CommercioIdSetDidDocumentsStateDataCopyWith<
      CommercioIdSetDidDocumentsStateData> get copyWith;
}

abstract class $CommercioIdSetDidDocumentsStateInitialCopyWith<$Res> {
  factory $CommercioIdSetDidDocumentsStateInitialCopyWith(
          CommercioIdSetDidDocumentsStateInitial value,
          $Res Function(CommercioIdSetDidDocumentsStateInitial) then) =
      _$CommercioIdSetDidDocumentsStateInitialCopyWithImpl<$Res>;
}

class _$CommercioIdSetDidDocumentsStateInitialCopyWithImpl<$Res>
    extends _$CommercioIdSetDidDocumentsStateCopyWithImpl<$Res>
    implements $CommercioIdSetDidDocumentsStateInitialCopyWith<$Res> {
  _$CommercioIdSetDidDocumentsStateInitialCopyWithImpl(
      CommercioIdSetDidDocumentsStateInitial _value,
      $Res Function(CommercioIdSetDidDocumentsStateInitial) _then)
      : super(
            _value, (v) => _then(v as CommercioIdSetDidDocumentsStateInitial));

  @override
  CommercioIdSetDidDocumentsStateInitial get _value =>
      super._value as CommercioIdSetDidDocumentsStateInitial;
}

class _$CommercioIdSetDidDocumentsStateInitial
    implements CommercioIdSetDidDocumentsStateInitial {
  const _$CommercioIdSetDidDocumentsStateInitial();

  @override
  String toString() {
    return 'CommercioIdSetDidDocumentsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioIdSetDidDocumentsStateInitial);
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
    Result $default(CommercioIdSetDidDocumentsStateData value), {
    @required Result initial(CommercioIdSetDidDocumentsStateInitial value),
    @required Result loading(CommercioIdSetDidDocumentsStateLoading value),
    @required Result error(CommercioIdSetDidDocumentsStateError value),
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
    Result $default(CommercioIdSetDidDocumentsStateData value), {
    Result initial(CommercioIdSetDidDocumentsStateInitial value),
    Result loading(CommercioIdSetDidDocumentsStateLoading value),
    Result error(CommercioIdSetDidDocumentsStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CommercioIdSetDidDocumentsStateInitial
    implements CommercioIdSetDidDocumentsState {
  const factory CommercioIdSetDidDocumentsStateInitial() =
      _$CommercioIdSetDidDocumentsStateInitial;
}

abstract class $CommercioIdSetDidDocumentsStateLoadingCopyWith<$Res> {
  factory $CommercioIdSetDidDocumentsStateLoadingCopyWith(
          CommercioIdSetDidDocumentsStateLoading value,
          $Res Function(CommercioIdSetDidDocumentsStateLoading) then) =
      _$CommercioIdSetDidDocumentsStateLoadingCopyWithImpl<$Res>;
}

class _$CommercioIdSetDidDocumentsStateLoadingCopyWithImpl<$Res>
    extends _$CommercioIdSetDidDocumentsStateCopyWithImpl<$Res>
    implements $CommercioIdSetDidDocumentsStateLoadingCopyWith<$Res> {
  _$CommercioIdSetDidDocumentsStateLoadingCopyWithImpl(
      CommercioIdSetDidDocumentsStateLoading _value,
      $Res Function(CommercioIdSetDidDocumentsStateLoading) _then)
      : super(
            _value, (v) => _then(v as CommercioIdSetDidDocumentsStateLoading));

  @override
  CommercioIdSetDidDocumentsStateLoading get _value =>
      super._value as CommercioIdSetDidDocumentsStateLoading;
}

class _$CommercioIdSetDidDocumentsStateLoading
    implements CommercioIdSetDidDocumentsStateLoading {
  const _$CommercioIdSetDidDocumentsStateLoading();

  @override
  String toString() {
    return 'CommercioIdSetDidDocumentsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioIdSetDidDocumentsStateLoading);
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
    Result $default(CommercioIdSetDidDocumentsStateData value), {
    @required Result initial(CommercioIdSetDidDocumentsStateInitial value),
    @required Result loading(CommercioIdSetDidDocumentsStateLoading value),
    @required Result error(CommercioIdSetDidDocumentsStateError value),
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
    Result $default(CommercioIdSetDidDocumentsStateData value), {
    Result initial(CommercioIdSetDidDocumentsStateInitial value),
    Result loading(CommercioIdSetDidDocumentsStateLoading value),
    Result error(CommercioIdSetDidDocumentsStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CommercioIdSetDidDocumentsStateLoading
    implements CommercioIdSetDidDocumentsState {
  const factory CommercioIdSetDidDocumentsStateLoading() =
      _$CommercioIdSetDidDocumentsStateLoading;
}

abstract class $CommercioIdSetDidDocumentsStateErrorCopyWith<$Res> {
  factory $CommercioIdSetDidDocumentsStateErrorCopyWith(
          CommercioIdSetDidDocumentsStateError value,
          $Res Function(CommercioIdSetDidDocumentsStateError) then) =
      _$CommercioIdSetDidDocumentsStateErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

class _$CommercioIdSetDidDocumentsStateErrorCopyWithImpl<$Res>
    extends _$CommercioIdSetDidDocumentsStateCopyWithImpl<$Res>
    implements $CommercioIdSetDidDocumentsStateErrorCopyWith<$Res> {
  _$CommercioIdSetDidDocumentsStateErrorCopyWithImpl(
      CommercioIdSetDidDocumentsStateError _value,
      $Res Function(CommercioIdSetDidDocumentsStateError) _then)
      : super(_value, (v) => _then(v as CommercioIdSetDidDocumentsStateError));

  @override
  CommercioIdSetDidDocumentsStateError get _value =>
      super._value as CommercioIdSetDidDocumentsStateError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(CommercioIdSetDidDocumentsStateError(
      error == freezed ? _value.error : error as String,
    ));
  }
}

class _$CommercioIdSetDidDocumentsStateError
    implements CommercioIdSetDidDocumentsStateError {
  const _$CommercioIdSetDidDocumentsStateError([this.error]);

  @override
  final String error;

  @override
  String toString() {
    return 'CommercioIdSetDidDocumentsState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioIdSetDidDocumentsStateError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $CommercioIdSetDidDocumentsStateErrorCopyWith<
          CommercioIdSetDidDocumentsStateError>
      get copyWith => _$CommercioIdSetDidDocumentsStateErrorCopyWithImpl<
          CommercioIdSetDidDocumentsStateError>(this, _$identity);

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
    Result $default(CommercioIdSetDidDocumentsStateData value), {
    @required Result initial(CommercioIdSetDidDocumentsStateInitial value),
    @required Result loading(CommercioIdSetDidDocumentsStateLoading value),
    @required Result error(CommercioIdSetDidDocumentsStateError value),
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
    Result $default(CommercioIdSetDidDocumentsStateData value), {
    Result initial(CommercioIdSetDidDocumentsStateInitial value),
    Result loading(CommercioIdSetDidDocumentsStateLoading value),
    Result error(CommercioIdSetDidDocumentsStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CommercioIdSetDidDocumentsStateError
    implements CommercioIdSetDidDocumentsState {
  const factory CommercioIdSetDidDocumentsStateError([String error]) =
      _$CommercioIdSetDidDocumentsStateError;

  String get error;
  $CommercioIdSetDidDocumentsStateErrorCopyWith<
      CommercioIdSetDidDocumentsStateError> get copyWith;
}

class _$CommercioIdRechargedTumblerStateTearOff {
  const _$CommercioIdRechargedTumblerStateTearOff();

  CommercioIdRechargedTumblerStateData call(
      {@required TransactionResult result}) {
    return CommercioIdRechargedTumblerStateData(
      result: result,
    );
  }

  CommercioIdRechargedTumblerStateInitial initial() {
    return const CommercioIdRechargedTumblerStateInitial();
  }

  CommercioIdRechargedTumblerStateLoading loading() {
    return const CommercioIdRechargedTumblerStateLoading();
  }

  CommercioIdRechargedTumblerStateError error([String error]) {
    return CommercioIdRechargedTumblerStateError(
      error,
    );
  }
}

// ignore: unused_element
const $CommercioIdRechargedTumblerState =
    _$CommercioIdRechargedTumblerStateTearOff();

mixin _$CommercioIdRechargedTumblerState {
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
    Result $default(CommercioIdRechargedTumblerStateData value), {
    @required Result initial(CommercioIdRechargedTumblerStateInitial value),
    @required Result loading(CommercioIdRechargedTumblerStateLoading value),
    @required Result error(CommercioIdRechargedTumblerStateError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CommercioIdRechargedTumblerStateData value), {
    Result initial(CommercioIdRechargedTumblerStateInitial value),
    Result loading(CommercioIdRechargedTumblerStateLoading value),
    Result error(CommercioIdRechargedTumblerStateError value),
    @required Result orElse(),
  });
}

abstract class $CommercioIdRechargedTumblerStateCopyWith<$Res> {
  factory $CommercioIdRechargedTumblerStateCopyWith(
          CommercioIdRechargedTumblerState value,
          $Res Function(CommercioIdRechargedTumblerState) then) =
      _$CommercioIdRechargedTumblerStateCopyWithImpl<$Res>;
}

class _$CommercioIdRechargedTumblerStateCopyWithImpl<$Res>
    implements $CommercioIdRechargedTumblerStateCopyWith<$Res> {
  _$CommercioIdRechargedTumblerStateCopyWithImpl(this._value, this._then);

  final CommercioIdRechargedTumblerState _value;
  // ignore: unused_field
  final $Res Function(CommercioIdRechargedTumblerState) _then;
}

abstract class $CommercioIdRechargedTumblerStateDataCopyWith<$Res> {
  factory $CommercioIdRechargedTumblerStateDataCopyWith(
          CommercioIdRechargedTumblerStateData value,
          $Res Function(CommercioIdRechargedTumblerStateData) then) =
      _$CommercioIdRechargedTumblerStateDataCopyWithImpl<$Res>;
  $Res call({TransactionResult result});
}

class _$CommercioIdRechargedTumblerStateDataCopyWithImpl<$Res>
    extends _$CommercioIdRechargedTumblerStateCopyWithImpl<$Res>
    implements $CommercioIdRechargedTumblerStateDataCopyWith<$Res> {
  _$CommercioIdRechargedTumblerStateDataCopyWithImpl(
      CommercioIdRechargedTumblerStateData _value,
      $Res Function(CommercioIdRechargedTumblerStateData) _then)
      : super(_value, (v) => _then(v as CommercioIdRechargedTumblerStateData));

  @override
  CommercioIdRechargedTumblerStateData get _value =>
      super._value as CommercioIdRechargedTumblerStateData;

  @override
  $Res call({
    Object result = freezed,
  }) {
    return _then(CommercioIdRechargedTumblerStateData(
      result: result == freezed ? _value.result : result as TransactionResult,
    ));
  }
}

class _$CommercioIdRechargedTumblerStateData
    implements CommercioIdRechargedTumblerStateData {
  const _$CommercioIdRechargedTumblerStateData({@required this.result})
      : assert(result != null);

  @override
  final TransactionResult result;

  @override
  String toString() {
    return 'CommercioIdRechargedTumblerState(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioIdRechargedTumblerStateData &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(result);

  @override
  $CommercioIdRechargedTumblerStateDataCopyWith<
          CommercioIdRechargedTumblerStateData>
      get copyWith => _$CommercioIdRechargedTumblerStateDataCopyWithImpl<
          CommercioIdRechargedTumblerStateData>(this, _$identity);

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
    Result $default(CommercioIdRechargedTumblerStateData value), {
    @required Result initial(CommercioIdRechargedTumblerStateInitial value),
    @required Result loading(CommercioIdRechargedTumblerStateLoading value),
    @required Result error(CommercioIdRechargedTumblerStateError value),
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
    Result $default(CommercioIdRechargedTumblerStateData value), {
    Result initial(CommercioIdRechargedTumblerStateInitial value),
    Result loading(CommercioIdRechargedTumblerStateLoading value),
    Result error(CommercioIdRechargedTumblerStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class CommercioIdRechargedTumblerStateData
    implements CommercioIdRechargedTumblerState {
  const factory CommercioIdRechargedTumblerStateData(
          {@required TransactionResult result}) =
      _$CommercioIdRechargedTumblerStateData;

  TransactionResult get result;
  $CommercioIdRechargedTumblerStateDataCopyWith<
      CommercioIdRechargedTumblerStateData> get copyWith;
}

abstract class $CommercioIdRechargedTumblerStateInitialCopyWith<$Res> {
  factory $CommercioIdRechargedTumblerStateInitialCopyWith(
          CommercioIdRechargedTumblerStateInitial value,
          $Res Function(CommercioIdRechargedTumblerStateInitial) then) =
      _$CommercioIdRechargedTumblerStateInitialCopyWithImpl<$Res>;
}

class _$CommercioIdRechargedTumblerStateInitialCopyWithImpl<$Res>
    extends _$CommercioIdRechargedTumblerStateCopyWithImpl<$Res>
    implements $CommercioIdRechargedTumblerStateInitialCopyWith<$Res> {
  _$CommercioIdRechargedTumblerStateInitialCopyWithImpl(
      CommercioIdRechargedTumblerStateInitial _value,
      $Res Function(CommercioIdRechargedTumblerStateInitial) _then)
      : super(
            _value, (v) => _then(v as CommercioIdRechargedTumblerStateInitial));

  @override
  CommercioIdRechargedTumblerStateInitial get _value =>
      super._value as CommercioIdRechargedTumblerStateInitial;
}

class _$CommercioIdRechargedTumblerStateInitial
    implements CommercioIdRechargedTumblerStateInitial {
  const _$CommercioIdRechargedTumblerStateInitial();

  @override
  String toString() {
    return 'CommercioIdRechargedTumblerState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioIdRechargedTumblerStateInitial);
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
    Result $default(CommercioIdRechargedTumblerStateData value), {
    @required Result initial(CommercioIdRechargedTumblerStateInitial value),
    @required Result loading(CommercioIdRechargedTumblerStateLoading value),
    @required Result error(CommercioIdRechargedTumblerStateError value),
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
    Result $default(CommercioIdRechargedTumblerStateData value), {
    Result initial(CommercioIdRechargedTumblerStateInitial value),
    Result loading(CommercioIdRechargedTumblerStateLoading value),
    Result error(CommercioIdRechargedTumblerStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CommercioIdRechargedTumblerStateInitial
    implements CommercioIdRechargedTumblerState {
  const factory CommercioIdRechargedTumblerStateInitial() =
      _$CommercioIdRechargedTumblerStateInitial;
}

abstract class $CommercioIdRechargedTumblerStateLoadingCopyWith<$Res> {
  factory $CommercioIdRechargedTumblerStateLoadingCopyWith(
          CommercioIdRechargedTumblerStateLoading value,
          $Res Function(CommercioIdRechargedTumblerStateLoading) then) =
      _$CommercioIdRechargedTumblerStateLoadingCopyWithImpl<$Res>;
}

class _$CommercioIdRechargedTumblerStateLoadingCopyWithImpl<$Res>
    extends _$CommercioIdRechargedTumblerStateCopyWithImpl<$Res>
    implements $CommercioIdRechargedTumblerStateLoadingCopyWith<$Res> {
  _$CommercioIdRechargedTumblerStateLoadingCopyWithImpl(
      CommercioIdRechargedTumblerStateLoading _value,
      $Res Function(CommercioIdRechargedTumblerStateLoading) _then)
      : super(
            _value, (v) => _then(v as CommercioIdRechargedTumblerStateLoading));

  @override
  CommercioIdRechargedTumblerStateLoading get _value =>
      super._value as CommercioIdRechargedTumblerStateLoading;
}

class _$CommercioIdRechargedTumblerStateLoading
    implements CommercioIdRechargedTumblerStateLoading {
  const _$CommercioIdRechargedTumblerStateLoading();

  @override
  String toString() {
    return 'CommercioIdRechargedTumblerState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioIdRechargedTumblerStateLoading);
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
    Result $default(CommercioIdRechargedTumblerStateData value), {
    @required Result initial(CommercioIdRechargedTumblerStateInitial value),
    @required Result loading(CommercioIdRechargedTumblerStateLoading value),
    @required Result error(CommercioIdRechargedTumblerStateError value),
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
    Result $default(CommercioIdRechargedTumblerStateData value), {
    Result initial(CommercioIdRechargedTumblerStateInitial value),
    Result loading(CommercioIdRechargedTumblerStateLoading value),
    Result error(CommercioIdRechargedTumblerStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CommercioIdRechargedTumblerStateLoading
    implements CommercioIdRechargedTumblerState {
  const factory CommercioIdRechargedTumblerStateLoading() =
      _$CommercioIdRechargedTumblerStateLoading;
}

abstract class $CommercioIdRechargedTumblerStateErrorCopyWith<$Res> {
  factory $CommercioIdRechargedTumblerStateErrorCopyWith(
          CommercioIdRechargedTumblerStateError value,
          $Res Function(CommercioIdRechargedTumblerStateError) then) =
      _$CommercioIdRechargedTumblerStateErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

class _$CommercioIdRechargedTumblerStateErrorCopyWithImpl<$Res>
    extends _$CommercioIdRechargedTumblerStateCopyWithImpl<$Res>
    implements $CommercioIdRechargedTumblerStateErrorCopyWith<$Res> {
  _$CommercioIdRechargedTumblerStateErrorCopyWithImpl(
      CommercioIdRechargedTumblerStateError _value,
      $Res Function(CommercioIdRechargedTumblerStateError) _then)
      : super(_value, (v) => _then(v as CommercioIdRechargedTumblerStateError));

  @override
  CommercioIdRechargedTumblerStateError get _value =>
      super._value as CommercioIdRechargedTumblerStateError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(CommercioIdRechargedTumblerStateError(
      error == freezed ? _value.error : error as String,
    ));
  }
}

class _$CommercioIdRechargedTumblerStateError
    implements CommercioIdRechargedTumblerStateError {
  const _$CommercioIdRechargedTumblerStateError([this.error]);

  @override
  final String error;

  @override
  String toString() {
    return 'CommercioIdRechargedTumblerState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioIdRechargedTumblerStateError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $CommercioIdRechargedTumblerStateErrorCopyWith<
          CommercioIdRechargedTumblerStateError>
      get copyWith => _$CommercioIdRechargedTumblerStateErrorCopyWithImpl<
          CommercioIdRechargedTumblerStateError>(this, _$identity);

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
    Result $default(CommercioIdRechargedTumblerStateData value), {
    @required Result initial(CommercioIdRechargedTumblerStateInitial value),
    @required Result loading(CommercioIdRechargedTumblerStateLoading value),
    @required Result error(CommercioIdRechargedTumblerStateError value),
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
    Result $default(CommercioIdRechargedTumblerStateData value), {
    Result initial(CommercioIdRechargedTumblerStateInitial value),
    Result loading(CommercioIdRechargedTumblerStateLoading value),
    Result error(CommercioIdRechargedTumblerStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CommercioIdRechargedTumblerStateError
    implements CommercioIdRechargedTumblerState {
  const factory CommercioIdRechargedTumblerStateError([String error]) =
      _$CommercioIdRechargedTumblerStateError;

  String get error;
  $CommercioIdRechargedTumblerStateErrorCopyWith<
      CommercioIdRechargedTumblerStateError> get copyWith;
}

class _$CommercioIdRequestedDidPowerUpStateTearOff {
  const _$CommercioIdRequestedDidPowerUpStateTearOff();

  CommercioIdRequestedDidPowerUpStateData call(
      {@required TransactionResult result}) {
    return CommercioIdRequestedDidPowerUpStateData(
      result: result,
    );
  }

  CommercioIdRequestedDidPowerUpStateInitial initial() {
    return const CommercioIdRequestedDidPowerUpStateInitial();
  }

  CommercioIdRequestedDidPowerUpStateLoading loading() {
    return const CommercioIdRequestedDidPowerUpStateLoading();
  }

  CommercioIdRequestedDidPowerUpStateError error([String error]) {
    return CommercioIdRequestedDidPowerUpStateError(
      error,
    );
  }
}

// ignore: unused_element
const $CommercioIdRequestedDidPowerUpState =
    _$CommercioIdRequestedDidPowerUpStateTearOff();

mixin _$CommercioIdRequestedDidPowerUpState {
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
    Result $default(CommercioIdRequestedDidPowerUpStateData value), {
    @required Result initial(CommercioIdRequestedDidPowerUpStateInitial value),
    @required Result loading(CommercioIdRequestedDidPowerUpStateLoading value),
    @required Result error(CommercioIdRequestedDidPowerUpStateError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CommercioIdRequestedDidPowerUpStateData value), {
    Result initial(CommercioIdRequestedDidPowerUpStateInitial value),
    Result loading(CommercioIdRequestedDidPowerUpStateLoading value),
    Result error(CommercioIdRequestedDidPowerUpStateError value),
    @required Result orElse(),
  });
}

abstract class $CommercioIdRequestedDidPowerUpStateCopyWith<$Res> {
  factory $CommercioIdRequestedDidPowerUpStateCopyWith(
          CommercioIdRequestedDidPowerUpState value,
          $Res Function(CommercioIdRequestedDidPowerUpState) then) =
      _$CommercioIdRequestedDidPowerUpStateCopyWithImpl<$Res>;
}

class _$CommercioIdRequestedDidPowerUpStateCopyWithImpl<$Res>
    implements $CommercioIdRequestedDidPowerUpStateCopyWith<$Res> {
  _$CommercioIdRequestedDidPowerUpStateCopyWithImpl(this._value, this._then);

  final CommercioIdRequestedDidPowerUpState _value;
  // ignore: unused_field
  final $Res Function(CommercioIdRequestedDidPowerUpState) _then;
}

abstract class $CommercioIdRequestedDidPowerUpStateDataCopyWith<$Res> {
  factory $CommercioIdRequestedDidPowerUpStateDataCopyWith(
          CommercioIdRequestedDidPowerUpStateData value,
          $Res Function(CommercioIdRequestedDidPowerUpStateData) then) =
      _$CommercioIdRequestedDidPowerUpStateDataCopyWithImpl<$Res>;
  $Res call({TransactionResult result});
}

class _$CommercioIdRequestedDidPowerUpStateDataCopyWithImpl<$Res>
    extends _$CommercioIdRequestedDidPowerUpStateCopyWithImpl<$Res>
    implements $CommercioIdRequestedDidPowerUpStateDataCopyWith<$Res> {
  _$CommercioIdRequestedDidPowerUpStateDataCopyWithImpl(
      CommercioIdRequestedDidPowerUpStateData _value,
      $Res Function(CommercioIdRequestedDidPowerUpStateData) _then)
      : super(
            _value, (v) => _then(v as CommercioIdRequestedDidPowerUpStateData));

  @override
  CommercioIdRequestedDidPowerUpStateData get _value =>
      super._value as CommercioIdRequestedDidPowerUpStateData;

  @override
  $Res call({
    Object result = freezed,
  }) {
    return _then(CommercioIdRequestedDidPowerUpStateData(
      result: result == freezed ? _value.result : result as TransactionResult,
    ));
  }
}

class _$CommercioIdRequestedDidPowerUpStateData
    implements CommercioIdRequestedDidPowerUpStateData {
  const _$CommercioIdRequestedDidPowerUpStateData({@required this.result})
      : assert(result != null);

  @override
  final TransactionResult result;

  @override
  String toString() {
    return 'CommercioIdRequestedDidPowerUpState(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioIdRequestedDidPowerUpStateData &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(result);

  @override
  $CommercioIdRequestedDidPowerUpStateDataCopyWith<
          CommercioIdRequestedDidPowerUpStateData>
      get copyWith => _$CommercioIdRequestedDidPowerUpStateDataCopyWithImpl<
          CommercioIdRequestedDidPowerUpStateData>(this, _$identity);

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
    Result $default(CommercioIdRequestedDidPowerUpStateData value), {
    @required Result initial(CommercioIdRequestedDidPowerUpStateInitial value),
    @required Result loading(CommercioIdRequestedDidPowerUpStateLoading value),
    @required Result error(CommercioIdRequestedDidPowerUpStateError value),
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
    Result $default(CommercioIdRequestedDidPowerUpStateData value), {
    Result initial(CommercioIdRequestedDidPowerUpStateInitial value),
    Result loading(CommercioIdRequestedDidPowerUpStateLoading value),
    Result error(CommercioIdRequestedDidPowerUpStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class CommercioIdRequestedDidPowerUpStateData
    implements CommercioIdRequestedDidPowerUpState {
  const factory CommercioIdRequestedDidPowerUpStateData(
          {@required TransactionResult result}) =
      _$CommercioIdRequestedDidPowerUpStateData;

  TransactionResult get result;
  $CommercioIdRequestedDidPowerUpStateDataCopyWith<
      CommercioIdRequestedDidPowerUpStateData> get copyWith;
}

abstract class $CommercioIdRequestedDidPowerUpStateInitialCopyWith<$Res> {
  factory $CommercioIdRequestedDidPowerUpStateInitialCopyWith(
          CommercioIdRequestedDidPowerUpStateInitial value,
          $Res Function(CommercioIdRequestedDidPowerUpStateInitial) then) =
      _$CommercioIdRequestedDidPowerUpStateInitialCopyWithImpl<$Res>;
}

class _$CommercioIdRequestedDidPowerUpStateInitialCopyWithImpl<$Res>
    extends _$CommercioIdRequestedDidPowerUpStateCopyWithImpl<$Res>
    implements $CommercioIdRequestedDidPowerUpStateInitialCopyWith<$Res> {
  _$CommercioIdRequestedDidPowerUpStateInitialCopyWithImpl(
      CommercioIdRequestedDidPowerUpStateInitial _value,
      $Res Function(CommercioIdRequestedDidPowerUpStateInitial) _then)
      : super(_value,
            (v) => _then(v as CommercioIdRequestedDidPowerUpStateInitial));

  @override
  CommercioIdRequestedDidPowerUpStateInitial get _value =>
      super._value as CommercioIdRequestedDidPowerUpStateInitial;
}

class _$CommercioIdRequestedDidPowerUpStateInitial
    implements CommercioIdRequestedDidPowerUpStateInitial {
  const _$CommercioIdRequestedDidPowerUpStateInitial();

  @override
  String toString() {
    return 'CommercioIdRequestedDidPowerUpState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioIdRequestedDidPowerUpStateInitial);
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
    Result $default(CommercioIdRequestedDidPowerUpStateData value), {
    @required Result initial(CommercioIdRequestedDidPowerUpStateInitial value),
    @required Result loading(CommercioIdRequestedDidPowerUpStateLoading value),
    @required Result error(CommercioIdRequestedDidPowerUpStateError value),
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
    Result $default(CommercioIdRequestedDidPowerUpStateData value), {
    Result initial(CommercioIdRequestedDidPowerUpStateInitial value),
    Result loading(CommercioIdRequestedDidPowerUpStateLoading value),
    Result error(CommercioIdRequestedDidPowerUpStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CommercioIdRequestedDidPowerUpStateInitial
    implements CommercioIdRequestedDidPowerUpState {
  const factory CommercioIdRequestedDidPowerUpStateInitial() =
      _$CommercioIdRequestedDidPowerUpStateInitial;
}

abstract class $CommercioIdRequestedDidPowerUpStateLoadingCopyWith<$Res> {
  factory $CommercioIdRequestedDidPowerUpStateLoadingCopyWith(
          CommercioIdRequestedDidPowerUpStateLoading value,
          $Res Function(CommercioIdRequestedDidPowerUpStateLoading) then) =
      _$CommercioIdRequestedDidPowerUpStateLoadingCopyWithImpl<$Res>;
}

class _$CommercioIdRequestedDidPowerUpStateLoadingCopyWithImpl<$Res>
    extends _$CommercioIdRequestedDidPowerUpStateCopyWithImpl<$Res>
    implements $CommercioIdRequestedDidPowerUpStateLoadingCopyWith<$Res> {
  _$CommercioIdRequestedDidPowerUpStateLoadingCopyWithImpl(
      CommercioIdRequestedDidPowerUpStateLoading _value,
      $Res Function(CommercioIdRequestedDidPowerUpStateLoading) _then)
      : super(_value,
            (v) => _then(v as CommercioIdRequestedDidPowerUpStateLoading));

  @override
  CommercioIdRequestedDidPowerUpStateLoading get _value =>
      super._value as CommercioIdRequestedDidPowerUpStateLoading;
}

class _$CommercioIdRequestedDidPowerUpStateLoading
    implements CommercioIdRequestedDidPowerUpStateLoading {
  const _$CommercioIdRequestedDidPowerUpStateLoading();

  @override
  String toString() {
    return 'CommercioIdRequestedDidPowerUpState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioIdRequestedDidPowerUpStateLoading);
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
    Result $default(CommercioIdRequestedDidPowerUpStateData value), {
    @required Result initial(CommercioIdRequestedDidPowerUpStateInitial value),
    @required Result loading(CommercioIdRequestedDidPowerUpStateLoading value),
    @required Result error(CommercioIdRequestedDidPowerUpStateError value),
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
    Result $default(CommercioIdRequestedDidPowerUpStateData value), {
    Result initial(CommercioIdRequestedDidPowerUpStateInitial value),
    Result loading(CommercioIdRequestedDidPowerUpStateLoading value),
    Result error(CommercioIdRequestedDidPowerUpStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CommercioIdRequestedDidPowerUpStateLoading
    implements CommercioIdRequestedDidPowerUpState {
  const factory CommercioIdRequestedDidPowerUpStateLoading() =
      _$CommercioIdRequestedDidPowerUpStateLoading;
}

abstract class $CommercioIdRequestedDidPowerUpStateErrorCopyWith<$Res> {
  factory $CommercioIdRequestedDidPowerUpStateErrorCopyWith(
          CommercioIdRequestedDidPowerUpStateError value,
          $Res Function(CommercioIdRequestedDidPowerUpStateError) then) =
      _$CommercioIdRequestedDidPowerUpStateErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

class _$CommercioIdRequestedDidPowerUpStateErrorCopyWithImpl<$Res>
    extends _$CommercioIdRequestedDidPowerUpStateCopyWithImpl<$Res>
    implements $CommercioIdRequestedDidPowerUpStateErrorCopyWith<$Res> {
  _$CommercioIdRequestedDidPowerUpStateErrorCopyWithImpl(
      CommercioIdRequestedDidPowerUpStateError _value,
      $Res Function(CommercioIdRequestedDidPowerUpStateError) _then)
      : super(_value,
            (v) => _then(v as CommercioIdRequestedDidPowerUpStateError));

  @override
  CommercioIdRequestedDidPowerUpStateError get _value =>
      super._value as CommercioIdRequestedDidPowerUpStateError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(CommercioIdRequestedDidPowerUpStateError(
      error == freezed ? _value.error : error as String,
    ));
  }
}

class _$CommercioIdRequestedDidPowerUpStateError
    implements CommercioIdRequestedDidPowerUpStateError {
  const _$CommercioIdRequestedDidPowerUpStateError([this.error]);

  @override
  final String error;

  @override
  String toString() {
    return 'CommercioIdRequestedDidPowerUpState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioIdRequestedDidPowerUpStateError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $CommercioIdRequestedDidPowerUpStateErrorCopyWith<
          CommercioIdRequestedDidPowerUpStateError>
      get copyWith => _$CommercioIdRequestedDidPowerUpStateErrorCopyWithImpl<
          CommercioIdRequestedDidPowerUpStateError>(this, _$identity);

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
    Result $default(CommercioIdRequestedDidPowerUpStateData value), {
    @required Result initial(CommercioIdRequestedDidPowerUpStateInitial value),
    @required Result loading(CommercioIdRequestedDidPowerUpStateLoading value),
    @required Result error(CommercioIdRequestedDidPowerUpStateError value),
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
    Result $default(CommercioIdRequestedDidPowerUpStateData value), {
    Result initial(CommercioIdRequestedDidPowerUpStateInitial value),
    Result loading(CommercioIdRequestedDidPowerUpStateLoading value),
    Result error(CommercioIdRequestedDidPowerUpStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CommercioIdRequestedDidPowerUpStateError
    implements CommercioIdRequestedDidPowerUpState {
  const factory CommercioIdRequestedDidPowerUpStateError([String error]) =
      _$CommercioIdRequestedDidPowerUpStateError;

  String get error;
  $CommercioIdRequestedDidPowerUpStateErrorCopyWith<
      CommercioIdRequestedDidPowerUpStateError> get copyWith;
}
