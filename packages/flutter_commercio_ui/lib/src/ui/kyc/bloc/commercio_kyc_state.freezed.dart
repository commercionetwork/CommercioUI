// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'commercio_kyc_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CommercioKycRequestedFaucetInviteStateTearOff {
  const _$CommercioKycRequestedFaucetInviteStateTearOff();

  CommercioKycRequestedFaucetInviteStateData call(
      {required FaucetInviteResponse response}) {
    return CommercioKycRequestedFaucetInviteStateData(
      response: response,
    );
  }

  CommercioKycRequestedFaucetInviteStateInitial initial() {
    return const CommercioKycRequestedFaucetInviteStateInitial();
  }

  CommercioKycRequestedFaucetInviteStateLoading loading() {
    return const CommercioKycRequestedFaucetInviteStateLoading();
  }

  CommercioKycRequestedFaucetInviteStateError error([String? error]) {
    return CommercioKycRequestedFaucetInviteStateError(
      error,
    );
  }
}

/// @nodoc
const $CommercioKycRequestedFaucetInviteState =
    _$CommercioKycRequestedFaucetInviteStateTearOff();

/// @nodoc
mixin _$CommercioKycRequestedFaucetInviteState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(FaucetInviteResponse response) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(FaucetInviteResponse response)? $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommercioKycRequestedFaucetInviteStateData value)
        $default, {
    required TResult Function(
            CommercioKycRequestedFaucetInviteStateInitial value)
        initial,
    required TResult Function(
            CommercioKycRequestedFaucetInviteStateLoading value)
        loading,
    required TResult Function(CommercioKycRequestedFaucetInviteStateError value)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioKycRequestedFaucetInviteStateData value)?
        $default, {
    TResult Function(CommercioKycRequestedFaucetInviteStateInitial value)?
        initial,
    TResult Function(CommercioKycRequestedFaucetInviteStateLoading value)?
        loading,
    TResult Function(CommercioKycRequestedFaucetInviteStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommercioKycRequestedFaucetInviteStateCopyWith<$Res> {
  factory $CommercioKycRequestedFaucetInviteStateCopyWith(
          CommercioKycRequestedFaucetInviteState value,
          $Res Function(CommercioKycRequestedFaucetInviteState) then) =
      _$CommercioKycRequestedFaucetInviteStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommercioKycRequestedFaucetInviteStateCopyWithImpl<$Res>
    implements $CommercioKycRequestedFaucetInviteStateCopyWith<$Res> {
  _$CommercioKycRequestedFaucetInviteStateCopyWithImpl(this._value, this._then);

  final CommercioKycRequestedFaucetInviteState _value;
  // ignore: unused_field
  final $Res Function(CommercioKycRequestedFaucetInviteState) _then;
}

/// @nodoc
abstract class $CommercioKycRequestedFaucetInviteStateDataCopyWith<$Res> {
  factory $CommercioKycRequestedFaucetInviteStateDataCopyWith(
          CommercioKycRequestedFaucetInviteStateData value,
          $Res Function(CommercioKycRequestedFaucetInviteStateData) then) =
      _$CommercioKycRequestedFaucetInviteStateDataCopyWithImpl<$Res>;
  $Res call({FaucetInviteResponse response});

  $FaucetInviteResponseCopyWith<$Res> get response;
}

/// @nodoc
class _$CommercioKycRequestedFaucetInviteStateDataCopyWithImpl<$Res>
    extends _$CommercioKycRequestedFaucetInviteStateCopyWithImpl<$Res>
    implements $CommercioKycRequestedFaucetInviteStateDataCopyWith<$Res> {
  _$CommercioKycRequestedFaucetInviteStateDataCopyWithImpl(
      CommercioKycRequestedFaucetInviteStateData _value,
      $Res Function(CommercioKycRequestedFaucetInviteStateData) _then)
      : super(_value,
            (v) => _then(v as CommercioKycRequestedFaucetInviteStateData));

  @override
  CommercioKycRequestedFaucetInviteStateData get _value =>
      super._value as CommercioKycRequestedFaucetInviteStateData;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(CommercioKycRequestedFaucetInviteStateData(
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as FaucetInviteResponse,
    ));
  }

  @override
  $FaucetInviteResponseCopyWith<$Res> get response {
    return $FaucetInviteResponseCopyWith<$Res>(_value.response, (value) {
      return _then(_value.copyWith(response: value));
    });
  }
}

/// @nodoc

class _$CommercioKycRequestedFaucetInviteStateData
    implements CommercioKycRequestedFaucetInviteStateData {
  const _$CommercioKycRequestedFaucetInviteStateData({required this.response});

  @override
  final FaucetInviteResponse response;

  @override
  String toString() {
    return 'CommercioKycRequestedFaucetInviteState(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioKycRequestedFaucetInviteStateData &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(response);

  @JsonKey(ignore: true)
  @override
  $CommercioKycRequestedFaucetInviteStateDataCopyWith<
          CommercioKycRequestedFaucetInviteStateData>
      get copyWith => _$CommercioKycRequestedFaucetInviteStateDataCopyWithImpl<
          CommercioKycRequestedFaucetInviteStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(FaucetInviteResponse response) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return $default(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(FaucetInviteResponse response)? $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommercioKycRequestedFaucetInviteStateData value)
        $default, {
    required TResult Function(
            CommercioKycRequestedFaucetInviteStateInitial value)
        initial,
    required TResult Function(
            CommercioKycRequestedFaucetInviteStateLoading value)
        loading,
    required TResult Function(CommercioKycRequestedFaucetInviteStateError value)
        error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioKycRequestedFaucetInviteStateData value)?
        $default, {
    TResult Function(CommercioKycRequestedFaucetInviteStateInitial value)?
        initial,
    TResult Function(CommercioKycRequestedFaucetInviteStateLoading value)?
        loading,
    TResult Function(CommercioKycRequestedFaucetInviteStateError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class CommercioKycRequestedFaucetInviteStateData
    implements CommercioKycRequestedFaucetInviteState {
  const factory CommercioKycRequestedFaucetInviteStateData(
          {required FaucetInviteResponse response}) =
      _$CommercioKycRequestedFaucetInviteStateData;

  FaucetInviteResponse get response => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommercioKycRequestedFaucetInviteStateDataCopyWith<
          CommercioKycRequestedFaucetInviteStateData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommercioKycRequestedFaucetInviteStateInitialCopyWith<$Res> {
  factory $CommercioKycRequestedFaucetInviteStateInitialCopyWith(
          CommercioKycRequestedFaucetInviteStateInitial value,
          $Res Function(CommercioKycRequestedFaucetInviteStateInitial) then) =
      _$CommercioKycRequestedFaucetInviteStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommercioKycRequestedFaucetInviteStateInitialCopyWithImpl<$Res>
    extends _$CommercioKycRequestedFaucetInviteStateCopyWithImpl<$Res>
    implements $CommercioKycRequestedFaucetInviteStateInitialCopyWith<$Res> {
  _$CommercioKycRequestedFaucetInviteStateInitialCopyWithImpl(
      CommercioKycRequestedFaucetInviteStateInitial _value,
      $Res Function(CommercioKycRequestedFaucetInviteStateInitial) _then)
      : super(_value,
            (v) => _then(v as CommercioKycRequestedFaucetInviteStateInitial));

  @override
  CommercioKycRequestedFaucetInviteStateInitial get _value =>
      super._value as CommercioKycRequestedFaucetInviteStateInitial;
}

/// @nodoc

class _$CommercioKycRequestedFaucetInviteStateInitial
    implements CommercioKycRequestedFaucetInviteStateInitial {
  const _$CommercioKycRequestedFaucetInviteStateInitial();

  @override
  String toString() {
    return 'CommercioKycRequestedFaucetInviteState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioKycRequestedFaucetInviteStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(FaucetInviteResponse response) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(FaucetInviteResponse response)? $default, {
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
    TResult Function(CommercioKycRequestedFaucetInviteStateData value)
        $default, {
    required TResult Function(
            CommercioKycRequestedFaucetInviteStateInitial value)
        initial,
    required TResult Function(
            CommercioKycRequestedFaucetInviteStateLoading value)
        loading,
    required TResult Function(CommercioKycRequestedFaucetInviteStateError value)
        error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioKycRequestedFaucetInviteStateData value)?
        $default, {
    TResult Function(CommercioKycRequestedFaucetInviteStateInitial value)?
        initial,
    TResult Function(CommercioKycRequestedFaucetInviteStateLoading value)?
        loading,
    TResult Function(CommercioKycRequestedFaucetInviteStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CommercioKycRequestedFaucetInviteStateInitial
    implements CommercioKycRequestedFaucetInviteState {
  const factory CommercioKycRequestedFaucetInviteStateInitial() =
      _$CommercioKycRequestedFaucetInviteStateInitial;
}

/// @nodoc
abstract class $CommercioKycRequestedFaucetInviteStateLoadingCopyWith<$Res> {
  factory $CommercioKycRequestedFaucetInviteStateLoadingCopyWith(
          CommercioKycRequestedFaucetInviteStateLoading value,
          $Res Function(CommercioKycRequestedFaucetInviteStateLoading) then) =
      _$CommercioKycRequestedFaucetInviteStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommercioKycRequestedFaucetInviteStateLoadingCopyWithImpl<$Res>
    extends _$CommercioKycRequestedFaucetInviteStateCopyWithImpl<$Res>
    implements $CommercioKycRequestedFaucetInviteStateLoadingCopyWith<$Res> {
  _$CommercioKycRequestedFaucetInviteStateLoadingCopyWithImpl(
      CommercioKycRequestedFaucetInviteStateLoading _value,
      $Res Function(CommercioKycRequestedFaucetInviteStateLoading) _then)
      : super(_value,
            (v) => _then(v as CommercioKycRequestedFaucetInviteStateLoading));

  @override
  CommercioKycRequestedFaucetInviteStateLoading get _value =>
      super._value as CommercioKycRequestedFaucetInviteStateLoading;
}

/// @nodoc

class _$CommercioKycRequestedFaucetInviteStateLoading
    implements CommercioKycRequestedFaucetInviteStateLoading {
  const _$CommercioKycRequestedFaucetInviteStateLoading();

  @override
  String toString() {
    return 'CommercioKycRequestedFaucetInviteState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioKycRequestedFaucetInviteStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(FaucetInviteResponse response) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(FaucetInviteResponse response)? $default, {
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
    TResult Function(CommercioKycRequestedFaucetInviteStateData value)
        $default, {
    required TResult Function(
            CommercioKycRequestedFaucetInviteStateInitial value)
        initial,
    required TResult Function(
            CommercioKycRequestedFaucetInviteStateLoading value)
        loading,
    required TResult Function(CommercioKycRequestedFaucetInviteStateError value)
        error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioKycRequestedFaucetInviteStateData value)?
        $default, {
    TResult Function(CommercioKycRequestedFaucetInviteStateInitial value)?
        initial,
    TResult Function(CommercioKycRequestedFaucetInviteStateLoading value)?
        loading,
    TResult Function(CommercioKycRequestedFaucetInviteStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CommercioKycRequestedFaucetInviteStateLoading
    implements CommercioKycRequestedFaucetInviteState {
  const factory CommercioKycRequestedFaucetInviteStateLoading() =
      _$CommercioKycRequestedFaucetInviteStateLoading;
}

/// @nodoc
abstract class $CommercioKycRequestedFaucetInviteStateErrorCopyWith<$Res> {
  factory $CommercioKycRequestedFaucetInviteStateErrorCopyWith(
          CommercioKycRequestedFaucetInviteStateError value,
          $Res Function(CommercioKycRequestedFaucetInviteStateError) then) =
      _$CommercioKycRequestedFaucetInviteStateErrorCopyWithImpl<$Res>;
  $Res call({String? error});
}

/// @nodoc
class _$CommercioKycRequestedFaucetInviteStateErrorCopyWithImpl<$Res>
    extends _$CommercioKycRequestedFaucetInviteStateCopyWithImpl<$Res>
    implements $CommercioKycRequestedFaucetInviteStateErrorCopyWith<$Res> {
  _$CommercioKycRequestedFaucetInviteStateErrorCopyWithImpl(
      CommercioKycRequestedFaucetInviteStateError _value,
      $Res Function(CommercioKycRequestedFaucetInviteStateError) _then)
      : super(_value,
            (v) => _then(v as CommercioKycRequestedFaucetInviteStateError));

  @override
  CommercioKycRequestedFaucetInviteStateError get _value =>
      super._value as CommercioKycRequestedFaucetInviteStateError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(CommercioKycRequestedFaucetInviteStateError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CommercioKycRequestedFaucetInviteStateError
    implements CommercioKycRequestedFaucetInviteStateError {
  const _$CommercioKycRequestedFaucetInviteStateError([this.error]);

  @override
  final String? error;

  @override
  String toString() {
    return 'CommercioKycRequestedFaucetInviteState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioKycRequestedFaucetInviteStateError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $CommercioKycRequestedFaucetInviteStateErrorCopyWith<
          CommercioKycRequestedFaucetInviteStateError>
      get copyWith => _$CommercioKycRequestedFaucetInviteStateErrorCopyWithImpl<
          CommercioKycRequestedFaucetInviteStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(FaucetInviteResponse response) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(FaucetInviteResponse response)? $default, {
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
    TResult Function(CommercioKycRequestedFaucetInviteStateData value)
        $default, {
    required TResult Function(
            CommercioKycRequestedFaucetInviteStateInitial value)
        initial,
    required TResult Function(
            CommercioKycRequestedFaucetInviteStateLoading value)
        loading,
    required TResult Function(CommercioKycRequestedFaucetInviteStateError value)
        error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioKycRequestedFaucetInviteStateData value)?
        $default, {
    TResult Function(CommercioKycRequestedFaucetInviteStateInitial value)?
        initial,
    TResult Function(CommercioKycRequestedFaucetInviteStateLoading value)?
        loading,
    TResult Function(CommercioKycRequestedFaucetInviteStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CommercioKycRequestedFaucetInviteStateError
    implements CommercioKycRequestedFaucetInviteState {
  const factory CommercioKycRequestedFaucetInviteStateError([String? error]) =
      _$CommercioKycRequestedFaucetInviteStateError;

  String? get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommercioKycRequestedFaucetInviteStateErrorCopyWith<
          CommercioKycRequestedFaucetInviteStateError>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$CommercioKycDeriveBuyMembershipStateTearOff {
  const _$CommercioKycDeriveBuyMembershipStateTearOff();

  CommercioKycDeriveBuyMembershipStateData call(
      {required BuyMembership buyMembership}) {
    return CommercioKycDeriveBuyMembershipStateData(
      buyMembership: buyMembership,
    );
  }

  CommercioKycDeriveBuyMembershipStateInitial initial() {
    return const CommercioKycDeriveBuyMembershipStateInitial();
  }

  CommercioKycDeriveBuyMembershipStateLoading loading() {
    return const CommercioKycDeriveBuyMembershipStateLoading();
  }

  CommercioKycDeriveBuyMembershipStateError error([String? error]) {
    return CommercioKycDeriveBuyMembershipStateError(
      error,
    );
  }
}

/// @nodoc
const $CommercioKycDeriveBuyMembershipState =
    _$CommercioKycDeriveBuyMembershipStateTearOff();

/// @nodoc
mixin _$CommercioKycDeriveBuyMembershipState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(BuyMembership buyMembership) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(BuyMembership buyMembership)? $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommercioKycDeriveBuyMembershipStateData value) $default, {
    required TResult Function(CommercioKycDeriveBuyMembershipStateInitial value)
        initial,
    required TResult Function(CommercioKycDeriveBuyMembershipStateLoading value)
        loading,
    required TResult Function(CommercioKycDeriveBuyMembershipStateError value)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioKycDeriveBuyMembershipStateData value)?
        $default, {
    TResult Function(CommercioKycDeriveBuyMembershipStateInitial value)?
        initial,
    TResult Function(CommercioKycDeriveBuyMembershipStateLoading value)?
        loading,
    TResult Function(CommercioKycDeriveBuyMembershipStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommercioKycDeriveBuyMembershipStateCopyWith<$Res> {
  factory $CommercioKycDeriveBuyMembershipStateCopyWith(
          CommercioKycDeriveBuyMembershipState value,
          $Res Function(CommercioKycDeriveBuyMembershipState) then) =
      _$CommercioKycDeriveBuyMembershipStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommercioKycDeriveBuyMembershipStateCopyWithImpl<$Res>
    implements $CommercioKycDeriveBuyMembershipStateCopyWith<$Res> {
  _$CommercioKycDeriveBuyMembershipStateCopyWithImpl(this._value, this._then);

  final CommercioKycDeriveBuyMembershipState _value;
  // ignore: unused_field
  final $Res Function(CommercioKycDeriveBuyMembershipState) _then;
}

/// @nodoc
abstract class $CommercioKycDeriveBuyMembershipStateDataCopyWith<$Res> {
  factory $CommercioKycDeriveBuyMembershipStateDataCopyWith(
          CommercioKycDeriveBuyMembershipStateData value,
          $Res Function(CommercioKycDeriveBuyMembershipStateData) then) =
      _$CommercioKycDeriveBuyMembershipStateDataCopyWithImpl<$Res>;
  $Res call({BuyMembership buyMembership});
}

/// @nodoc
class _$CommercioKycDeriveBuyMembershipStateDataCopyWithImpl<$Res>
    extends _$CommercioKycDeriveBuyMembershipStateCopyWithImpl<$Res>
    implements $CommercioKycDeriveBuyMembershipStateDataCopyWith<$Res> {
  _$CommercioKycDeriveBuyMembershipStateDataCopyWithImpl(
      CommercioKycDeriveBuyMembershipStateData _value,
      $Res Function(CommercioKycDeriveBuyMembershipStateData) _then)
      : super(_value,
            (v) => _then(v as CommercioKycDeriveBuyMembershipStateData));

  @override
  CommercioKycDeriveBuyMembershipStateData get _value =>
      super._value as CommercioKycDeriveBuyMembershipStateData;

  @override
  $Res call({
    Object? buyMembership = freezed,
  }) {
    return _then(CommercioKycDeriveBuyMembershipStateData(
      buyMembership: buyMembership == freezed
          ? _value.buyMembership
          : buyMembership // ignore: cast_nullable_to_non_nullable
              as BuyMembership,
    ));
  }
}

/// @nodoc

class _$CommercioKycDeriveBuyMembershipStateData
    implements CommercioKycDeriveBuyMembershipStateData {
  const _$CommercioKycDeriveBuyMembershipStateData(
      {required this.buyMembership});

  @override
  final BuyMembership buyMembership;

  @override
  String toString() {
    return 'CommercioKycDeriveBuyMembershipState(buyMembership: $buyMembership)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioKycDeriveBuyMembershipStateData &&
            (identical(other.buyMembership, buyMembership) ||
                const DeepCollectionEquality()
                    .equals(other.buyMembership, buyMembership)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(buyMembership);

  @JsonKey(ignore: true)
  @override
  $CommercioKycDeriveBuyMembershipStateDataCopyWith<
          CommercioKycDeriveBuyMembershipStateData>
      get copyWith => _$CommercioKycDeriveBuyMembershipStateDataCopyWithImpl<
          CommercioKycDeriveBuyMembershipStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(BuyMembership buyMembership) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return $default(buyMembership);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(BuyMembership buyMembership)? $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(buyMembership);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommercioKycDeriveBuyMembershipStateData value) $default, {
    required TResult Function(CommercioKycDeriveBuyMembershipStateInitial value)
        initial,
    required TResult Function(CommercioKycDeriveBuyMembershipStateLoading value)
        loading,
    required TResult Function(CommercioKycDeriveBuyMembershipStateError value)
        error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioKycDeriveBuyMembershipStateData value)?
        $default, {
    TResult Function(CommercioKycDeriveBuyMembershipStateInitial value)?
        initial,
    TResult Function(CommercioKycDeriveBuyMembershipStateLoading value)?
        loading,
    TResult Function(CommercioKycDeriveBuyMembershipStateError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class CommercioKycDeriveBuyMembershipStateData
    implements CommercioKycDeriveBuyMembershipState {
  const factory CommercioKycDeriveBuyMembershipStateData(
          {required BuyMembership buyMembership}) =
      _$CommercioKycDeriveBuyMembershipStateData;

  BuyMembership get buyMembership => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommercioKycDeriveBuyMembershipStateDataCopyWith<
          CommercioKycDeriveBuyMembershipStateData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommercioKycDeriveBuyMembershipStateInitialCopyWith<$Res> {
  factory $CommercioKycDeriveBuyMembershipStateInitialCopyWith(
          CommercioKycDeriveBuyMembershipStateInitial value,
          $Res Function(CommercioKycDeriveBuyMembershipStateInitial) then) =
      _$CommercioKycDeriveBuyMembershipStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommercioKycDeriveBuyMembershipStateInitialCopyWithImpl<$Res>
    extends _$CommercioKycDeriveBuyMembershipStateCopyWithImpl<$Res>
    implements $CommercioKycDeriveBuyMembershipStateInitialCopyWith<$Res> {
  _$CommercioKycDeriveBuyMembershipStateInitialCopyWithImpl(
      CommercioKycDeriveBuyMembershipStateInitial _value,
      $Res Function(CommercioKycDeriveBuyMembershipStateInitial) _then)
      : super(_value,
            (v) => _then(v as CommercioKycDeriveBuyMembershipStateInitial));

  @override
  CommercioKycDeriveBuyMembershipStateInitial get _value =>
      super._value as CommercioKycDeriveBuyMembershipStateInitial;
}

/// @nodoc

class _$CommercioKycDeriveBuyMembershipStateInitial
    implements CommercioKycDeriveBuyMembershipStateInitial {
  const _$CommercioKycDeriveBuyMembershipStateInitial();

  @override
  String toString() {
    return 'CommercioKycDeriveBuyMembershipState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioKycDeriveBuyMembershipStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(BuyMembership buyMembership) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(BuyMembership buyMembership)? $default, {
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
    TResult Function(CommercioKycDeriveBuyMembershipStateData value) $default, {
    required TResult Function(CommercioKycDeriveBuyMembershipStateInitial value)
        initial,
    required TResult Function(CommercioKycDeriveBuyMembershipStateLoading value)
        loading,
    required TResult Function(CommercioKycDeriveBuyMembershipStateError value)
        error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioKycDeriveBuyMembershipStateData value)?
        $default, {
    TResult Function(CommercioKycDeriveBuyMembershipStateInitial value)?
        initial,
    TResult Function(CommercioKycDeriveBuyMembershipStateLoading value)?
        loading,
    TResult Function(CommercioKycDeriveBuyMembershipStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CommercioKycDeriveBuyMembershipStateInitial
    implements CommercioKycDeriveBuyMembershipState {
  const factory CommercioKycDeriveBuyMembershipStateInitial() =
      _$CommercioKycDeriveBuyMembershipStateInitial;
}

/// @nodoc
abstract class $CommercioKycDeriveBuyMembershipStateLoadingCopyWith<$Res> {
  factory $CommercioKycDeriveBuyMembershipStateLoadingCopyWith(
          CommercioKycDeriveBuyMembershipStateLoading value,
          $Res Function(CommercioKycDeriveBuyMembershipStateLoading) then) =
      _$CommercioKycDeriveBuyMembershipStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommercioKycDeriveBuyMembershipStateLoadingCopyWithImpl<$Res>
    extends _$CommercioKycDeriveBuyMembershipStateCopyWithImpl<$Res>
    implements $CommercioKycDeriveBuyMembershipStateLoadingCopyWith<$Res> {
  _$CommercioKycDeriveBuyMembershipStateLoadingCopyWithImpl(
      CommercioKycDeriveBuyMembershipStateLoading _value,
      $Res Function(CommercioKycDeriveBuyMembershipStateLoading) _then)
      : super(_value,
            (v) => _then(v as CommercioKycDeriveBuyMembershipStateLoading));

  @override
  CommercioKycDeriveBuyMembershipStateLoading get _value =>
      super._value as CommercioKycDeriveBuyMembershipStateLoading;
}

/// @nodoc

class _$CommercioKycDeriveBuyMembershipStateLoading
    implements CommercioKycDeriveBuyMembershipStateLoading {
  const _$CommercioKycDeriveBuyMembershipStateLoading();

  @override
  String toString() {
    return 'CommercioKycDeriveBuyMembershipState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioKycDeriveBuyMembershipStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(BuyMembership buyMembership) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(BuyMembership buyMembership)? $default, {
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
    TResult Function(CommercioKycDeriveBuyMembershipStateData value) $default, {
    required TResult Function(CommercioKycDeriveBuyMembershipStateInitial value)
        initial,
    required TResult Function(CommercioKycDeriveBuyMembershipStateLoading value)
        loading,
    required TResult Function(CommercioKycDeriveBuyMembershipStateError value)
        error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioKycDeriveBuyMembershipStateData value)?
        $default, {
    TResult Function(CommercioKycDeriveBuyMembershipStateInitial value)?
        initial,
    TResult Function(CommercioKycDeriveBuyMembershipStateLoading value)?
        loading,
    TResult Function(CommercioKycDeriveBuyMembershipStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CommercioKycDeriveBuyMembershipStateLoading
    implements CommercioKycDeriveBuyMembershipState {
  const factory CommercioKycDeriveBuyMembershipStateLoading() =
      _$CommercioKycDeriveBuyMembershipStateLoading;
}

/// @nodoc
abstract class $CommercioKycDeriveBuyMembershipStateErrorCopyWith<$Res> {
  factory $CommercioKycDeriveBuyMembershipStateErrorCopyWith(
          CommercioKycDeriveBuyMembershipStateError value,
          $Res Function(CommercioKycDeriveBuyMembershipStateError) then) =
      _$CommercioKycDeriveBuyMembershipStateErrorCopyWithImpl<$Res>;
  $Res call({String? error});
}

/// @nodoc
class _$CommercioKycDeriveBuyMembershipStateErrorCopyWithImpl<$Res>
    extends _$CommercioKycDeriveBuyMembershipStateCopyWithImpl<$Res>
    implements $CommercioKycDeriveBuyMembershipStateErrorCopyWith<$Res> {
  _$CommercioKycDeriveBuyMembershipStateErrorCopyWithImpl(
      CommercioKycDeriveBuyMembershipStateError _value,
      $Res Function(CommercioKycDeriveBuyMembershipStateError) _then)
      : super(_value,
            (v) => _then(v as CommercioKycDeriveBuyMembershipStateError));

  @override
  CommercioKycDeriveBuyMembershipStateError get _value =>
      super._value as CommercioKycDeriveBuyMembershipStateError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(CommercioKycDeriveBuyMembershipStateError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CommercioKycDeriveBuyMembershipStateError
    implements CommercioKycDeriveBuyMembershipStateError {
  const _$CommercioKycDeriveBuyMembershipStateError([this.error]);

  @override
  final String? error;

  @override
  String toString() {
    return 'CommercioKycDeriveBuyMembershipState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioKycDeriveBuyMembershipStateError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $CommercioKycDeriveBuyMembershipStateErrorCopyWith<
          CommercioKycDeriveBuyMembershipStateError>
      get copyWith => _$CommercioKycDeriveBuyMembershipStateErrorCopyWithImpl<
          CommercioKycDeriveBuyMembershipStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(BuyMembership buyMembership) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(BuyMembership buyMembership)? $default, {
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
    TResult Function(CommercioKycDeriveBuyMembershipStateData value) $default, {
    required TResult Function(CommercioKycDeriveBuyMembershipStateInitial value)
        initial,
    required TResult Function(CommercioKycDeriveBuyMembershipStateLoading value)
        loading,
    required TResult Function(CommercioKycDeriveBuyMembershipStateError value)
        error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioKycDeriveBuyMembershipStateData value)?
        $default, {
    TResult Function(CommercioKycDeriveBuyMembershipStateInitial value)?
        initial,
    TResult Function(CommercioKycDeriveBuyMembershipStateLoading value)?
        loading,
    TResult Function(CommercioKycDeriveBuyMembershipStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CommercioKycDeriveBuyMembershipStateError
    implements CommercioKycDeriveBuyMembershipState {
  const factory CommercioKycDeriveBuyMembershipStateError([String? error]) =
      _$CommercioKycDeriveBuyMembershipStateError;

  String? get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommercioKycDeriveBuyMembershipStateErrorCopyWith<
          CommercioKycDeriveBuyMembershipStateError>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$CommercioKycBuyMembershipsStateTearOff {
  const _$CommercioKycBuyMembershipsStateTearOff();

  CommercioKycBuyMembershipsStateData call(
      {required TransactionResult result}) {
    return CommercioKycBuyMembershipsStateData(
      result: result,
    );
  }

  CommercioKycBuyMembershipsStateInitial initial() {
    return const CommercioKycBuyMembershipsStateInitial();
  }

  CommercioKycBuyMembershipsStateLoading loading() {
    return const CommercioKycBuyMembershipsStateLoading();
  }

  CommercioKycBuyMembershipsStateError error([String? error]) {
    return CommercioKycBuyMembershipsStateError(
      error,
    );
  }
}

/// @nodoc
const $CommercioKycBuyMembershipsState =
    _$CommercioKycBuyMembershipsStateTearOff();

/// @nodoc
mixin _$CommercioKycBuyMembershipsState {
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
    TResult Function(CommercioKycBuyMembershipsStateData value) $default, {
    required TResult Function(CommercioKycBuyMembershipsStateInitial value)
        initial,
    required TResult Function(CommercioKycBuyMembershipsStateLoading value)
        loading,
    required TResult Function(CommercioKycBuyMembershipsStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioKycBuyMembershipsStateData value)? $default, {
    TResult Function(CommercioKycBuyMembershipsStateInitial value)? initial,
    TResult Function(CommercioKycBuyMembershipsStateLoading value)? loading,
    TResult Function(CommercioKycBuyMembershipsStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommercioKycBuyMembershipsStateCopyWith<$Res> {
  factory $CommercioKycBuyMembershipsStateCopyWith(
          CommercioKycBuyMembershipsState value,
          $Res Function(CommercioKycBuyMembershipsState) then) =
      _$CommercioKycBuyMembershipsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommercioKycBuyMembershipsStateCopyWithImpl<$Res>
    implements $CommercioKycBuyMembershipsStateCopyWith<$Res> {
  _$CommercioKycBuyMembershipsStateCopyWithImpl(this._value, this._then);

  final CommercioKycBuyMembershipsState _value;
  // ignore: unused_field
  final $Res Function(CommercioKycBuyMembershipsState) _then;
}

/// @nodoc
abstract class $CommercioKycBuyMembershipsStateDataCopyWith<$Res> {
  factory $CommercioKycBuyMembershipsStateDataCopyWith(
          CommercioKycBuyMembershipsStateData value,
          $Res Function(CommercioKycBuyMembershipsStateData) then) =
      _$CommercioKycBuyMembershipsStateDataCopyWithImpl<$Res>;
  $Res call({TransactionResult result});
}

/// @nodoc
class _$CommercioKycBuyMembershipsStateDataCopyWithImpl<$Res>
    extends _$CommercioKycBuyMembershipsStateCopyWithImpl<$Res>
    implements $CommercioKycBuyMembershipsStateDataCopyWith<$Res> {
  _$CommercioKycBuyMembershipsStateDataCopyWithImpl(
      CommercioKycBuyMembershipsStateData _value,
      $Res Function(CommercioKycBuyMembershipsStateData) _then)
      : super(_value, (v) => _then(v as CommercioKycBuyMembershipsStateData));

  @override
  CommercioKycBuyMembershipsStateData get _value =>
      super._value as CommercioKycBuyMembershipsStateData;

  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(CommercioKycBuyMembershipsStateData(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as TransactionResult,
    ));
  }
}

/// @nodoc

class _$CommercioKycBuyMembershipsStateData
    implements CommercioKycBuyMembershipsStateData {
  const _$CommercioKycBuyMembershipsStateData({required this.result});

  @override
  final TransactionResult result;

  @override
  String toString() {
    return 'CommercioKycBuyMembershipsState(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioKycBuyMembershipsStateData &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(result);

  @JsonKey(ignore: true)
  @override
  $CommercioKycBuyMembershipsStateDataCopyWith<
          CommercioKycBuyMembershipsStateData>
      get copyWith => _$CommercioKycBuyMembershipsStateDataCopyWithImpl<
          CommercioKycBuyMembershipsStateData>(this, _$identity);

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
    TResult Function(CommercioKycBuyMembershipsStateData value) $default, {
    required TResult Function(CommercioKycBuyMembershipsStateInitial value)
        initial,
    required TResult Function(CommercioKycBuyMembershipsStateLoading value)
        loading,
    required TResult Function(CommercioKycBuyMembershipsStateError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioKycBuyMembershipsStateData value)? $default, {
    TResult Function(CommercioKycBuyMembershipsStateInitial value)? initial,
    TResult Function(CommercioKycBuyMembershipsStateLoading value)? loading,
    TResult Function(CommercioKycBuyMembershipsStateError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class CommercioKycBuyMembershipsStateData
    implements CommercioKycBuyMembershipsState {
  const factory CommercioKycBuyMembershipsStateData(
          {required TransactionResult result}) =
      _$CommercioKycBuyMembershipsStateData;

  TransactionResult get result => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommercioKycBuyMembershipsStateDataCopyWith<
          CommercioKycBuyMembershipsStateData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommercioKycBuyMembershipsStateInitialCopyWith<$Res> {
  factory $CommercioKycBuyMembershipsStateInitialCopyWith(
          CommercioKycBuyMembershipsStateInitial value,
          $Res Function(CommercioKycBuyMembershipsStateInitial) then) =
      _$CommercioKycBuyMembershipsStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommercioKycBuyMembershipsStateInitialCopyWithImpl<$Res>
    extends _$CommercioKycBuyMembershipsStateCopyWithImpl<$Res>
    implements $CommercioKycBuyMembershipsStateInitialCopyWith<$Res> {
  _$CommercioKycBuyMembershipsStateInitialCopyWithImpl(
      CommercioKycBuyMembershipsStateInitial _value,
      $Res Function(CommercioKycBuyMembershipsStateInitial) _then)
      : super(
            _value, (v) => _then(v as CommercioKycBuyMembershipsStateInitial));

  @override
  CommercioKycBuyMembershipsStateInitial get _value =>
      super._value as CommercioKycBuyMembershipsStateInitial;
}

/// @nodoc

class _$CommercioKycBuyMembershipsStateInitial
    implements CommercioKycBuyMembershipsStateInitial {
  const _$CommercioKycBuyMembershipsStateInitial();

  @override
  String toString() {
    return 'CommercioKycBuyMembershipsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioKycBuyMembershipsStateInitial);
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
    TResult Function(CommercioKycBuyMembershipsStateData value) $default, {
    required TResult Function(CommercioKycBuyMembershipsStateInitial value)
        initial,
    required TResult Function(CommercioKycBuyMembershipsStateLoading value)
        loading,
    required TResult Function(CommercioKycBuyMembershipsStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioKycBuyMembershipsStateData value)? $default, {
    TResult Function(CommercioKycBuyMembershipsStateInitial value)? initial,
    TResult Function(CommercioKycBuyMembershipsStateLoading value)? loading,
    TResult Function(CommercioKycBuyMembershipsStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CommercioKycBuyMembershipsStateInitial
    implements CommercioKycBuyMembershipsState {
  const factory CommercioKycBuyMembershipsStateInitial() =
      _$CommercioKycBuyMembershipsStateInitial;
}

/// @nodoc
abstract class $CommercioKycBuyMembershipsStateLoadingCopyWith<$Res> {
  factory $CommercioKycBuyMembershipsStateLoadingCopyWith(
          CommercioKycBuyMembershipsStateLoading value,
          $Res Function(CommercioKycBuyMembershipsStateLoading) then) =
      _$CommercioKycBuyMembershipsStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommercioKycBuyMembershipsStateLoadingCopyWithImpl<$Res>
    extends _$CommercioKycBuyMembershipsStateCopyWithImpl<$Res>
    implements $CommercioKycBuyMembershipsStateLoadingCopyWith<$Res> {
  _$CommercioKycBuyMembershipsStateLoadingCopyWithImpl(
      CommercioKycBuyMembershipsStateLoading _value,
      $Res Function(CommercioKycBuyMembershipsStateLoading) _then)
      : super(
            _value, (v) => _then(v as CommercioKycBuyMembershipsStateLoading));

  @override
  CommercioKycBuyMembershipsStateLoading get _value =>
      super._value as CommercioKycBuyMembershipsStateLoading;
}

/// @nodoc

class _$CommercioKycBuyMembershipsStateLoading
    implements CommercioKycBuyMembershipsStateLoading {
  const _$CommercioKycBuyMembershipsStateLoading();

  @override
  String toString() {
    return 'CommercioKycBuyMembershipsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioKycBuyMembershipsStateLoading);
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
    TResult Function(CommercioKycBuyMembershipsStateData value) $default, {
    required TResult Function(CommercioKycBuyMembershipsStateInitial value)
        initial,
    required TResult Function(CommercioKycBuyMembershipsStateLoading value)
        loading,
    required TResult Function(CommercioKycBuyMembershipsStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioKycBuyMembershipsStateData value)? $default, {
    TResult Function(CommercioKycBuyMembershipsStateInitial value)? initial,
    TResult Function(CommercioKycBuyMembershipsStateLoading value)? loading,
    TResult Function(CommercioKycBuyMembershipsStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CommercioKycBuyMembershipsStateLoading
    implements CommercioKycBuyMembershipsState {
  const factory CommercioKycBuyMembershipsStateLoading() =
      _$CommercioKycBuyMembershipsStateLoading;
}

/// @nodoc
abstract class $CommercioKycBuyMembershipsStateErrorCopyWith<$Res> {
  factory $CommercioKycBuyMembershipsStateErrorCopyWith(
          CommercioKycBuyMembershipsStateError value,
          $Res Function(CommercioKycBuyMembershipsStateError) then) =
      _$CommercioKycBuyMembershipsStateErrorCopyWithImpl<$Res>;
  $Res call({String? error});
}

/// @nodoc
class _$CommercioKycBuyMembershipsStateErrorCopyWithImpl<$Res>
    extends _$CommercioKycBuyMembershipsStateCopyWithImpl<$Res>
    implements $CommercioKycBuyMembershipsStateErrorCopyWith<$Res> {
  _$CommercioKycBuyMembershipsStateErrorCopyWithImpl(
      CommercioKycBuyMembershipsStateError _value,
      $Res Function(CommercioKycBuyMembershipsStateError) _then)
      : super(_value, (v) => _then(v as CommercioKycBuyMembershipsStateError));

  @override
  CommercioKycBuyMembershipsStateError get _value =>
      super._value as CommercioKycBuyMembershipsStateError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(CommercioKycBuyMembershipsStateError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CommercioKycBuyMembershipsStateError
    implements CommercioKycBuyMembershipsStateError {
  const _$CommercioKycBuyMembershipsStateError([this.error]);

  @override
  final String? error;

  @override
  String toString() {
    return 'CommercioKycBuyMembershipsState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioKycBuyMembershipsStateError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $CommercioKycBuyMembershipsStateErrorCopyWith<
          CommercioKycBuyMembershipsStateError>
      get copyWith => _$CommercioKycBuyMembershipsStateErrorCopyWithImpl<
          CommercioKycBuyMembershipsStateError>(this, _$identity);

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
    TResult Function(CommercioKycBuyMembershipsStateData value) $default, {
    required TResult Function(CommercioKycBuyMembershipsStateInitial value)
        initial,
    required TResult Function(CommercioKycBuyMembershipsStateLoading value)
        loading,
    required TResult Function(CommercioKycBuyMembershipsStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioKycBuyMembershipsStateData value)? $default, {
    TResult Function(CommercioKycBuyMembershipsStateInitial value)? initial,
    TResult Function(CommercioKycBuyMembershipsStateLoading value)? loading,
    TResult Function(CommercioKycBuyMembershipsStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CommercioKycBuyMembershipsStateError
    implements CommercioKycBuyMembershipsState {
  const factory CommercioKycBuyMembershipsStateError([String? error]) =
      _$CommercioKycBuyMembershipsStateError;

  String? get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommercioKycBuyMembershipsStateErrorCopyWith<
          CommercioKycBuyMembershipsStateError>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$CommercioKycDeriveInviteMemberStateTearOff {
  const _$CommercioKycDeriveInviteMemberStateTearOff();

  CommercioKycDeriveInviteMemberStateData call(
      {required InviteUser inviteUser}) {
    return CommercioKycDeriveInviteMemberStateData(
      inviteUser: inviteUser,
    );
  }

  CommercioKycDeriveInviteMemberStateInitial initial() {
    return const CommercioKycDeriveInviteMemberStateInitial();
  }

  CommercioKycDeriveInviteMemberStateLoading loading() {
    return const CommercioKycDeriveInviteMemberStateLoading();
  }

  CommercioKycDeriveInviteMemberStateError error([String? error]) {
    return CommercioKycDeriveInviteMemberStateError(
      error,
    );
  }
}

/// @nodoc
const $CommercioKycDeriveInviteMemberState =
    _$CommercioKycDeriveInviteMemberStateTearOff();

/// @nodoc
mixin _$CommercioKycDeriveInviteMemberState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(InviteUser inviteUser) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(InviteUser inviteUser)? $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommercioKycDeriveInviteMemberStateData value) $default, {
    required TResult Function(CommercioKycDeriveInviteMemberStateInitial value)
        initial,
    required TResult Function(CommercioKycDeriveInviteMemberStateLoading value)
        loading,
    required TResult Function(CommercioKycDeriveInviteMemberStateError value)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioKycDeriveInviteMemberStateData value)? $default, {
    TResult Function(CommercioKycDeriveInviteMemberStateInitial value)? initial,
    TResult Function(CommercioKycDeriveInviteMemberStateLoading value)? loading,
    TResult Function(CommercioKycDeriveInviteMemberStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommercioKycDeriveInviteMemberStateCopyWith<$Res> {
  factory $CommercioKycDeriveInviteMemberStateCopyWith(
          CommercioKycDeriveInviteMemberState value,
          $Res Function(CommercioKycDeriveInviteMemberState) then) =
      _$CommercioKycDeriveInviteMemberStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommercioKycDeriveInviteMemberStateCopyWithImpl<$Res>
    implements $CommercioKycDeriveInviteMemberStateCopyWith<$Res> {
  _$CommercioKycDeriveInviteMemberStateCopyWithImpl(this._value, this._then);

  final CommercioKycDeriveInviteMemberState _value;
  // ignore: unused_field
  final $Res Function(CommercioKycDeriveInviteMemberState) _then;
}

/// @nodoc
abstract class $CommercioKycDeriveInviteMemberStateDataCopyWith<$Res> {
  factory $CommercioKycDeriveInviteMemberStateDataCopyWith(
          CommercioKycDeriveInviteMemberStateData value,
          $Res Function(CommercioKycDeriveInviteMemberStateData) then) =
      _$CommercioKycDeriveInviteMemberStateDataCopyWithImpl<$Res>;
  $Res call({InviteUser inviteUser});
}

/// @nodoc
class _$CommercioKycDeriveInviteMemberStateDataCopyWithImpl<$Res>
    extends _$CommercioKycDeriveInviteMemberStateCopyWithImpl<$Res>
    implements $CommercioKycDeriveInviteMemberStateDataCopyWith<$Res> {
  _$CommercioKycDeriveInviteMemberStateDataCopyWithImpl(
      CommercioKycDeriveInviteMemberStateData _value,
      $Res Function(CommercioKycDeriveInviteMemberStateData) _then)
      : super(
            _value, (v) => _then(v as CommercioKycDeriveInviteMemberStateData));

  @override
  CommercioKycDeriveInviteMemberStateData get _value =>
      super._value as CommercioKycDeriveInviteMemberStateData;

  @override
  $Res call({
    Object? inviteUser = freezed,
  }) {
    return _then(CommercioKycDeriveInviteMemberStateData(
      inviteUser: inviteUser == freezed
          ? _value.inviteUser
          : inviteUser // ignore: cast_nullable_to_non_nullable
              as InviteUser,
    ));
  }
}

/// @nodoc

class _$CommercioKycDeriveInviteMemberStateData
    implements CommercioKycDeriveInviteMemberStateData {
  const _$CommercioKycDeriveInviteMemberStateData({required this.inviteUser});

  @override
  final InviteUser inviteUser;

  @override
  String toString() {
    return 'CommercioKycDeriveInviteMemberState(inviteUser: $inviteUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioKycDeriveInviteMemberStateData &&
            (identical(other.inviteUser, inviteUser) ||
                const DeepCollectionEquality()
                    .equals(other.inviteUser, inviteUser)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(inviteUser);

  @JsonKey(ignore: true)
  @override
  $CommercioKycDeriveInviteMemberStateDataCopyWith<
          CommercioKycDeriveInviteMemberStateData>
      get copyWith => _$CommercioKycDeriveInviteMemberStateDataCopyWithImpl<
          CommercioKycDeriveInviteMemberStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(InviteUser inviteUser) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return $default(inviteUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(InviteUser inviteUser)? $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(inviteUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommercioKycDeriveInviteMemberStateData value) $default, {
    required TResult Function(CommercioKycDeriveInviteMemberStateInitial value)
        initial,
    required TResult Function(CommercioKycDeriveInviteMemberStateLoading value)
        loading,
    required TResult Function(CommercioKycDeriveInviteMemberStateError value)
        error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioKycDeriveInviteMemberStateData value)? $default, {
    TResult Function(CommercioKycDeriveInviteMemberStateInitial value)? initial,
    TResult Function(CommercioKycDeriveInviteMemberStateLoading value)? loading,
    TResult Function(CommercioKycDeriveInviteMemberStateError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class CommercioKycDeriveInviteMemberStateData
    implements CommercioKycDeriveInviteMemberState {
  const factory CommercioKycDeriveInviteMemberStateData(
          {required InviteUser inviteUser}) =
      _$CommercioKycDeriveInviteMemberStateData;

  InviteUser get inviteUser => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommercioKycDeriveInviteMemberStateDataCopyWith<
          CommercioKycDeriveInviteMemberStateData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommercioKycDeriveInviteMemberStateInitialCopyWith<$Res> {
  factory $CommercioKycDeriveInviteMemberStateInitialCopyWith(
          CommercioKycDeriveInviteMemberStateInitial value,
          $Res Function(CommercioKycDeriveInviteMemberStateInitial) then) =
      _$CommercioKycDeriveInviteMemberStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommercioKycDeriveInviteMemberStateInitialCopyWithImpl<$Res>
    extends _$CommercioKycDeriveInviteMemberStateCopyWithImpl<$Res>
    implements $CommercioKycDeriveInviteMemberStateInitialCopyWith<$Res> {
  _$CommercioKycDeriveInviteMemberStateInitialCopyWithImpl(
      CommercioKycDeriveInviteMemberStateInitial _value,
      $Res Function(CommercioKycDeriveInviteMemberStateInitial) _then)
      : super(_value,
            (v) => _then(v as CommercioKycDeriveInviteMemberStateInitial));

  @override
  CommercioKycDeriveInviteMemberStateInitial get _value =>
      super._value as CommercioKycDeriveInviteMemberStateInitial;
}

/// @nodoc

class _$CommercioKycDeriveInviteMemberStateInitial
    implements CommercioKycDeriveInviteMemberStateInitial {
  const _$CommercioKycDeriveInviteMemberStateInitial();

  @override
  String toString() {
    return 'CommercioKycDeriveInviteMemberState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioKycDeriveInviteMemberStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(InviteUser inviteUser) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(InviteUser inviteUser)? $default, {
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
    TResult Function(CommercioKycDeriveInviteMemberStateData value) $default, {
    required TResult Function(CommercioKycDeriveInviteMemberStateInitial value)
        initial,
    required TResult Function(CommercioKycDeriveInviteMemberStateLoading value)
        loading,
    required TResult Function(CommercioKycDeriveInviteMemberStateError value)
        error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioKycDeriveInviteMemberStateData value)? $default, {
    TResult Function(CommercioKycDeriveInviteMemberStateInitial value)? initial,
    TResult Function(CommercioKycDeriveInviteMemberStateLoading value)? loading,
    TResult Function(CommercioKycDeriveInviteMemberStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CommercioKycDeriveInviteMemberStateInitial
    implements CommercioKycDeriveInviteMemberState {
  const factory CommercioKycDeriveInviteMemberStateInitial() =
      _$CommercioKycDeriveInviteMemberStateInitial;
}

/// @nodoc
abstract class $CommercioKycDeriveInviteMemberStateLoadingCopyWith<$Res> {
  factory $CommercioKycDeriveInviteMemberStateLoadingCopyWith(
          CommercioKycDeriveInviteMemberStateLoading value,
          $Res Function(CommercioKycDeriveInviteMemberStateLoading) then) =
      _$CommercioKycDeriveInviteMemberStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommercioKycDeriveInviteMemberStateLoadingCopyWithImpl<$Res>
    extends _$CommercioKycDeriveInviteMemberStateCopyWithImpl<$Res>
    implements $CommercioKycDeriveInviteMemberStateLoadingCopyWith<$Res> {
  _$CommercioKycDeriveInviteMemberStateLoadingCopyWithImpl(
      CommercioKycDeriveInviteMemberStateLoading _value,
      $Res Function(CommercioKycDeriveInviteMemberStateLoading) _then)
      : super(_value,
            (v) => _then(v as CommercioKycDeriveInviteMemberStateLoading));

  @override
  CommercioKycDeriveInviteMemberStateLoading get _value =>
      super._value as CommercioKycDeriveInviteMemberStateLoading;
}

/// @nodoc

class _$CommercioKycDeriveInviteMemberStateLoading
    implements CommercioKycDeriveInviteMemberStateLoading {
  const _$CommercioKycDeriveInviteMemberStateLoading();

  @override
  String toString() {
    return 'CommercioKycDeriveInviteMemberState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioKycDeriveInviteMemberStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(InviteUser inviteUser) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(InviteUser inviteUser)? $default, {
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
    TResult Function(CommercioKycDeriveInviteMemberStateData value) $default, {
    required TResult Function(CommercioKycDeriveInviteMemberStateInitial value)
        initial,
    required TResult Function(CommercioKycDeriveInviteMemberStateLoading value)
        loading,
    required TResult Function(CommercioKycDeriveInviteMemberStateError value)
        error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioKycDeriveInviteMemberStateData value)? $default, {
    TResult Function(CommercioKycDeriveInviteMemberStateInitial value)? initial,
    TResult Function(CommercioKycDeriveInviteMemberStateLoading value)? loading,
    TResult Function(CommercioKycDeriveInviteMemberStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CommercioKycDeriveInviteMemberStateLoading
    implements CommercioKycDeriveInviteMemberState {
  const factory CommercioKycDeriveInviteMemberStateLoading() =
      _$CommercioKycDeriveInviteMemberStateLoading;
}

/// @nodoc
abstract class $CommercioKycDeriveInviteMemberStateErrorCopyWith<$Res> {
  factory $CommercioKycDeriveInviteMemberStateErrorCopyWith(
          CommercioKycDeriveInviteMemberStateError value,
          $Res Function(CommercioKycDeriveInviteMemberStateError) then) =
      _$CommercioKycDeriveInviteMemberStateErrorCopyWithImpl<$Res>;
  $Res call({String? error});
}

/// @nodoc
class _$CommercioKycDeriveInviteMemberStateErrorCopyWithImpl<$Res>
    extends _$CommercioKycDeriveInviteMemberStateCopyWithImpl<$Res>
    implements $CommercioKycDeriveInviteMemberStateErrorCopyWith<$Res> {
  _$CommercioKycDeriveInviteMemberStateErrorCopyWithImpl(
      CommercioKycDeriveInviteMemberStateError _value,
      $Res Function(CommercioKycDeriveInviteMemberStateError) _then)
      : super(_value,
            (v) => _then(v as CommercioKycDeriveInviteMemberStateError));

  @override
  CommercioKycDeriveInviteMemberStateError get _value =>
      super._value as CommercioKycDeriveInviteMemberStateError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(CommercioKycDeriveInviteMemberStateError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CommercioKycDeriveInviteMemberStateError
    implements CommercioKycDeriveInviteMemberStateError {
  const _$CommercioKycDeriveInviteMemberStateError([this.error]);

  @override
  final String? error;

  @override
  String toString() {
    return 'CommercioKycDeriveInviteMemberState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioKycDeriveInviteMemberStateError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $CommercioKycDeriveInviteMemberStateErrorCopyWith<
          CommercioKycDeriveInviteMemberStateError>
      get copyWith => _$CommercioKycDeriveInviteMemberStateErrorCopyWithImpl<
          CommercioKycDeriveInviteMemberStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(InviteUser inviteUser) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(InviteUser inviteUser)? $default, {
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
    TResult Function(CommercioKycDeriveInviteMemberStateData value) $default, {
    required TResult Function(CommercioKycDeriveInviteMemberStateInitial value)
        initial,
    required TResult Function(CommercioKycDeriveInviteMemberStateLoading value)
        loading,
    required TResult Function(CommercioKycDeriveInviteMemberStateError value)
        error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioKycDeriveInviteMemberStateData value)? $default, {
    TResult Function(CommercioKycDeriveInviteMemberStateInitial value)? initial,
    TResult Function(CommercioKycDeriveInviteMemberStateLoading value)? loading,
    TResult Function(CommercioKycDeriveInviteMemberStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CommercioKycDeriveInviteMemberStateError
    implements CommercioKycDeriveInviteMemberState {
  const factory CommercioKycDeriveInviteMemberStateError([String? error]) =
      _$CommercioKycDeriveInviteMemberStateError;

  String? get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommercioKycDeriveInviteMemberStateErrorCopyWith<
          CommercioKycDeriveInviteMemberStateError>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$CommercioKycInviteMembersStateTearOff {
  const _$CommercioKycInviteMembersStateTearOff();

  CommercioKycInviteMembersStateData call({required TransactionResult result}) {
    return CommercioKycInviteMembersStateData(
      result: result,
    );
  }

  CommercioKycInviteMembersStateInitial initial() {
    return const CommercioKycInviteMembersStateInitial();
  }

  CommercioKycInviteMembersStateLoading loading() {
    return const CommercioKycInviteMembersStateLoading();
  }

  CommercioKycInviteMembersStateError error([String? error]) {
    return CommercioKycInviteMembersStateError(
      error,
    );
  }
}

/// @nodoc
const $CommercioKycInviteMembersState =
    _$CommercioKycInviteMembersStateTearOff();

/// @nodoc
mixin _$CommercioKycInviteMembersState {
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
    TResult Function(CommercioKycInviteMembersStateData value) $default, {
    required TResult Function(CommercioKycInviteMembersStateInitial value)
        initial,
    required TResult Function(CommercioKycInviteMembersStateLoading value)
        loading,
    required TResult Function(CommercioKycInviteMembersStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioKycInviteMembersStateData value)? $default, {
    TResult Function(CommercioKycInviteMembersStateInitial value)? initial,
    TResult Function(CommercioKycInviteMembersStateLoading value)? loading,
    TResult Function(CommercioKycInviteMembersStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommercioKycInviteMembersStateCopyWith<$Res> {
  factory $CommercioKycInviteMembersStateCopyWith(
          CommercioKycInviteMembersState value,
          $Res Function(CommercioKycInviteMembersState) then) =
      _$CommercioKycInviteMembersStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommercioKycInviteMembersStateCopyWithImpl<$Res>
    implements $CommercioKycInviteMembersStateCopyWith<$Res> {
  _$CommercioKycInviteMembersStateCopyWithImpl(this._value, this._then);

  final CommercioKycInviteMembersState _value;
  // ignore: unused_field
  final $Res Function(CommercioKycInviteMembersState) _then;
}

/// @nodoc
abstract class $CommercioKycInviteMembersStateDataCopyWith<$Res> {
  factory $CommercioKycInviteMembersStateDataCopyWith(
          CommercioKycInviteMembersStateData value,
          $Res Function(CommercioKycInviteMembersStateData) then) =
      _$CommercioKycInviteMembersStateDataCopyWithImpl<$Res>;
  $Res call({TransactionResult result});
}

/// @nodoc
class _$CommercioKycInviteMembersStateDataCopyWithImpl<$Res>
    extends _$CommercioKycInviteMembersStateCopyWithImpl<$Res>
    implements $CommercioKycInviteMembersStateDataCopyWith<$Res> {
  _$CommercioKycInviteMembersStateDataCopyWithImpl(
      CommercioKycInviteMembersStateData _value,
      $Res Function(CommercioKycInviteMembersStateData) _then)
      : super(_value, (v) => _then(v as CommercioKycInviteMembersStateData));

  @override
  CommercioKycInviteMembersStateData get _value =>
      super._value as CommercioKycInviteMembersStateData;

  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(CommercioKycInviteMembersStateData(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as TransactionResult,
    ));
  }
}

/// @nodoc

class _$CommercioKycInviteMembersStateData
    implements CommercioKycInviteMembersStateData {
  const _$CommercioKycInviteMembersStateData({required this.result});

  @override
  final TransactionResult result;

  @override
  String toString() {
    return 'CommercioKycInviteMembersState(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioKycInviteMembersStateData &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(result);

  @JsonKey(ignore: true)
  @override
  $CommercioKycInviteMembersStateDataCopyWith<
          CommercioKycInviteMembersStateData>
      get copyWith => _$CommercioKycInviteMembersStateDataCopyWithImpl<
          CommercioKycInviteMembersStateData>(this, _$identity);

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
    TResult Function(CommercioKycInviteMembersStateData value) $default, {
    required TResult Function(CommercioKycInviteMembersStateInitial value)
        initial,
    required TResult Function(CommercioKycInviteMembersStateLoading value)
        loading,
    required TResult Function(CommercioKycInviteMembersStateError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioKycInviteMembersStateData value)? $default, {
    TResult Function(CommercioKycInviteMembersStateInitial value)? initial,
    TResult Function(CommercioKycInviteMembersStateLoading value)? loading,
    TResult Function(CommercioKycInviteMembersStateError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class CommercioKycInviteMembersStateData
    implements CommercioKycInviteMembersState {
  const factory CommercioKycInviteMembersStateData(
          {required TransactionResult result}) =
      _$CommercioKycInviteMembersStateData;

  TransactionResult get result => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommercioKycInviteMembersStateDataCopyWith<
          CommercioKycInviteMembersStateData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommercioKycInviteMembersStateInitialCopyWith<$Res> {
  factory $CommercioKycInviteMembersStateInitialCopyWith(
          CommercioKycInviteMembersStateInitial value,
          $Res Function(CommercioKycInviteMembersStateInitial) then) =
      _$CommercioKycInviteMembersStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommercioKycInviteMembersStateInitialCopyWithImpl<$Res>
    extends _$CommercioKycInviteMembersStateCopyWithImpl<$Res>
    implements $CommercioKycInviteMembersStateInitialCopyWith<$Res> {
  _$CommercioKycInviteMembersStateInitialCopyWithImpl(
      CommercioKycInviteMembersStateInitial _value,
      $Res Function(CommercioKycInviteMembersStateInitial) _then)
      : super(_value, (v) => _then(v as CommercioKycInviteMembersStateInitial));

  @override
  CommercioKycInviteMembersStateInitial get _value =>
      super._value as CommercioKycInviteMembersStateInitial;
}

/// @nodoc

class _$CommercioKycInviteMembersStateInitial
    implements CommercioKycInviteMembersStateInitial {
  const _$CommercioKycInviteMembersStateInitial();

  @override
  String toString() {
    return 'CommercioKycInviteMembersState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioKycInviteMembersStateInitial);
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
    TResult Function(CommercioKycInviteMembersStateData value) $default, {
    required TResult Function(CommercioKycInviteMembersStateInitial value)
        initial,
    required TResult Function(CommercioKycInviteMembersStateLoading value)
        loading,
    required TResult Function(CommercioKycInviteMembersStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioKycInviteMembersStateData value)? $default, {
    TResult Function(CommercioKycInviteMembersStateInitial value)? initial,
    TResult Function(CommercioKycInviteMembersStateLoading value)? loading,
    TResult Function(CommercioKycInviteMembersStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CommercioKycInviteMembersStateInitial
    implements CommercioKycInviteMembersState {
  const factory CommercioKycInviteMembersStateInitial() =
      _$CommercioKycInviteMembersStateInitial;
}

/// @nodoc
abstract class $CommercioKycInviteMembersStateLoadingCopyWith<$Res> {
  factory $CommercioKycInviteMembersStateLoadingCopyWith(
          CommercioKycInviteMembersStateLoading value,
          $Res Function(CommercioKycInviteMembersStateLoading) then) =
      _$CommercioKycInviteMembersStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommercioKycInviteMembersStateLoadingCopyWithImpl<$Res>
    extends _$CommercioKycInviteMembersStateCopyWithImpl<$Res>
    implements $CommercioKycInviteMembersStateLoadingCopyWith<$Res> {
  _$CommercioKycInviteMembersStateLoadingCopyWithImpl(
      CommercioKycInviteMembersStateLoading _value,
      $Res Function(CommercioKycInviteMembersStateLoading) _then)
      : super(_value, (v) => _then(v as CommercioKycInviteMembersStateLoading));

  @override
  CommercioKycInviteMembersStateLoading get _value =>
      super._value as CommercioKycInviteMembersStateLoading;
}

/// @nodoc

class _$CommercioKycInviteMembersStateLoading
    implements CommercioKycInviteMembersStateLoading {
  const _$CommercioKycInviteMembersStateLoading();

  @override
  String toString() {
    return 'CommercioKycInviteMembersState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioKycInviteMembersStateLoading);
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
    TResult Function(CommercioKycInviteMembersStateData value) $default, {
    required TResult Function(CommercioKycInviteMembersStateInitial value)
        initial,
    required TResult Function(CommercioKycInviteMembersStateLoading value)
        loading,
    required TResult Function(CommercioKycInviteMembersStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioKycInviteMembersStateData value)? $default, {
    TResult Function(CommercioKycInviteMembersStateInitial value)? initial,
    TResult Function(CommercioKycInviteMembersStateLoading value)? loading,
    TResult Function(CommercioKycInviteMembersStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CommercioKycInviteMembersStateLoading
    implements CommercioKycInviteMembersState {
  const factory CommercioKycInviteMembersStateLoading() =
      _$CommercioKycInviteMembersStateLoading;
}

/// @nodoc
abstract class $CommercioKycInviteMembersStateErrorCopyWith<$Res> {
  factory $CommercioKycInviteMembersStateErrorCopyWith(
          CommercioKycInviteMembersStateError value,
          $Res Function(CommercioKycInviteMembersStateError) then) =
      _$CommercioKycInviteMembersStateErrorCopyWithImpl<$Res>;
  $Res call({String? error});
}

/// @nodoc
class _$CommercioKycInviteMembersStateErrorCopyWithImpl<$Res>
    extends _$CommercioKycInviteMembersStateCopyWithImpl<$Res>
    implements $CommercioKycInviteMembersStateErrorCopyWith<$Res> {
  _$CommercioKycInviteMembersStateErrorCopyWithImpl(
      CommercioKycInviteMembersStateError _value,
      $Res Function(CommercioKycInviteMembersStateError) _then)
      : super(_value, (v) => _then(v as CommercioKycInviteMembersStateError));

  @override
  CommercioKycInviteMembersStateError get _value =>
      super._value as CommercioKycInviteMembersStateError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(CommercioKycInviteMembersStateError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CommercioKycInviteMembersStateError
    implements CommercioKycInviteMembersStateError {
  const _$CommercioKycInviteMembersStateError([this.error]);

  @override
  final String? error;

  @override
  String toString() {
    return 'CommercioKycInviteMembersState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioKycInviteMembersStateError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $CommercioKycInviteMembersStateErrorCopyWith<
          CommercioKycInviteMembersStateError>
      get copyWith => _$CommercioKycInviteMembersStateErrorCopyWithImpl<
          CommercioKycInviteMembersStateError>(this, _$identity);

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
    TResult Function(CommercioKycInviteMembersStateData value) $default, {
    required TResult Function(CommercioKycInviteMembersStateInitial value)
        initial,
    required TResult Function(CommercioKycInviteMembersStateLoading value)
        loading,
    required TResult Function(CommercioKycInviteMembersStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioKycInviteMembersStateData value)? $default, {
    TResult Function(CommercioKycInviteMembersStateInitial value)? initial,
    TResult Function(CommercioKycInviteMembersStateLoading value)? loading,
    TResult Function(CommercioKycInviteMembersStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CommercioKycInviteMembersStateError
    implements CommercioKycInviteMembersState {
  const factory CommercioKycInviteMembersStateError([String? error]) =
      _$CommercioKycInviteMembersStateError;

  String? get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommercioKycInviteMembersStateErrorCopyWith<
          CommercioKycInviteMembersStateError>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$CommercioKycChangeMembershipStateTearOff {
  const _$CommercioKycChangeMembershipStateTearOff();

  CommercioKycChangedMembershipState call(
      {required MembershipType membershipType}) {
    return CommercioKycChangedMembershipState(
      membershipType: membershipType,
    );
  }

  CommercioKycChangeMembershipStateInitial initial(
      {required MembershipType membershipType}) {
    return CommercioKycChangeMembershipStateInitial(
      membershipType: membershipType,
    );
  }
}

/// @nodoc
const $CommercioKycChangeMembershipState =
    _$CommercioKycChangeMembershipStateTearOff();

/// @nodoc
mixin _$CommercioKycChangeMembershipState {
  MembershipType get membershipType => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(MembershipType membershipType) $default, {
    required TResult Function(MembershipType membershipType) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(MembershipType membershipType)? $default, {
    TResult Function(MembershipType membershipType)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommercioKycChangedMembershipState value) $default, {
    required TResult Function(CommercioKycChangeMembershipStateInitial value)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioKycChangedMembershipState value)? $default, {
    TResult Function(CommercioKycChangeMembershipStateInitial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommercioKycChangeMembershipStateCopyWith<CommercioKycChangeMembershipState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommercioKycChangeMembershipStateCopyWith<$Res> {
  factory $CommercioKycChangeMembershipStateCopyWith(
          CommercioKycChangeMembershipState value,
          $Res Function(CommercioKycChangeMembershipState) then) =
      _$CommercioKycChangeMembershipStateCopyWithImpl<$Res>;
  $Res call({MembershipType membershipType});
}

/// @nodoc
class _$CommercioKycChangeMembershipStateCopyWithImpl<$Res>
    implements $CommercioKycChangeMembershipStateCopyWith<$Res> {
  _$CommercioKycChangeMembershipStateCopyWithImpl(this._value, this._then);

  final CommercioKycChangeMembershipState _value;
  // ignore: unused_field
  final $Res Function(CommercioKycChangeMembershipState) _then;

  @override
  $Res call({
    Object? membershipType = freezed,
  }) {
    return _then(_value.copyWith(
      membershipType: membershipType == freezed
          ? _value.membershipType
          : membershipType // ignore: cast_nullable_to_non_nullable
              as MembershipType,
    ));
  }
}

/// @nodoc
abstract class $CommercioKycChangedMembershipStateCopyWith<$Res>
    implements $CommercioKycChangeMembershipStateCopyWith<$Res> {
  factory $CommercioKycChangedMembershipStateCopyWith(
          CommercioKycChangedMembershipState value,
          $Res Function(CommercioKycChangedMembershipState) then) =
      _$CommercioKycChangedMembershipStateCopyWithImpl<$Res>;
  @override
  $Res call({MembershipType membershipType});
}

/// @nodoc
class _$CommercioKycChangedMembershipStateCopyWithImpl<$Res>
    extends _$CommercioKycChangeMembershipStateCopyWithImpl<$Res>
    implements $CommercioKycChangedMembershipStateCopyWith<$Res> {
  _$CommercioKycChangedMembershipStateCopyWithImpl(
      CommercioKycChangedMembershipState _value,
      $Res Function(CommercioKycChangedMembershipState) _then)
      : super(_value, (v) => _then(v as CommercioKycChangedMembershipState));

  @override
  CommercioKycChangedMembershipState get _value =>
      super._value as CommercioKycChangedMembershipState;

  @override
  $Res call({
    Object? membershipType = freezed,
  }) {
    return _then(CommercioKycChangedMembershipState(
      membershipType: membershipType == freezed
          ? _value.membershipType
          : membershipType // ignore: cast_nullable_to_non_nullable
              as MembershipType,
    ));
  }
}

/// @nodoc

class _$CommercioKycChangedMembershipState
    implements CommercioKycChangedMembershipState {
  const _$CommercioKycChangedMembershipState({required this.membershipType});

  @override
  final MembershipType membershipType;

  @override
  String toString() {
    return 'CommercioKycChangeMembershipState(membershipType: $membershipType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioKycChangedMembershipState &&
            (identical(other.membershipType, membershipType) ||
                const DeepCollectionEquality()
                    .equals(other.membershipType, membershipType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(membershipType);

  @JsonKey(ignore: true)
  @override
  $CommercioKycChangedMembershipStateCopyWith<
          CommercioKycChangedMembershipState>
      get copyWith => _$CommercioKycChangedMembershipStateCopyWithImpl<
          CommercioKycChangedMembershipState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(MembershipType membershipType) $default, {
    required TResult Function(MembershipType membershipType) initial,
  }) {
    return $default(membershipType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(MembershipType membershipType)? $default, {
    TResult Function(MembershipType membershipType)? initial,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(membershipType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommercioKycChangedMembershipState value) $default, {
    required TResult Function(CommercioKycChangeMembershipStateInitial value)
        initial,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioKycChangedMembershipState value)? $default, {
    TResult Function(CommercioKycChangeMembershipStateInitial value)? initial,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class CommercioKycChangedMembershipState
    implements CommercioKycChangeMembershipState {
  const factory CommercioKycChangedMembershipState(
          {required MembershipType membershipType}) =
      _$CommercioKycChangedMembershipState;

  @override
  MembershipType get membershipType => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $CommercioKycChangedMembershipStateCopyWith<
          CommercioKycChangedMembershipState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommercioKycChangeMembershipStateInitialCopyWith<$Res>
    implements $CommercioKycChangeMembershipStateCopyWith<$Res> {
  factory $CommercioKycChangeMembershipStateInitialCopyWith(
          CommercioKycChangeMembershipStateInitial value,
          $Res Function(CommercioKycChangeMembershipStateInitial) then) =
      _$CommercioKycChangeMembershipStateInitialCopyWithImpl<$Res>;
  @override
  $Res call({MembershipType membershipType});
}

/// @nodoc
class _$CommercioKycChangeMembershipStateInitialCopyWithImpl<$Res>
    extends _$CommercioKycChangeMembershipStateCopyWithImpl<$Res>
    implements $CommercioKycChangeMembershipStateInitialCopyWith<$Res> {
  _$CommercioKycChangeMembershipStateInitialCopyWithImpl(
      CommercioKycChangeMembershipStateInitial _value,
      $Res Function(CommercioKycChangeMembershipStateInitial) _then)
      : super(_value,
            (v) => _then(v as CommercioKycChangeMembershipStateInitial));

  @override
  CommercioKycChangeMembershipStateInitial get _value =>
      super._value as CommercioKycChangeMembershipStateInitial;

  @override
  $Res call({
    Object? membershipType = freezed,
  }) {
    return _then(CommercioKycChangeMembershipStateInitial(
      membershipType: membershipType == freezed
          ? _value.membershipType
          : membershipType // ignore: cast_nullable_to_non_nullable
              as MembershipType,
    ));
  }
}

/// @nodoc

class _$CommercioKycChangeMembershipStateInitial
    implements CommercioKycChangeMembershipStateInitial {
  const _$CommercioKycChangeMembershipStateInitial(
      {required this.membershipType});

  @override
  final MembershipType membershipType;

  @override
  String toString() {
    return 'CommercioKycChangeMembershipState.initial(membershipType: $membershipType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioKycChangeMembershipStateInitial &&
            (identical(other.membershipType, membershipType) ||
                const DeepCollectionEquality()
                    .equals(other.membershipType, membershipType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(membershipType);

  @JsonKey(ignore: true)
  @override
  $CommercioKycChangeMembershipStateInitialCopyWith<
          CommercioKycChangeMembershipStateInitial>
      get copyWith => _$CommercioKycChangeMembershipStateInitialCopyWithImpl<
          CommercioKycChangeMembershipStateInitial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(MembershipType membershipType) $default, {
    required TResult Function(MembershipType membershipType) initial,
  }) {
    return initial(membershipType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(MembershipType membershipType)? $default, {
    TResult Function(MembershipType membershipType)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(membershipType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommercioKycChangedMembershipState value) $default, {
    required TResult Function(CommercioKycChangeMembershipStateInitial value)
        initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioKycChangedMembershipState value)? $default, {
    TResult Function(CommercioKycChangeMembershipStateInitial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CommercioKycChangeMembershipStateInitial
    implements CommercioKycChangeMembershipState {
  const factory CommercioKycChangeMembershipStateInitial(
          {required MembershipType membershipType}) =
      _$CommercioKycChangeMembershipStateInitial;

  @override
  MembershipType get membershipType => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $CommercioKycChangeMembershipStateInitialCopyWith<
          CommercioKycChangeMembershipStateInitial>
      get copyWith => throw _privateConstructorUsedError;
}
