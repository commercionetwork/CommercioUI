// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'commercio_account_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CommercioAccountGenerateWalletStateTearOff {
  const _$CommercioAccountGenerateWalletStateTearOff();

  CommercioAccountGenerateWalletData call(
      {required String mnemonic,
      required Wallet wallet,
      required String walletAddress}) {
    return CommercioAccountGenerateWalletData(
      mnemonic: mnemonic,
      wallet: wallet,
      walletAddress: walletAddress,
    );
  }

  CommercioAccountGenerateWalletInitial initial() {
    return const CommercioAccountGenerateWalletInitial();
  }

  CommercioAccountGenerateWalletLoading loading() {
    return const CommercioAccountGenerateWalletLoading();
  }

  CommercioAccountGenerateWalletError error([String? error]) {
    return CommercioAccountGenerateWalletError(
      error,
    );
  }
}

/// @nodoc
const $CommercioAccountGenerateWalletState =
    _$CommercioAccountGenerateWalletStateTearOff();

/// @nodoc
mixin _$CommercioAccountGenerateWalletState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String mnemonic, Wallet wallet, String walletAddress)
        $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String mnemonic, Wallet wallet, String walletAddress)?
        $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommercioAccountGenerateWalletData value) $default, {
    required TResult Function(CommercioAccountGenerateWalletInitial value)
        initial,
    required TResult Function(CommercioAccountGenerateWalletLoading value)
        loading,
    required TResult Function(CommercioAccountGenerateWalletError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioAccountGenerateWalletData value)? $default, {
    TResult Function(CommercioAccountGenerateWalletInitial value)? initial,
    TResult Function(CommercioAccountGenerateWalletLoading value)? loading,
    TResult Function(CommercioAccountGenerateWalletError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommercioAccountGenerateWalletStateCopyWith<$Res> {
  factory $CommercioAccountGenerateWalletStateCopyWith(
          CommercioAccountGenerateWalletState value,
          $Res Function(CommercioAccountGenerateWalletState) then) =
      _$CommercioAccountGenerateWalletStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommercioAccountGenerateWalletStateCopyWithImpl<$Res>
    implements $CommercioAccountGenerateWalletStateCopyWith<$Res> {
  _$CommercioAccountGenerateWalletStateCopyWithImpl(this._value, this._then);

  final CommercioAccountGenerateWalletState _value;
  // ignore: unused_field
  final $Res Function(CommercioAccountGenerateWalletState) _then;
}

/// @nodoc
abstract class $CommercioAccountGenerateWalletDataCopyWith<$Res> {
  factory $CommercioAccountGenerateWalletDataCopyWith(
          CommercioAccountGenerateWalletData value,
          $Res Function(CommercioAccountGenerateWalletData) then) =
      _$CommercioAccountGenerateWalletDataCopyWithImpl<$Res>;
  $Res call({String mnemonic, Wallet wallet, String walletAddress});
}

/// @nodoc
class _$CommercioAccountGenerateWalletDataCopyWithImpl<$Res>
    extends _$CommercioAccountGenerateWalletStateCopyWithImpl<$Res>
    implements $CommercioAccountGenerateWalletDataCopyWith<$Res> {
  _$CommercioAccountGenerateWalletDataCopyWithImpl(
      CommercioAccountGenerateWalletData _value,
      $Res Function(CommercioAccountGenerateWalletData) _then)
      : super(_value, (v) => _then(v as CommercioAccountGenerateWalletData));

  @override
  CommercioAccountGenerateWalletData get _value =>
      super._value as CommercioAccountGenerateWalletData;

  @override
  $Res call({
    Object? mnemonic = freezed,
    Object? wallet = freezed,
    Object? walletAddress = freezed,
  }) {
    return _then(CommercioAccountGenerateWalletData(
      mnemonic: mnemonic == freezed
          ? _value.mnemonic
          : mnemonic // ignore: cast_nullable_to_non_nullable
              as String,
      wallet: wallet == freezed
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as Wallet,
      walletAddress: walletAddress == freezed
          ? _value.walletAddress
          : walletAddress // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CommercioAccountGenerateWalletData
    with DiagnosticableTreeMixin
    implements CommercioAccountGenerateWalletData {
  const _$CommercioAccountGenerateWalletData(
      {required this.mnemonic,
      required this.wallet,
      required this.walletAddress});

  @override
  final String mnemonic;
  @override
  final Wallet wallet;
  @override
  final String walletAddress;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CommercioAccountGenerateWalletState(mnemonic: $mnemonic, wallet: $wallet, walletAddress: $walletAddress)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CommercioAccountGenerateWalletState'))
      ..add(DiagnosticsProperty('mnemonic', mnemonic))
      ..add(DiagnosticsProperty('wallet', wallet))
      ..add(DiagnosticsProperty('walletAddress', walletAddress));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioAccountGenerateWalletData &&
            (identical(other.mnemonic, mnemonic) ||
                const DeepCollectionEquality()
                    .equals(other.mnemonic, mnemonic)) &&
            (identical(other.wallet, wallet) ||
                const DeepCollectionEquality().equals(other.wallet, wallet)) &&
            (identical(other.walletAddress, walletAddress) ||
                const DeepCollectionEquality()
                    .equals(other.walletAddress, walletAddress)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(mnemonic) ^
      const DeepCollectionEquality().hash(wallet) ^
      const DeepCollectionEquality().hash(walletAddress);

  @JsonKey(ignore: true)
  @override
  $CommercioAccountGenerateWalletDataCopyWith<
          CommercioAccountGenerateWalletData>
      get copyWith => _$CommercioAccountGenerateWalletDataCopyWithImpl<
          CommercioAccountGenerateWalletData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String mnemonic, Wallet wallet, String walletAddress)
        $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return $default(mnemonic, wallet, walletAddress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String mnemonic, Wallet wallet, String walletAddress)?
        $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(mnemonic, wallet, walletAddress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommercioAccountGenerateWalletData value) $default, {
    required TResult Function(CommercioAccountGenerateWalletInitial value)
        initial,
    required TResult Function(CommercioAccountGenerateWalletLoading value)
        loading,
    required TResult Function(CommercioAccountGenerateWalletError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioAccountGenerateWalletData value)? $default, {
    TResult Function(CommercioAccountGenerateWalletInitial value)? initial,
    TResult Function(CommercioAccountGenerateWalletLoading value)? loading,
    TResult Function(CommercioAccountGenerateWalletError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class CommercioAccountGenerateWalletData
    implements CommercioAccountGenerateWalletState {
  const factory CommercioAccountGenerateWalletData(
      {required String mnemonic,
      required Wallet wallet,
      required String walletAddress}) = _$CommercioAccountGenerateWalletData;

  String get mnemonic => throw _privateConstructorUsedError;
  Wallet get wallet => throw _privateConstructorUsedError;
  String get walletAddress => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommercioAccountGenerateWalletDataCopyWith<
          CommercioAccountGenerateWalletData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommercioAccountGenerateWalletInitialCopyWith<$Res> {
  factory $CommercioAccountGenerateWalletInitialCopyWith(
          CommercioAccountGenerateWalletInitial value,
          $Res Function(CommercioAccountGenerateWalletInitial) then) =
      _$CommercioAccountGenerateWalletInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommercioAccountGenerateWalletInitialCopyWithImpl<$Res>
    extends _$CommercioAccountGenerateWalletStateCopyWithImpl<$Res>
    implements $CommercioAccountGenerateWalletInitialCopyWith<$Res> {
  _$CommercioAccountGenerateWalletInitialCopyWithImpl(
      CommercioAccountGenerateWalletInitial _value,
      $Res Function(CommercioAccountGenerateWalletInitial) _then)
      : super(_value, (v) => _then(v as CommercioAccountGenerateWalletInitial));

  @override
  CommercioAccountGenerateWalletInitial get _value =>
      super._value as CommercioAccountGenerateWalletInitial;
}

/// @nodoc

class _$CommercioAccountGenerateWalletInitial
    with DiagnosticableTreeMixin
    implements CommercioAccountGenerateWalletInitial {
  const _$CommercioAccountGenerateWalletInitial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CommercioAccountGenerateWalletState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'CommercioAccountGenerateWalletState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioAccountGenerateWalletInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String mnemonic, Wallet wallet, String walletAddress)
        $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String mnemonic, Wallet wallet, String walletAddress)?
        $default, {
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
    TResult Function(CommercioAccountGenerateWalletData value) $default, {
    required TResult Function(CommercioAccountGenerateWalletInitial value)
        initial,
    required TResult Function(CommercioAccountGenerateWalletLoading value)
        loading,
    required TResult Function(CommercioAccountGenerateWalletError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioAccountGenerateWalletData value)? $default, {
    TResult Function(CommercioAccountGenerateWalletInitial value)? initial,
    TResult Function(CommercioAccountGenerateWalletLoading value)? loading,
    TResult Function(CommercioAccountGenerateWalletError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CommercioAccountGenerateWalletInitial
    implements CommercioAccountGenerateWalletState {
  const factory CommercioAccountGenerateWalletInitial() =
      _$CommercioAccountGenerateWalletInitial;
}

/// @nodoc
abstract class $CommercioAccountGenerateWalletLoadingCopyWith<$Res> {
  factory $CommercioAccountGenerateWalletLoadingCopyWith(
          CommercioAccountGenerateWalletLoading value,
          $Res Function(CommercioAccountGenerateWalletLoading) then) =
      _$CommercioAccountGenerateWalletLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommercioAccountGenerateWalletLoadingCopyWithImpl<$Res>
    extends _$CommercioAccountGenerateWalletStateCopyWithImpl<$Res>
    implements $CommercioAccountGenerateWalletLoadingCopyWith<$Res> {
  _$CommercioAccountGenerateWalletLoadingCopyWithImpl(
      CommercioAccountGenerateWalletLoading _value,
      $Res Function(CommercioAccountGenerateWalletLoading) _then)
      : super(_value, (v) => _then(v as CommercioAccountGenerateWalletLoading));

  @override
  CommercioAccountGenerateWalletLoading get _value =>
      super._value as CommercioAccountGenerateWalletLoading;
}

/// @nodoc

class _$CommercioAccountGenerateWalletLoading
    with DiagnosticableTreeMixin
    implements CommercioAccountGenerateWalletLoading {
  const _$CommercioAccountGenerateWalletLoading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CommercioAccountGenerateWalletState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'CommercioAccountGenerateWalletState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioAccountGenerateWalletLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String mnemonic, Wallet wallet, String walletAddress)
        $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String mnemonic, Wallet wallet, String walletAddress)?
        $default, {
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
    TResult Function(CommercioAccountGenerateWalletData value) $default, {
    required TResult Function(CommercioAccountGenerateWalletInitial value)
        initial,
    required TResult Function(CommercioAccountGenerateWalletLoading value)
        loading,
    required TResult Function(CommercioAccountGenerateWalletError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioAccountGenerateWalletData value)? $default, {
    TResult Function(CommercioAccountGenerateWalletInitial value)? initial,
    TResult Function(CommercioAccountGenerateWalletLoading value)? loading,
    TResult Function(CommercioAccountGenerateWalletError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CommercioAccountGenerateWalletLoading
    implements CommercioAccountGenerateWalletState {
  const factory CommercioAccountGenerateWalletLoading() =
      _$CommercioAccountGenerateWalletLoading;
}

/// @nodoc
abstract class $CommercioAccountGenerateWalletErrorCopyWith<$Res> {
  factory $CommercioAccountGenerateWalletErrorCopyWith(
          CommercioAccountGenerateWalletError value,
          $Res Function(CommercioAccountGenerateWalletError) then) =
      _$CommercioAccountGenerateWalletErrorCopyWithImpl<$Res>;
  $Res call({String? error});
}

/// @nodoc
class _$CommercioAccountGenerateWalletErrorCopyWithImpl<$Res>
    extends _$CommercioAccountGenerateWalletStateCopyWithImpl<$Res>
    implements $CommercioAccountGenerateWalletErrorCopyWith<$Res> {
  _$CommercioAccountGenerateWalletErrorCopyWithImpl(
      CommercioAccountGenerateWalletError _value,
      $Res Function(CommercioAccountGenerateWalletError) _then)
      : super(_value, (v) => _then(v as CommercioAccountGenerateWalletError));

  @override
  CommercioAccountGenerateWalletError get _value =>
      super._value as CommercioAccountGenerateWalletError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(CommercioAccountGenerateWalletError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CommercioAccountGenerateWalletError
    with DiagnosticableTreeMixin
    implements CommercioAccountGenerateWalletError {
  const _$CommercioAccountGenerateWalletError([this.error]);

  @override
  final String? error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CommercioAccountGenerateWalletState.error(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'CommercioAccountGenerateWalletState.error'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioAccountGenerateWalletError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $CommercioAccountGenerateWalletErrorCopyWith<
          CommercioAccountGenerateWalletError>
      get copyWith => _$CommercioAccountGenerateWalletErrorCopyWithImpl<
          CommercioAccountGenerateWalletError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String mnemonic, Wallet wallet, String walletAddress)
        $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String mnemonic, Wallet wallet, String walletAddress)?
        $default, {
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
    TResult Function(CommercioAccountGenerateWalletData value) $default, {
    required TResult Function(CommercioAccountGenerateWalletInitial value)
        initial,
    required TResult Function(CommercioAccountGenerateWalletLoading value)
        loading,
    required TResult Function(CommercioAccountGenerateWalletError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioAccountGenerateWalletData value)? $default, {
    TResult Function(CommercioAccountGenerateWalletInitial value)? initial,
    TResult Function(CommercioAccountGenerateWalletLoading value)? loading,
    TResult Function(CommercioAccountGenerateWalletError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CommercioAccountGenerateWalletError
    implements CommercioAccountGenerateWalletState {
  const factory CommercioAccountGenerateWalletError([String? error]) =
      _$CommercioAccountGenerateWalletError;

  String? get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommercioAccountGenerateWalletErrorCopyWith<
          CommercioAccountGenerateWalletError>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$CommercioAccountRestoredWalletStateTearOff {
  const _$CommercioAccountRestoredWalletStateTearOff();

  CommercioAccountRestoredWalletStateData call(
      {required String mnemonic,
      required Wallet wallet,
      required String walletAddress}) {
    return CommercioAccountRestoredWalletStateData(
      mnemonic: mnemonic,
      wallet: wallet,
      walletAddress: walletAddress,
    );
  }

  CommercioAccountRestoredWalletStateInitial initial() {
    return const CommercioAccountRestoredWalletStateInitial();
  }

  CommercioAccountRestoredWalletStateLoading loading() {
    return const CommercioAccountRestoredWalletStateLoading();
  }

  CommercioAccountRestoredWalletStateError error([String? error]) {
    return CommercioAccountRestoredWalletStateError(
      error,
    );
  }
}

/// @nodoc
const $CommercioAccountRestoredWalletState =
    _$CommercioAccountRestoredWalletStateTearOff();

/// @nodoc
mixin _$CommercioAccountRestoredWalletState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String mnemonic, Wallet wallet, String walletAddress)
        $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String mnemonic, Wallet wallet, String walletAddress)?
        $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommercioAccountRestoredWalletStateData value) $default, {
    required TResult Function(CommercioAccountRestoredWalletStateInitial value)
        initial,
    required TResult Function(CommercioAccountRestoredWalletStateLoading value)
        loading,
    required TResult Function(CommercioAccountRestoredWalletStateError value)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioAccountRestoredWalletStateData value)? $default, {
    TResult Function(CommercioAccountRestoredWalletStateInitial value)? initial,
    TResult Function(CommercioAccountRestoredWalletStateLoading value)? loading,
    TResult Function(CommercioAccountRestoredWalletStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommercioAccountRestoredWalletStateCopyWith<$Res> {
  factory $CommercioAccountRestoredWalletStateCopyWith(
          CommercioAccountRestoredWalletState value,
          $Res Function(CommercioAccountRestoredWalletState) then) =
      _$CommercioAccountRestoredWalletStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommercioAccountRestoredWalletStateCopyWithImpl<$Res>
    implements $CommercioAccountRestoredWalletStateCopyWith<$Res> {
  _$CommercioAccountRestoredWalletStateCopyWithImpl(this._value, this._then);

  final CommercioAccountRestoredWalletState _value;
  // ignore: unused_field
  final $Res Function(CommercioAccountRestoredWalletState) _then;
}

/// @nodoc
abstract class $CommercioAccountRestoredWalletStateDataCopyWith<$Res> {
  factory $CommercioAccountRestoredWalletStateDataCopyWith(
          CommercioAccountRestoredWalletStateData value,
          $Res Function(CommercioAccountRestoredWalletStateData) then) =
      _$CommercioAccountRestoredWalletStateDataCopyWithImpl<$Res>;
  $Res call({String mnemonic, Wallet wallet, String walletAddress});
}

/// @nodoc
class _$CommercioAccountRestoredWalletStateDataCopyWithImpl<$Res>
    extends _$CommercioAccountRestoredWalletStateCopyWithImpl<$Res>
    implements $CommercioAccountRestoredWalletStateDataCopyWith<$Res> {
  _$CommercioAccountRestoredWalletStateDataCopyWithImpl(
      CommercioAccountRestoredWalletStateData _value,
      $Res Function(CommercioAccountRestoredWalletStateData) _then)
      : super(
            _value, (v) => _then(v as CommercioAccountRestoredWalletStateData));

  @override
  CommercioAccountRestoredWalletStateData get _value =>
      super._value as CommercioAccountRestoredWalletStateData;

  @override
  $Res call({
    Object? mnemonic = freezed,
    Object? wallet = freezed,
    Object? walletAddress = freezed,
  }) {
    return _then(CommercioAccountRestoredWalletStateData(
      mnemonic: mnemonic == freezed
          ? _value.mnemonic
          : mnemonic // ignore: cast_nullable_to_non_nullable
              as String,
      wallet: wallet == freezed
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as Wallet,
      walletAddress: walletAddress == freezed
          ? _value.walletAddress
          : walletAddress // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CommercioAccountRestoredWalletStateData
    with DiagnosticableTreeMixin
    implements CommercioAccountRestoredWalletStateData {
  const _$CommercioAccountRestoredWalletStateData(
      {required this.mnemonic,
      required this.wallet,
      required this.walletAddress});

  @override
  final String mnemonic;
  @override
  final Wallet wallet;
  @override
  final String walletAddress;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CommercioAccountRestoredWalletState(mnemonic: $mnemonic, wallet: $wallet, walletAddress: $walletAddress)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CommercioAccountRestoredWalletState'))
      ..add(DiagnosticsProperty('mnemonic', mnemonic))
      ..add(DiagnosticsProperty('wallet', wallet))
      ..add(DiagnosticsProperty('walletAddress', walletAddress));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioAccountRestoredWalletStateData &&
            (identical(other.mnemonic, mnemonic) ||
                const DeepCollectionEquality()
                    .equals(other.mnemonic, mnemonic)) &&
            (identical(other.wallet, wallet) ||
                const DeepCollectionEquality().equals(other.wallet, wallet)) &&
            (identical(other.walletAddress, walletAddress) ||
                const DeepCollectionEquality()
                    .equals(other.walletAddress, walletAddress)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(mnemonic) ^
      const DeepCollectionEquality().hash(wallet) ^
      const DeepCollectionEquality().hash(walletAddress);

  @JsonKey(ignore: true)
  @override
  $CommercioAccountRestoredWalletStateDataCopyWith<
          CommercioAccountRestoredWalletStateData>
      get copyWith => _$CommercioAccountRestoredWalletStateDataCopyWithImpl<
          CommercioAccountRestoredWalletStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String mnemonic, Wallet wallet, String walletAddress)
        $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return $default(mnemonic, wallet, walletAddress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String mnemonic, Wallet wallet, String walletAddress)?
        $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(mnemonic, wallet, walletAddress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommercioAccountRestoredWalletStateData value) $default, {
    required TResult Function(CommercioAccountRestoredWalletStateInitial value)
        initial,
    required TResult Function(CommercioAccountRestoredWalletStateLoading value)
        loading,
    required TResult Function(CommercioAccountRestoredWalletStateError value)
        error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioAccountRestoredWalletStateData value)? $default, {
    TResult Function(CommercioAccountRestoredWalletStateInitial value)? initial,
    TResult Function(CommercioAccountRestoredWalletStateLoading value)? loading,
    TResult Function(CommercioAccountRestoredWalletStateError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class CommercioAccountRestoredWalletStateData
    implements CommercioAccountRestoredWalletState {
  const factory CommercioAccountRestoredWalletStateData(
          {required String mnemonic,
          required Wallet wallet,
          required String walletAddress}) =
      _$CommercioAccountRestoredWalletStateData;

  String get mnemonic => throw _privateConstructorUsedError;
  Wallet get wallet => throw _privateConstructorUsedError;
  String get walletAddress => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommercioAccountRestoredWalletStateDataCopyWith<
          CommercioAccountRestoredWalletStateData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommercioAccountRestoredWalletStateInitialCopyWith<$Res> {
  factory $CommercioAccountRestoredWalletStateInitialCopyWith(
          CommercioAccountRestoredWalletStateInitial value,
          $Res Function(CommercioAccountRestoredWalletStateInitial) then) =
      _$CommercioAccountRestoredWalletStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommercioAccountRestoredWalletStateInitialCopyWithImpl<$Res>
    extends _$CommercioAccountRestoredWalletStateCopyWithImpl<$Res>
    implements $CommercioAccountRestoredWalletStateInitialCopyWith<$Res> {
  _$CommercioAccountRestoredWalletStateInitialCopyWithImpl(
      CommercioAccountRestoredWalletStateInitial _value,
      $Res Function(CommercioAccountRestoredWalletStateInitial) _then)
      : super(_value,
            (v) => _then(v as CommercioAccountRestoredWalletStateInitial));

  @override
  CommercioAccountRestoredWalletStateInitial get _value =>
      super._value as CommercioAccountRestoredWalletStateInitial;
}

/// @nodoc

class _$CommercioAccountRestoredWalletStateInitial
    with DiagnosticableTreeMixin
    implements CommercioAccountRestoredWalletStateInitial {
  const _$CommercioAccountRestoredWalletStateInitial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CommercioAccountRestoredWalletState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'CommercioAccountRestoredWalletState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioAccountRestoredWalletStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String mnemonic, Wallet wallet, String walletAddress)
        $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String mnemonic, Wallet wallet, String walletAddress)?
        $default, {
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
    TResult Function(CommercioAccountRestoredWalletStateData value) $default, {
    required TResult Function(CommercioAccountRestoredWalletStateInitial value)
        initial,
    required TResult Function(CommercioAccountRestoredWalletStateLoading value)
        loading,
    required TResult Function(CommercioAccountRestoredWalletStateError value)
        error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioAccountRestoredWalletStateData value)? $default, {
    TResult Function(CommercioAccountRestoredWalletStateInitial value)? initial,
    TResult Function(CommercioAccountRestoredWalletStateLoading value)? loading,
    TResult Function(CommercioAccountRestoredWalletStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CommercioAccountRestoredWalletStateInitial
    implements CommercioAccountRestoredWalletState {
  const factory CommercioAccountRestoredWalletStateInitial() =
      _$CommercioAccountRestoredWalletStateInitial;
}

/// @nodoc
abstract class $CommercioAccountRestoredWalletStateLoadingCopyWith<$Res> {
  factory $CommercioAccountRestoredWalletStateLoadingCopyWith(
          CommercioAccountRestoredWalletStateLoading value,
          $Res Function(CommercioAccountRestoredWalletStateLoading) then) =
      _$CommercioAccountRestoredWalletStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommercioAccountRestoredWalletStateLoadingCopyWithImpl<$Res>
    extends _$CommercioAccountRestoredWalletStateCopyWithImpl<$Res>
    implements $CommercioAccountRestoredWalletStateLoadingCopyWith<$Res> {
  _$CommercioAccountRestoredWalletStateLoadingCopyWithImpl(
      CommercioAccountRestoredWalletStateLoading _value,
      $Res Function(CommercioAccountRestoredWalletStateLoading) _then)
      : super(_value,
            (v) => _then(v as CommercioAccountRestoredWalletStateLoading));

  @override
  CommercioAccountRestoredWalletStateLoading get _value =>
      super._value as CommercioAccountRestoredWalletStateLoading;
}

/// @nodoc

class _$CommercioAccountRestoredWalletStateLoading
    with DiagnosticableTreeMixin
    implements CommercioAccountRestoredWalletStateLoading {
  const _$CommercioAccountRestoredWalletStateLoading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CommercioAccountRestoredWalletState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'CommercioAccountRestoredWalletState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioAccountRestoredWalletStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String mnemonic, Wallet wallet, String walletAddress)
        $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String mnemonic, Wallet wallet, String walletAddress)?
        $default, {
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
    TResult Function(CommercioAccountRestoredWalletStateData value) $default, {
    required TResult Function(CommercioAccountRestoredWalletStateInitial value)
        initial,
    required TResult Function(CommercioAccountRestoredWalletStateLoading value)
        loading,
    required TResult Function(CommercioAccountRestoredWalletStateError value)
        error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioAccountRestoredWalletStateData value)? $default, {
    TResult Function(CommercioAccountRestoredWalletStateInitial value)? initial,
    TResult Function(CommercioAccountRestoredWalletStateLoading value)? loading,
    TResult Function(CommercioAccountRestoredWalletStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CommercioAccountRestoredWalletStateLoading
    implements CommercioAccountRestoredWalletState {
  const factory CommercioAccountRestoredWalletStateLoading() =
      _$CommercioAccountRestoredWalletStateLoading;
}

/// @nodoc
abstract class $CommercioAccountRestoredWalletStateErrorCopyWith<$Res> {
  factory $CommercioAccountRestoredWalletStateErrorCopyWith(
          CommercioAccountRestoredWalletStateError value,
          $Res Function(CommercioAccountRestoredWalletStateError) then) =
      _$CommercioAccountRestoredWalletStateErrorCopyWithImpl<$Res>;
  $Res call({String? error});
}

/// @nodoc
class _$CommercioAccountRestoredWalletStateErrorCopyWithImpl<$Res>
    extends _$CommercioAccountRestoredWalletStateCopyWithImpl<$Res>
    implements $CommercioAccountRestoredWalletStateErrorCopyWith<$Res> {
  _$CommercioAccountRestoredWalletStateErrorCopyWithImpl(
      CommercioAccountRestoredWalletStateError _value,
      $Res Function(CommercioAccountRestoredWalletStateError) _then)
      : super(_value,
            (v) => _then(v as CommercioAccountRestoredWalletStateError));

  @override
  CommercioAccountRestoredWalletStateError get _value =>
      super._value as CommercioAccountRestoredWalletStateError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(CommercioAccountRestoredWalletStateError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CommercioAccountRestoredWalletStateError
    with DiagnosticableTreeMixin
    implements CommercioAccountRestoredWalletStateError {
  const _$CommercioAccountRestoredWalletStateError([this.error]);

  @override
  final String? error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CommercioAccountRestoredWalletState.error(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'CommercioAccountRestoredWalletState.error'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioAccountRestoredWalletStateError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $CommercioAccountRestoredWalletStateErrorCopyWith<
          CommercioAccountRestoredWalletStateError>
      get copyWith => _$CommercioAccountRestoredWalletStateErrorCopyWithImpl<
          CommercioAccountRestoredWalletStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String mnemonic, Wallet wallet, String walletAddress)
        $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String mnemonic, Wallet wallet, String walletAddress)?
        $default, {
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
    TResult Function(CommercioAccountRestoredWalletStateData value) $default, {
    required TResult Function(CommercioAccountRestoredWalletStateInitial value)
        initial,
    required TResult Function(CommercioAccountRestoredWalletStateLoading value)
        loading,
    required TResult Function(CommercioAccountRestoredWalletStateError value)
        error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioAccountRestoredWalletStateData value)? $default, {
    TResult Function(CommercioAccountRestoredWalletStateInitial value)? initial,
    TResult Function(CommercioAccountRestoredWalletStateLoading value)? loading,
    TResult Function(CommercioAccountRestoredWalletStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CommercioAccountRestoredWalletStateError
    implements CommercioAccountRestoredWalletState {
  const factory CommercioAccountRestoredWalletStateError([String? error]) =
      _$CommercioAccountRestoredWalletStateError;

  String? get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommercioAccountRestoredWalletStateErrorCopyWith<
          CommercioAccountRestoredWalletStateError>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$CommercioAccountQrStateTearOff {
  const _$CommercioAccountQrStateTearOff();

  CommercioAccountQrStateData call({required String walletAddress}) {
    return CommercioAccountQrStateData(
      walletAddress: walletAddress,
    );
  }

  CommercioAccountQrStateInitial initial() {
    return const CommercioAccountQrStateInitial();
  }

  CommercioAccountQrStateLoading loading() {
    return const CommercioAccountQrStateLoading();
  }

  CommercioAccountQrStateError error([String? error]) {
    return CommercioAccountQrStateError(
      error,
    );
  }
}

/// @nodoc
const $CommercioAccountQrState = _$CommercioAccountQrStateTearOff();

/// @nodoc
mixin _$CommercioAccountQrState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String walletAddress) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String walletAddress)? $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommercioAccountQrStateData value) $default, {
    required TResult Function(CommercioAccountQrStateInitial value) initial,
    required TResult Function(CommercioAccountQrStateLoading value) loading,
    required TResult Function(CommercioAccountQrStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioAccountQrStateData value)? $default, {
    TResult Function(CommercioAccountQrStateInitial value)? initial,
    TResult Function(CommercioAccountQrStateLoading value)? loading,
    TResult Function(CommercioAccountQrStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommercioAccountQrStateCopyWith<$Res> {
  factory $CommercioAccountQrStateCopyWith(CommercioAccountQrState value,
          $Res Function(CommercioAccountQrState) then) =
      _$CommercioAccountQrStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommercioAccountQrStateCopyWithImpl<$Res>
    implements $CommercioAccountQrStateCopyWith<$Res> {
  _$CommercioAccountQrStateCopyWithImpl(this._value, this._then);

  final CommercioAccountQrState _value;
  // ignore: unused_field
  final $Res Function(CommercioAccountQrState) _then;
}

/// @nodoc
abstract class $CommercioAccountQrStateDataCopyWith<$Res> {
  factory $CommercioAccountQrStateDataCopyWith(
          CommercioAccountQrStateData value,
          $Res Function(CommercioAccountQrStateData) then) =
      _$CommercioAccountQrStateDataCopyWithImpl<$Res>;
  $Res call({String walletAddress});
}

/// @nodoc
class _$CommercioAccountQrStateDataCopyWithImpl<$Res>
    extends _$CommercioAccountQrStateCopyWithImpl<$Res>
    implements $CommercioAccountQrStateDataCopyWith<$Res> {
  _$CommercioAccountQrStateDataCopyWithImpl(CommercioAccountQrStateData _value,
      $Res Function(CommercioAccountQrStateData) _then)
      : super(_value, (v) => _then(v as CommercioAccountQrStateData));

  @override
  CommercioAccountQrStateData get _value =>
      super._value as CommercioAccountQrStateData;

  @override
  $Res call({
    Object? walletAddress = freezed,
  }) {
    return _then(CommercioAccountQrStateData(
      walletAddress: walletAddress == freezed
          ? _value.walletAddress
          : walletAddress // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CommercioAccountQrStateData
    with DiagnosticableTreeMixin
    implements CommercioAccountQrStateData {
  const _$CommercioAccountQrStateData({required this.walletAddress});

  @override
  final String walletAddress;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CommercioAccountQrState(walletAddress: $walletAddress)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CommercioAccountQrState'))
      ..add(DiagnosticsProperty('walletAddress', walletAddress));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioAccountQrStateData &&
            (identical(other.walletAddress, walletAddress) ||
                const DeepCollectionEquality()
                    .equals(other.walletAddress, walletAddress)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(walletAddress);

  @JsonKey(ignore: true)
  @override
  $CommercioAccountQrStateDataCopyWith<CommercioAccountQrStateData>
      get copyWith => _$CommercioAccountQrStateDataCopyWithImpl<
          CommercioAccountQrStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String walletAddress) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return $default(walletAddress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String walletAddress)? $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(walletAddress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommercioAccountQrStateData value) $default, {
    required TResult Function(CommercioAccountQrStateInitial value) initial,
    required TResult Function(CommercioAccountQrStateLoading value) loading,
    required TResult Function(CommercioAccountQrStateError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioAccountQrStateData value)? $default, {
    TResult Function(CommercioAccountQrStateInitial value)? initial,
    TResult Function(CommercioAccountQrStateLoading value)? loading,
    TResult Function(CommercioAccountQrStateError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class CommercioAccountQrStateData implements CommercioAccountQrState {
  const factory CommercioAccountQrStateData({required String walletAddress}) =
      _$CommercioAccountQrStateData;

  String get walletAddress => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommercioAccountQrStateDataCopyWith<CommercioAccountQrStateData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommercioAccountQrStateInitialCopyWith<$Res> {
  factory $CommercioAccountQrStateInitialCopyWith(
          CommercioAccountQrStateInitial value,
          $Res Function(CommercioAccountQrStateInitial) then) =
      _$CommercioAccountQrStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommercioAccountQrStateInitialCopyWithImpl<$Res>
    extends _$CommercioAccountQrStateCopyWithImpl<$Res>
    implements $CommercioAccountQrStateInitialCopyWith<$Res> {
  _$CommercioAccountQrStateInitialCopyWithImpl(
      CommercioAccountQrStateInitial _value,
      $Res Function(CommercioAccountQrStateInitial) _then)
      : super(_value, (v) => _then(v as CommercioAccountQrStateInitial));

  @override
  CommercioAccountQrStateInitial get _value =>
      super._value as CommercioAccountQrStateInitial;
}

/// @nodoc

class _$CommercioAccountQrStateInitial
    with DiagnosticableTreeMixin
    implements CommercioAccountQrStateInitial {
  const _$CommercioAccountQrStateInitial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CommercioAccountQrState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CommercioAccountQrState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CommercioAccountQrStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String walletAddress) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String walletAddress)? $default, {
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
    TResult Function(CommercioAccountQrStateData value) $default, {
    required TResult Function(CommercioAccountQrStateInitial value) initial,
    required TResult Function(CommercioAccountQrStateLoading value) loading,
    required TResult Function(CommercioAccountQrStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioAccountQrStateData value)? $default, {
    TResult Function(CommercioAccountQrStateInitial value)? initial,
    TResult Function(CommercioAccountQrStateLoading value)? loading,
    TResult Function(CommercioAccountQrStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CommercioAccountQrStateInitial
    implements CommercioAccountQrState {
  const factory CommercioAccountQrStateInitial() =
      _$CommercioAccountQrStateInitial;
}

/// @nodoc
abstract class $CommercioAccountQrStateLoadingCopyWith<$Res> {
  factory $CommercioAccountQrStateLoadingCopyWith(
          CommercioAccountQrStateLoading value,
          $Res Function(CommercioAccountQrStateLoading) then) =
      _$CommercioAccountQrStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommercioAccountQrStateLoadingCopyWithImpl<$Res>
    extends _$CommercioAccountQrStateCopyWithImpl<$Res>
    implements $CommercioAccountQrStateLoadingCopyWith<$Res> {
  _$CommercioAccountQrStateLoadingCopyWithImpl(
      CommercioAccountQrStateLoading _value,
      $Res Function(CommercioAccountQrStateLoading) _then)
      : super(_value, (v) => _then(v as CommercioAccountQrStateLoading));

  @override
  CommercioAccountQrStateLoading get _value =>
      super._value as CommercioAccountQrStateLoading;
}

/// @nodoc

class _$CommercioAccountQrStateLoading
    with DiagnosticableTreeMixin
    implements CommercioAccountQrStateLoading {
  const _$CommercioAccountQrStateLoading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CommercioAccountQrState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CommercioAccountQrState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CommercioAccountQrStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String walletAddress) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String walletAddress)? $default, {
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
    TResult Function(CommercioAccountQrStateData value) $default, {
    required TResult Function(CommercioAccountQrStateInitial value) initial,
    required TResult Function(CommercioAccountQrStateLoading value) loading,
    required TResult Function(CommercioAccountQrStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioAccountQrStateData value)? $default, {
    TResult Function(CommercioAccountQrStateInitial value)? initial,
    TResult Function(CommercioAccountQrStateLoading value)? loading,
    TResult Function(CommercioAccountQrStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CommercioAccountQrStateLoading
    implements CommercioAccountQrState {
  const factory CommercioAccountQrStateLoading() =
      _$CommercioAccountQrStateLoading;
}

/// @nodoc
abstract class $CommercioAccountQrStateErrorCopyWith<$Res> {
  factory $CommercioAccountQrStateErrorCopyWith(
          CommercioAccountQrStateError value,
          $Res Function(CommercioAccountQrStateError) then) =
      _$CommercioAccountQrStateErrorCopyWithImpl<$Res>;
  $Res call({String? error});
}

/// @nodoc
class _$CommercioAccountQrStateErrorCopyWithImpl<$Res>
    extends _$CommercioAccountQrStateCopyWithImpl<$Res>
    implements $CommercioAccountQrStateErrorCopyWith<$Res> {
  _$CommercioAccountQrStateErrorCopyWithImpl(
      CommercioAccountQrStateError _value,
      $Res Function(CommercioAccountQrStateError) _then)
      : super(_value, (v) => _then(v as CommercioAccountQrStateError));

  @override
  CommercioAccountQrStateError get _value =>
      super._value as CommercioAccountQrStateError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(CommercioAccountQrStateError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CommercioAccountQrStateError
    with DiagnosticableTreeMixin
    implements CommercioAccountQrStateError {
  const _$CommercioAccountQrStateError([this.error]);

  @override
  final String? error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CommercioAccountQrState.error(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CommercioAccountQrState.error'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioAccountQrStateError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $CommercioAccountQrStateErrorCopyWith<CommercioAccountQrStateError>
      get copyWith => _$CommercioAccountQrStateErrorCopyWithImpl<
          CommercioAccountQrStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String walletAddress) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String walletAddress)? $default, {
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
    TResult Function(CommercioAccountQrStateData value) $default, {
    required TResult Function(CommercioAccountQrStateInitial value) initial,
    required TResult Function(CommercioAccountQrStateLoading value) loading,
    required TResult Function(CommercioAccountQrStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioAccountQrStateData value)? $default, {
    TResult Function(CommercioAccountQrStateInitial value)? initial,
    TResult Function(CommercioAccountQrStateLoading value)? loading,
    TResult Function(CommercioAccountQrStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CommercioAccountQrStateError implements CommercioAccountQrState {
  const factory CommercioAccountQrStateError([String? error]) =
      _$CommercioAccountQrStateError;

  String? get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommercioAccountQrStateErrorCopyWith<CommercioAccountQrStateError>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$CommercioAccountFreeTokensStateTearOff {
  const _$CommercioAccountFreeTokensStateTearOff();

  CommercioAccountFreeTokensStateData call(
      {required AccountRequestResponse accountRequestResponse}) {
    return CommercioAccountFreeTokensStateData(
      accountRequestResponse: accountRequestResponse,
    );
  }

  CommercioAccountFreeTokensStateInitial initial() {
    return const CommercioAccountFreeTokensStateInitial();
  }

  CommercioAccountFreeTokensStateLoading loading() {
    return const CommercioAccountFreeTokensStateLoading();
  }

  CommercioAccountFreeTokensStateError error([String? error]) {
    return CommercioAccountFreeTokensStateError(
      error,
    );
  }
}

/// @nodoc
const $CommercioAccountFreeTokensState =
    _$CommercioAccountFreeTokensStateTearOff();

/// @nodoc
mixin _$CommercioAccountFreeTokensState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(AccountRequestResponse accountRequestResponse) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(AccountRequestResponse accountRequestResponse)? $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommercioAccountFreeTokensStateData value) $default, {
    required TResult Function(CommercioAccountFreeTokensStateInitial value)
        initial,
    required TResult Function(CommercioAccountFreeTokensStateLoading value)
        loading,
    required TResult Function(CommercioAccountFreeTokensStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioAccountFreeTokensStateData value)? $default, {
    TResult Function(CommercioAccountFreeTokensStateInitial value)? initial,
    TResult Function(CommercioAccountFreeTokensStateLoading value)? loading,
    TResult Function(CommercioAccountFreeTokensStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommercioAccountFreeTokensStateCopyWith<$Res> {
  factory $CommercioAccountFreeTokensStateCopyWith(
          CommercioAccountFreeTokensState value,
          $Res Function(CommercioAccountFreeTokensState) then) =
      _$CommercioAccountFreeTokensStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommercioAccountFreeTokensStateCopyWithImpl<$Res>
    implements $CommercioAccountFreeTokensStateCopyWith<$Res> {
  _$CommercioAccountFreeTokensStateCopyWithImpl(this._value, this._then);

  final CommercioAccountFreeTokensState _value;
  // ignore: unused_field
  final $Res Function(CommercioAccountFreeTokensState) _then;
}

/// @nodoc
abstract class $CommercioAccountFreeTokensStateDataCopyWith<$Res> {
  factory $CommercioAccountFreeTokensStateDataCopyWith(
          CommercioAccountFreeTokensStateData value,
          $Res Function(CommercioAccountFreeTokensStateData) then) =
      _$CommercioAccountFreeTokensStateDataCopyWithImpl<$Res>;
  $Res call({AccountRequestResponse accountRequestResponse});
}

/// @nodoc
class _$CommercioAccountFreeTokensStateDataCopyWithImpl<$Res>
    extends _$CommercioAccountFreeTokensStateCopyWithImpl<$Res>
    implements $CommercioAccountFreeTokensStateDataCopyWith<$Res> {
  _$CommercioAccountFreeTokensStateDataCopyWithImpl(
      CommercioAccountFreeTokensStateData _value,
      $Res Function(CommercioAccountFreeTokensStateData) _then)
      : super(_value, (v) => _then(v as CommercioAccountFreeTokensStateData));

  @override
  CommercioAccountFreeTokensStateData get _value =>
      super._value as CommercioAccountFreeTokensStateData;

  @override
  $Res call({
    Object? accountRequestResponse = freezed,
  }) {
    return _then(CommercioAccountFreeTokensStateData(
      accountRequestResponse: accountRequestResponse == freezed
          ? _value.accountRequestResponse
          : accountRequestResponse // ignore: cast_nullable_to_non_nullable
              as AccountRequestResponse,
    ));
  }
}

/// @nodoc

class _$CommercioAccountFreeTokensStateData
    with DiagnosticableTreeMixin
    implements CommercioAccountFreeTokensStateData {
  const _$CommercioAccountFreeTokensStateData(
      {required this.accountRequestResponse});

  @override
  final AccountRequestResponse accountRequestResponse;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CommercioAccountFreeTokensState(accountRequestResponse: $accountRequestResponse)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CommercioAccountFreeTokensState'))
      ..add(DiagnosticsProperty(
          'accountRequestResponse', accountRequestResponse));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioAccountFreeTokensStateData &&
            (identical(other.accountRequestResponse, accountRequestResponse) ||
                const DeepCollectionEquality().equals(
                    other.accountRequestResponse, accountRequestResponse)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(accountRequestResponse);

  @JsonKey(ignore: true)
  @override
  $CommercioAccountFreeTokensStateDataCopyWith<
          CommercioAccountFreeTokensStateData>
      get copyWith => _$CommercioAccountFreeTokensStateDataCopyWithImpl<
          CommercioAccountFreeTokensStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(AccountRequestResponse accountRequestResponse) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return $default(accountRequestResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(AccountRequestResponse accountRequestResponse)? $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(accountRequestResponse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommercioAccountFreeTokensStateData value) $default, {
    required TResult Function(CommercioAccountFreeTokensStateInitial value)
        initial,
    required TResult Function(CommercioAccountFreeTokensStateLoading value)
        loading,
    required TResult Function(CommercioAccountFreeTokensStateError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioAccountFreeTokensStateData value)? $default, {
    TResult Function(CommercioAccountFreeTokensStateInitial value)? initial,
    TResult Function(CommercioAccountFreeTokensStateLoading value)? loading,
    TResult Function(CommercioAccountFreeTokensStateError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class CommercioAccountFreeTokensStateData
    implements CommercioAccountFreeTokensState {
  const factory CommercioAccountFreeTokensStateData(
          {required AccountRequestResponse accountRequestResponse}) =
      _$CommercioAccountFreeTokensStateData;

  AccountRequestResponse get accountRequestResponse =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommercioAccountFreeTokensStateDataCopyWith<
          CommercioAccountFreeTokensStateData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommercioAccountFreeTokensStateInitialCopyWith<$Res> {
  factory $CommercioAccountFreeTokensStateInitialCopyWith(
          CommercioAccountFreeTokensStateInitial value,
          $Res Function(CommercioAccountFreeTokensStateInitial) then) =
      _$CommercioAccountFreeTokensStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommercioAccountFreeTokensStateInitialCopyWithImpl<$Res>
    extends _$CommercioAccountFreeTokensStateCopyWithImpl<$Res>
    implements $CommercioAccountFreeTokensStateInitialCopyWith<$Res> {
  _$CommercioAccountFreeTokensStateInitialCopyWithImpl(
      CommercioAccountFreeTokensStateInitial _value,
      $Res Function(CommercioAccountFreeTokensStateInitial) _then)
      : super(
            _value, (v) => _then(v as CommercioAccountFreeTokensStateInitial));

  @override
  CommercioAccountFreeTokensStateInitial get _value =>
      super._value as CommercioAccountFreeTokensStateInitial;
}

/// @nodoc

class _$CommercioAccountFreeTokensStateInitial
    with DiagnosticableTreeMixin
    implements CommercioAccountFreeTokensStateInitial {
  const _$CommercioAccountFreeTokensStateInitial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CommercioAccountFreeTokensState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'CommercioAccountFreeTokensState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioAccountFreeTokensStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(AccountRequestResponse accountRequestResponse) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(AccountRequestResponse accountRequestResponse)? $default, {
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
    TResult Function(CommercioAccountFreeTokensStateData value) $default, {
    required TResult Function(CommercioAccountFreeTokensStateInitial value)
        initial,
    required TResult Function(CommercioAccountFreeTokensStateLoading value)
        loading,
    required TResult Function(CommercioAccountFreeTokensStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioAccountFreeTokensStateData value)? $default, {
    TResult Function(CommercioAccountFreeTokensStateInitial value)? initial,
    TResult Function(CommercioAccountFreeTokensStateLoading value)? loading,
    TResult Function(CommercioAccountFreeTokensStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CommercioAccountFreeTokensStateInitial
    implements CommercioAccountFreeTokensState {
  const factory CommercioAccountFreeTokensStateInitial() =
      _$CommercioAccountFreeTokensStateInitial;
}

/// @nodoc
abstract class $CommercioAccountFreeTokensStateLoadingCopyWith<$Res> {
  factory $CommercioAccountFreeTokensStateLoadingCopyWith(
          CommercioAccountFreeTokensStateLoading value,
          $Res Function(CommercioAccountFreeTokensStateLoading) then) =
      _$CommercioAccountFreeTokensStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommercioAccountFreeTokensStateLoadingCopyWithImpl<$Res>
    extends _$CommercioAccountFreeTokensStateCopyWithImpl<$Res>
    implements $CommercioAccountFreeTokensStateLoadingCopyWith<$Res> {
  _$CommercioAccountFreeTokensStateLoadingCopyWithImpl(
      CommercioAccountFreeTokensStateLoading _value,
      $Res Function(CommercioAccountFreeTokensStateLoading) _then)
      : super(
            _value, (v) => _then(v as CommercioAccountFreeTokensStateLoading));

  @override
  CommercioAccountFreeTokensStateLoading get _value =>
      super._value as CommercioAccountFreeTokensStateLoading;
}

/// @nodoc

class _$CommercioAccountFreeTokensStateLoading
    with DiagnosticableTreeMixin
    implements CommercioAccountFreeTokensStateLoading {
  const _$CommercioAccountFreeTokensStateLoading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CommercioAccountFreeTokensState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'CommercioAccountFreeTokensState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioAccountFreeTokensStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(AccountRequestResponse accountRequestResponse) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(AccountRequestResponse accountRequestResponse)? $default, {
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
    TResult Function(CommercioAccountFreeTokensStateData value) $default, {
    required TResult Function(CommercioAccountFreeTokensStateInitial value)
        initial,
    required TResult Function(CommercioAccountFreeTokensStateLoading value)
        loading,
    required TResult Function(CommercioAccountFreeTokensStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioAccountFreeTokensStateData value)? $default, {
    TResult Function(CommercioAccountFreeTokensStateInitial value)? initial,
    TResult Function(CommercioAccountFreeTokensStateLoading value)? loading,
    TResult Function(CommercioAccountFreeTokensStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CommercioAccountFreeTokensStateLoading
    implements CommercioAccountFreeTokensState {
  const factory CommercioAccountFreeTokensStateLoading() =
      _$CommercioAccountFreeTokensStateLoading;
}

/// @nodoc
abstract class $CommercioAccountFreeTokensStateErrorCopyWith<$Res> {
  factory $CommercioAccountFreeTokensStateErrorCopyWith(
          CommercioAccountFreeTokensStateError value,
          $Res Function(CommercioAccountFreeTokensStateError) then) =
      _$CommercioAccountFreeTokensStateErrorCopyWithImpl<$Res>;
  $Res call({String? error});
}

/// @nodoc
class _$CommercioAccountFreeTokensStateErrorCopyWithImpl<$Res>
    extends _$CommercioAccountFreeTokensStateCopyWithImpl<$Res>
    implements $CommercioAccountFreeTokensStateErrorCopyWith<$Res> {
  _$CommercioAccountFreeTokensStateErrorCopyWithImpl(
      CommercioAccountFreeTokensStateError _value,
      $Res Function(CommercioAccountFreeTokensStateError) _then)
      : super(_value, (v) => _then(v as CommercioAccountFreeTokensStateError));

  @override
  CommercioAccountFreeTokensStateError get _value =>
      super._value as CommercioAccountFreeTokensStateError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(CommercioAccountFreeTokensStateError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CommercioAccountFreeTokensStateError
    with DiagnosticableTreeMixin
    implements CommercioAccountFreeTokensStateError {
  const _$CommercioAccountFreeTokensStateError([this.error]);

  @override
  final String? error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CommercioAccountFreeTokensState.error(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'CommercioAccountFreeTokensState.error'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioAccountFreeTokensStateError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $CommercioAccountFreeTokensStateErrorCopyWith<
          CommercioAccountFreeTokensStateError>
      get copyWith => _$CommercioAccountFreeTokensStateErrorCopyWithImpl<
          CommercioAccountFreeTokensStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(AccountRequestResponse accountRequestResponse) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(AccountRequestResponse accountRequestResponse)? $default, {
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
    TResult Function(CommercioAccountFreeTokensStateData value) $default, {
    required TResult Function(CommercioAccountFreeTokensStateInitial value)
        initial,
    required TResult Function(CommercioAccountFreeTokensStateLoading value)
        loading,
    required TResult Function(CommercioAccountFreeTokensStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioAccountFreeTokensStateData value)? $default, {
    TResult Function(CommercioAccountFreeTokensStateInitial value)? initial,
    TResult Function(CommercioAccountFreeTokensStateLoading value)? loading,
    TResult Function(CommercioAccountFreeTokensStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CommercioAccountFreeTokensStateError
    implements CommercioAccountFreeTokensState {
  const factory CommercioAccountFreeTokensStateError([String? error]) =
      _$CommercioAccountFreeTokensStateError;

  String? get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommercioAccountFreeTokensStateErrorCopyWith<
          CommercioAccountFreeTokensStateError>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$CommercioAccountBalanceStateTearOff {
  const _$CommercioAccountBalanceStateTearOff();

  CommercioAccountBalanceStateData call({required List<StdCoin> balance}) {
    return CommercioAccountBalanceStateData(
      balance: balance,
    );
  }

  CommercioAccountBalanceStateInitial initial() {
    return const CommercioAccountBalanceStateInitial();
  }

  CommercioAccountBalanceStateLoading loading() {
    return const CommercioAccountBalanceStateLoading();
  }

  CommercioAccountBalanceStateError error([String? error]) {
    return CommercioAccountBalanceStateError(
      error,
    );
  }
}

/// @nodoc
const $CommercioAccountBalanceState = _$CommercioAccountBalanceStateTearOff();

/// @nodoc
mixin _$CommercioAccountBalanceState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<StdCoin> balance) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<StdCoin> balance)? $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommercioAccountBalanceStateData value) $default, {
    required TResult Function(CommercioAccountBalanceStateInitial value)
        initial,
    required TResult Function(CommercioAccountBalanceStateLoading value)
        loading,
    required TResult Function(CommercioAccountBalanceStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioAccountBalanceStateData value)? $default, {
    TResult Function(CommercioAccountBalanceStateInitial value)? initial,
    TResult Function(CommercioAccountBalanceStateLoading value)? loading,
    TResult Function(CommercioAccountBalanceStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommercioAccountBalanceStateCopyWith<$Res> {
  factory $CommercioAccountBalanceStateCopyWith(
          CommercioAccountBalanceState value,
          $Res Function(CommercioAccountBalanceState) then) =
      _$CommercioAccountBalanceStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommercioAccountBalanceStateCopyWithImpl<$Res>
    implements $CommercioAccountBalanceStateCopyWith<$Res> {
  _$CommercioAccountBalanceStateCopyWithImpl(this._value, this._then);

  final CommercioAccountBalanceState _value;
  // ignore: unused_field
  final $Res Function(CommercioAccountBalanceState) _then;
}

/// @nodoc
abstract class $CommercioAccountBalanceStateDataCopyWith<$Res> {
  factory $CommercioAccountBalanceStateDataCopyWith(
          CommercioAccountBalanceStateData value,
          $Res Function(CommercioAccountBalanceStateData) then) =
      _$CommercioAccountBalanceStateDataCopyWithImpl<$Res>;
  $Res call({List<StdCoin> balance});
}

/// @nodoc
class _$CommercioAccountBalanceStateDataCopyWithImpl<$Res>
    extends _$CommercioAccountBalanceStateCopyWithImpl<$Res>
    implements $CommercioAccountBalanceStateDataCopyWith<$Res> {
  _$CommercioAccountBalanceStateDataCopyWithImpl(
      CommercioAccountBalanceStateData _value,
      $Res Function(CommercioAccountBalanceStateData) _then)
      : super(_value, (v) => _then(v as CommercioAccountBalanceStateData));

  @override
  CommercioAccountBalanceStateData get _value =>
      super._value as CommercioAccountBalanceStateData;

  @override
  $Res call({
    Object? balance = freezed,
  }) {
    return _then(CommercioAccountBalanceStateData(
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as List<StdCoin>,
    ));
  }
}

/// @nodoc

class _$CommercioAccountBalanceStateData
    with DiagnosticableTreeMixin
    implements CommercioAccountBalanceStateData {
  const _$CommercioAccountBalanceStateData({required this.balance});

  @override
  final List<StdCoin> balance;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CommercioAccountBalanceState(balance: $balance)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CommercioAccountBalanceState'))
      ..add(DiagnosticsProperty('balance', balance));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioAccountBalanceStateData &&
            (identical(other.balance, balance) ||
                const DeepCollectionEquality().equals(other.balance, balance)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(balance);

  @JsonKey(ignore: true)
  @override
  $CommercioAccountBalanceStateDataCopyWith<CommercioAccountBalanceStateData>
      get copyWith => _$CommercioAccountBalanceStateDataCopyWithImpl<
          CommercioAccountBalanceStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<StdCoin> balance) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return $default(balance);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<StdCoin> balance)? $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(balance);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommercioAccountBalanceStateData value) $default, {
    required TResult Function(CommercioAccountBalanceStateInitial value)
        initial,
    required TResult Function(CommercioAccountBalanceStateLoading value)
        loading,
    required TResult Function(CommercioAccountBalanceStateError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioAccountBalanceStateData value)? $default, {
    TResult Function(CommercioAccountBalanceStateInitial value)? initial,
    TResult Function(CommercioAccountBalanceStateLoading value)? loading,
    TResult Function(CommercioAccountBalanceStateError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class CommercioAccountBalanceStateData
    implements CommercioAccountBalanceState {
  const factory CommercioAccountBalanceStateData(
      {required List<StdCoin> balance}) = _$CommercioAccountBalanceStateData;

  List<StdCoin> get balance => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommercioAccountBalanceStateDataCopyWith<CommercioAccountBalanceStateData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommercioAccountBalanceStateInitialCopyWith<$Res> {
  factory $CommercioAccountBalanceStateInitialCopyWith(
          CommercioAccountBalanceStateInitial value,
          $Res Function(CommercioAccountBalanceStateInitial) then) =
      _$CommercioAccountBalanceStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommercioAccountBalanceStateInitialCopyWithImpl<$Res>
    extends _$CommercioAccountBalanceStateCopyWithImpl<$Res>
    implements $CommercioAccountBalanceStateInitialCopyWith<$Res> {
  _$CommercioAccountBalanceStateInitialCopyWithImpl(
      CommercioAccountBalanceStateInitial _value,
      $Res Function(CommercioAccountBalanceStateInitial) _then)
      : super(_value, (v) => _then(v as CommercioAccountBalanceStateInitial));

  @override
  CommercioAccountBalanceStateInitial get _value =>
      super._value as CommercioAccountBalanceStateInitial;
}

/// @nodoc

class _$CommercioAccountBalanceStateInitial
    with DiagnosticableTreeMixin
    implements CommercioAccountBalanceStateInitial {
  const _$CommercioAccountBalanceStateInitial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CommercioAccountBalanceState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'CommercioAccountBalanceState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioAccountBalanceStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<StdCoin> balance) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<StdCoin> balance)? $default, {
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
    TResult Function(CommercioAccountBalanceStateData value) $default, {
    required TResult Function(CommercioAccountBalanceStateInitial value)
        initial,
    required TResult Function(CommercioAccountBalanceStateLoading value)
        loading,
    required TResult Function(CommercioAccountBalanceStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioAccountBalanceStateData value)? $default, {
    TResult Function(CommercioAccountBalanceStateInitial value)? initial,
    TResult Function(CommercioAccountBalanceStateLoading value)? loading,
    TResult Function(CommercioAccountBalanceStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CommercioAccountBalanceStateInitial
    implements CommercioAccountBalanceState {
  const factory CommercioAccountBalanceStateInitial() =
      _$CommercioAccountBalanceStateInitial;
}

/// @nodoc
abstract class $CommercioAccountBalanceStateLoadingCopyWith<$Res> {
  factory $CommercioAccountBalanceStateLoadingCopyWith(
          CommercioAccountBalanceStateLoading value,
          $Res Function(CommercioAccountBalanceStateLoading) then) =
      _$CommercioAccountBalanceStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommercioAccountBalanceStateLoadingCopyWithImpl<$Res>
    extends _$CommercioAccountBalanceStateCopyWithImpl<$Res>
    implements $CommercioAccountBalanceStateLoadingCopyWith<$Res> {
  _$CommercioAccountBalanceStateLoadingCopyWithImpl(
      CommercioAccountBalanceStateLoading _value,
      $Res Function(CommercioAccountBalanceStateLoading) _then)
      : super(_value, (v) => _then(v as CommercioAccountBalanceStateLoading));

  @override
  CommercioAccountBalanceStateLoading get _value =>
      super._value as CommercioAccountBalanceStateLoading;
}

/// @nodoc

class _$CommercioAccountBalanceStateLoading
    with DiagnosticableTreeMixin
    implements CommercioAccountBalanceStateLoading {
  const _$CommercioAccountBalanceStateLoading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CommercioAccountBalanceState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'CommercioAccountBalanceState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioAccountBalanceStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<StdCoin> balance) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<StdCoin> balance)? $default, {
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
    TResult Function(CommercioAccountBalanceStateData value) $default, {
    required TResult Function(CommercioAccountBalanceStateInitial value)
        initial,
    required TResult Function(CommercioAccountBalanceStateLoading value)
        loading,
    required TResult Function(CommercioAccountBalanceStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioAccountBalanceStateData value)? $default, {
    TResult Function(CommercioAccountBalanceStateInitial value)? initial,
    TResult Function(CommercioAccountBalanceStateLoading value)? loading,
    TResult Function(CommercioAccountBalanceStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CommercioAccountBalanceStateLoading
    implements CommercioAccountBalanceState {
  const factory CommercioAccountBalanceStateLoading() =
      _$CommercioAccountBalanceStateLoading;
}

/// @nodoc
abstract class $CommercioAccountBalanceStateErrorCopyWith<$Res> {
  factory $CommercioAccountBalanceStateErrorCopyWith(
          CommercioAccountBalanceStateError value,
          $Res Function(CommercioAccountBalanceStateError) then) =
      _$CommercioAccountBalanceStateErrorCopyWithImpl<$Res>;
  $Res call({String? error});
}

/// @nodoc
class _$CommercioAccountBalanceStateErrorCopyWithImpl<$Res>
    extends _$CommercioAccountBalanceStateCopyWithImpl<$Res>
    implements $CommercioAccountBalanceStateErrorCopyWith<$Res> {
  _$CommercioAccountBalanceStateErrorCopyWithImpl(
      CommercioAccountBalanceStateError _value,
      $Res Function(CommercioAccountBalanceStateError) _then)
      : super(_value, (v) => _then(v as CommercioAccountBalanceStateError));

  @override
  CommercioAccountBalanceStateError get _value =>
      super._value as CommercioAccountBalanceStateError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(CommercioAccountBalanceStateError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CommercioAccountBalanceStateError
    with DiagnosticableTreeMixin
    implements CommercioAccountBalanceStateError {
  const _$CommercioAccountBalanceStateError([this.error]);

  @override
  final String? error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CommercioAccountBalanceState.error(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CommercioAccountBalanceState.error'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioAccountBalanceStateError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $CommercioAccountBalanceStateErrorCopyWith<CommercioAccountBalanceStateError>
      get copyWith => _$CommercioAccountBalanceStateErrorCopyWithImpl<
          CommercioAccountBalanceStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<StdCoin> balance) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<StdCoin> balance)? $default, {
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
    TResult Function(CommercioAccountBalanceStateData value) $default, {
    required TResult Function(CommercioAccountBalanceStateInitial value)
        initial,
    required TResult Function(CommercioAccountBalanceStateLoading value)
        loading,
    required TResult Function(CommercioAccountBalanceStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioAccountBalanceStateData value)? $default, {
    TResult Function(CommercioAccountBalanceStateInitial value)? initial,
    TResult Function(CommercioAccountBalanceStateLoading value)? loading,
    TResult Function(CommercioAccountBalanceStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CommercioAccountBalanceStateError
    implements CommercioAccountBalanceState {
  const factory CommercioAccountBalanceStateError([String? error]) =
      _$CommercioAccountBalanceStateError;

  String? get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommercioAccountBalanceStateErrorCopyWith<CommercioAccountBalanceStateError>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$CommercioAccountSentTokensStateTearOff {
  const _$CommercioAccountSentTokensStateTearOff();

  CommercioAccountSentTokensStateData call(
      {required TransactionResult result}) {
    return CommercioAccountSentTokensStateData(
      result: result,
    );
  }

  CommercioAccountSentTokensStateInitial initial() {
    return const CommercioAccountSentTokensStateInitial();
  }

  CommercioAccountSentTokensStateLoading loading() {
    return const CommercioAccountSentTokensStateLoading();
  }

  CommercioAccountSentTokensStateError error([String? error]) {
    return CommercioAccountSentTokensStateError(
      error,
    );
  }
}

/// @nodoc
const $CommercioAccountSentTokensState =
    _$CommercioAccountSentTokensStateTearOff();

/// @nodoc
mixin _$CommercioAccountSentTokensState {
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
    TResult Function(CommercioAccountSentTokensStateData value) $default, {
    required TResult Function(CommercioAccountSentTokensStateInitial value)
        initial,
    required TResult Function(CommercioAccountSentTokensStateLoading value)
        loading,
    required TResult Function(CommercioAccountSentTokensStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioAccountSentTokensStateData value)? $default, {
    TResult Function(CommercioAccountSentTokensStateInitial value)? initial,
    TResult Function(CommercioAccountSentTokensStateLoading value)? loading,
    TResult Function(CommercioAccountSentTokensStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommercioAccountSentTokensStateCopyWith<$Res> {
  factory $CommercioAccountSentTokensStateCopyWith(
          CommercioAccountSentTokensState value,
          $Res Function(CommercioAccountSentTokensState) then) =
      _$CommercioAccountSentTokensStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommercioAccountSentTokensStateCopyWithImpl<$Res>
    implements $CommercioAccountSentTokensStateCopyWith<$Res> {
  _$CommercioAccountSentTokensStateCopyWithImpl(this._value, this._then);

  final CommercioAccountSentTokensState _value;
  // ignore: unused_field
  final $Res Function(CommercioAccountSentTokensState) _then;
}

/// @nodoc
abstract class $CommercioAccountSentTokensStateDataCopyWith<$Res> {
  factory $CommercioAccountSentTokensStateDataCopyWith(
          CommercioAccountSentTokensStateData value,
          $Res Function(CommercioAccountSentTokensStateData) then) =
      _$CommercioAccountSentTokensStateDataCopyWithImpl<$Res>;
  $Res call({TransactionResult result});
}

/// @nodoc
class _$CommercioAccountSentTokensStateDataCopyWithImpl<$Res>
    extends _$CommercioAccountSentTokensStateCopyWithImpl<$Res>
    implements $CommercioAccountSentTokensStateDataCopyWith<$Res> {
  _$CommercioAccountSentTokensStateDataCopyWithImpl(
      CommercioAccountSentTokensStateData _value,
      $Res Function(CommercioAccountSentTokensStateData) _then)
      : super(_value, (v) => _then(v as CommercioAccountSentTokensStateData));

  @override
  CommercioAccountSentTokensStateData get _value =>
      super._value as CommercioAccountSentTokensStateData;

  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(CommercioAccountSentTokensStateData(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as TransactionResult,
    ));
  }
}

/// @nodoc

class _$CommercioAccountSentTokensStateData
    with DiagnosticableTreeMixin
    implements CommercioAccountSentTokensStateData {
  const _$CommercioAccountSentTokensStateData({required this.result});

  @override
  final TransactionResult result;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CommercioAccountSentTokensState(result: $result)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CommercioAccountSentTokensState'))
      ..add(DiagnosticsProperty('result', result));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioAccountSentTokensStateData &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(result);

  @JsonKey(ignore: true)
  @override
  $CommercioAccountSentTokensStateDataCopyWith<
          CommercioAccountSentTokensStateData>
      get copyWith => _$CommercioAccountSentTokensStateDataCopyWithImpl<
          CommercioAccountSentTokensStateData>(this, _$identity);

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
    TResult Function(CommercioAccountSentTokensStateData value) $default, {
    required TResult Function(CommercioAccountSentTokensStateInitial value)
        initial,
    required TResult Function(CommercioAccountSentTokensStateLoading value)
        loading,
    required TResult Function(CommercioAccountSentTokensStateError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioAccountSentTokensStateData value)? $default, {
    TResult Function(CommercioAccountSentTokensStateInitial value)? initial,
    TResult Function(CommercioAccountSentTokensStateLoading value)? loading,
    TResult Function(CommercioAccountSentTokensStateError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class CommercioAccountSentTokensStateData
    implements CommercioAccountSentTokensState {
  const factory CommercioAccountSentTokensStateData(
          {required TransactionResult result}) =
      _$CommercioAccountSentTokensStateData;

  TransactionResult get result => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommercioAccountSentTokensStateDataCopyWith<
          CommercioAccountSentTokensStateData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommercioAccountSentTokensStateInitialCopyWith<$Res> {
  factory $CommercioAccountSentTokensStateInitialCopyWith(
          CommercioAccountSentTokensStateInitial value,
          $Res Function(CommercioAccountSentTokensStateInitial) then) =
      _$CommercioAccountSentTokensStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommercioAccountSentTokensStateInitialCopyWithImpl<$Res>
    extends _$CommercioAccountSentTokensStateCopyWithImpl<$Res>
    implements $CommercioAccountSentTokensStateInitialCopyWith<$Res> {
  _$CommercioAccountSentTokensStateInitialCopyWithImpl(
      CommercioAccountSentTokensStateInitial _value,
      $Res Function(CommercioAccountSentTokensStateInitial) _then)
      : super(
            _value, (v) => _then(v as CommercioAccountSentTokensStateInitial));

  @override
  CommercioAccountSentTokensStateInitial get _value =>
      super._value as CommercioAccountSentTokensStateInitial;
}

/// @nodoc

class _$CommercioAccountSentTokensStateInitial
    with DiagnosticableTreeMixin
    implements CommercioAccountSentTokensStateInitial {
  const _$CommercioAccountSentTokensStateInitial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CommercioAccountSentTokensState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'CommercioAccountSentTokensState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioAccountSentTokensStateInitial);
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
    TResult Function(CommercioAccountSentTokensStateData value) $default, {
    required TResult Function(CommercioAccountSentTokensStateInitial value)
        initial,
    required TResult Function(CommercioAccountSentTokensStateLoading value)
        loading,
    required TResult Function(CommercioAccountSentTokensStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioAccountSentTokensStateData value)? $default, {
    TResult Function(CommercioAccountSentTokensStateInitial value)? initial,
    TResult Function(CommercioAccountSentTokensStateLoading value)? loading,
    TResult Function(CommercioAccountSentTokensStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CommercioAccountSentTokensStateInitial
    implements CommercioAccountSentTokensState {
  const factory CommercioAccountSentTokensStateInitial() =
      _$CommercioAccountSentTokensStateInitial;
}

/// @nodoc
abstract class $CommercioAccountSentTokensStateLoadingCopyWith<$Res> {
  factory $CommercioAccountSentTokensStateLoadingCopyWith(
          CommercioAccountSentTokensStateLoading value,
          $Res Function(CommercioAccountSentTokensStateLoading) then) =
      _$CommercioAccountSentTokensStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommercioAccountSentTokensStateLoadingCopyWithImpl<$Res>
    extends _$CommercioAccountSentTokensStateCopyWithImpl<$Res>
    implements $CommercioAccountSentTokensStateLoadingCopyWith<$Res> {
  _$CommercioAccountSentTokensStateLoadingCopyWithImpl(
      CommercioAccountSentTokensStateLoading _value,
      $Res Function(CommercioAccountSentTokensStateLoading) _then)
      : super(
            _value, (v) => _then(v as CommercioAccountSentTokensStateLoading));

  @override
  CommercioAccountSentTokensStateLoading get _value =>
      super._value as CommercioAccountSentTokensStateLoading;
}

/// @nodoc

class _$CommercioAccountSentTokensStateLoading
    with DiagnosticableTreeMixin
    implements CommercioAccountSentTokensStateLoading {
  const _$CommercioAccountSentTokensStateLoading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CommercioAccountSentTokensState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'CommercioAccountSentTokensState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioAccountSentTokensStateLoading);
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
    TResult Function(CommercioAccountSentTokensStateData value) $default, {
    required TResult Function(CommercioAccountSentTokensStateInitial value)
        initial,
    required TResult Function(CommercioAccountSentTokensStateLoading value)
        loading,
    required TResult Function(CommercioAccountSentTokensStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioAccountSentTokensStateData value)? $default, {
    TResult Function(CommercioAccountSentTokensStateInitial value)? initial,
    TResult Function(CommercioAccountSentTokensStateLoading value)? loading,
    TResult Function(CommercioAccountSentTokensStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CommercioAccountSentTokensStateLoading
    implements CommercioAccountSentTokensState {
  const factory CommercioAccountSentTokensStateLoading() =
      _$CommercioAccountSentTokensStateLoading;
}

/// @nodoc
abstract class $CommercioAccountSentTokensStateErrorCopyWith<$Res> {
  factory $CommercioAccountSentTokensStateErrorCopyWith(
          CommercioAccountSentTokensStateError value,
          $Res Function(CommercioAccountSentTokensStateError) then) =
      _$CommercioAccountSentTokensStateErrorCopyWithImpl<$Res>;
  $Res call({String? error});
}

/// @nodoc
class _$CommercioAccountSentTokensStateErrorCopyWithImpl<$Res>
    extends _$CommercioAccountSentTokensStateCopyWithImpl<$Res>
    implements $CommercioAccountSentTokensStateErrorCopyWith<$Res> {
  _$CommercioAccountSentTokensStateErrorCopyWithImpl(
      CommercioAccountSentTokensStateError _value,
      $Res Function(CommercioAccountSentTokensStateError) _then)
      : super(_value, (v) => _then(v as CommercioAccountSentTokensStateError));

  @override
  CommercioAccountSentTokensStateError get _value =>
      super._value as CommercioAccountSentTokensStateError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(CommercioAccountSentTokensStateError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CommercioAccountSentTokensStateError
    with DiagnosticableTreeMixin
    implements CommercioAccountSentTokensStateError {
  const _$CommercioAccountSentTokensStateError([this.error]);

  @override
  final String? error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CommercioAccountSentTokensState.error(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'CommercioAccountSentTokensState.error'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioAccountSentTokensStateError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $CommercioAccountSentTokensStateErrorCopyWith<
          CommercioAccountSentTokensStateError>
      get copyWith => _$CommercioAccountSentTokensStateErrorCopyWithImpl<
          CommercioAccountSentTokensStateError>(this, _$identity);

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
    TResult Function(CommercioAccountSentTokensStateData value) $default, {
    required TResult Function(CommercioAccountSentTokensStateInitial value)
        initial,
    required TResult Function(CommercioAccountSentTokensStateLoading value)
        loading,
    required TResult Function(CommercioAccountSentTokensStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioAccountSentTokensStateData value)? $default, {
    TResult Function(CommercioAccountSentTokensStateInitial value)? initial,
    TResult Function(CommercioAccountSentTokensStateLoading value)? loading,
    TResult Function(CommercioAccountSentTokensStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CommercioAccountSentTokensStateError
    implements CommercioAccountSentTokensState {
  const factory CommercioAccountSentTokensStateError([String? error]) =
      _$CommercioAccountSentTokensStateError;

  String? get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommercioAccountSentTokensStateErrorCopyWith<
          CommercioAccountSentTokensStateError>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$CommercioAccountPaiwiseWalletStateTearOff {
  const _$CommercioAccountPaiwiseWalletStateTearOff();

  CommercioAccountPaiwiseWalletStateData call(
      {required Wallet wallet, required String walletAddress}) {
    return CommercioAccountPaiwiseWalletStateData(
      wallet: wallet,
      walletAddress: walletAddress,
    );
  }

  CommercioAccountPaiwiseWalletStateInitial initial() {
    return const CommercioAccountPaiwiseWalletStateInitial();
  }

  CommercioAccountPaiwiseWalletStateLoading loading() {
    return const CommercioAccountPaiwiseWalletStateLoading();
  }

  CommercioAccountPaiwiseWalletStateError error([String? error]) {
    return CommercioAccountPaiwiseWalletStateError(
      error,
    );
  }
}

/// @nodoc
const $CommercioAccountPaiwiseWalletState =
    _$CommercioAccountPaiwiseWalletStateTearOff();

/// @nodoc
mixin _$CommercioAccountPaiwiseWalletState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Wallet wallet, String walletAddress) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Wallet wallet, String walletAddress)? $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommercioAccountPaiwiseWalletStateData value) $default, {
    required TResult Function(CommercioAccountPaiwiseWalletStateInitial value)
        initial,
    required TResult Function(CommercioAccountPaiwiseWalletStateLoading value)
        loading,
    required TResult Function(CommercioAccountPaiwiseWalletStateError value)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioAccountPaiwiseWalletStateData value)? $default, {
    TResult Function(CommercioAccountPaiwiseWalletStateInitial value)? initial,
    TResult Function(CommercioAccountPaiwiseWalletStateLoading value)? loading,
    TResult Function(CommercioAccountPaiwiseWalletStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommercioAccountPaiwiseWalletStateCopyWith<$Res> {
  factory $CommercioAccountPaiwiseWalletStateCopyWith(
          CommercioAccountPaiwiseWalletState value,
          $Res Function(CommercioAccountPaiwiseWalletState) then) =
      _$CommercioAccountPaiwiseWalletStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommercioAccountPaiwiseWalletStateCopyWithImpl<$Res>
    implements $CommercioAccountPaiwiseWalletStateCopyWith<$Res> {
  _$CommercioAccountPaiwiseWalletStateCopyWithImpl(this._value, this._then);

  final CommercioAccountPaiwiseWalletState _value;
  // ignore: unused_field
  final $Res Function(CommercioAccountPaiwiseWalletState) _then;
}

/// @nodoc
abstract class $CommercioAccountPaiwiseWalletStateDataCopyWith<$Res> {
  factory $CommercioAccountPaiwiseWalletStateDataCopyWith(
          CommercioAccountPaiwiseWalletStateData value,
          $Res Function(CommercioAccountPaiwiseWalletStateData) then) =
      _$CommercioAccountPaiwiseWalletStateDataCopyWithImpl<$Res>;
  $Res call({Wallet wallet, String walletAddress});
}

/// @nodoc
class _$CommercioAccountPaiwiseWalletStateDataCopyWithImpl<$Res>
    extends _$CommercioAccountPaiwiseWalletStateCopyWithImpl<$Res>
    implements $CommercioAccountPaiwiseWalletStateDataCopyWith<$Res> {
  _$CommercioAccountPaiwiseWalletStateDataCopyWithImpl(
      CommercioAccountPaiwiseWalletStateData _value,
      $Res Function(CommercioAccountPaiwiseWalletStateData) _then)
      : super(
            _value, (v) => _then(v as CommercioAccountPaiwiseWalletStateData));

  @override
  CommercioAccountPaiwiseWalletStateData get _value =>
      super._value as CommercioAccountPaiwiseWalletStateData;

  @override
  $Res call({
    Object? wallet = freezed,
    Object? walletAddress = freezed,
  }) {
    return _then(CommercioAccountPaiwiseWalletStateData(
      wallet: wallet == freezed
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as Wallet,
      walletAddress: walletAddress == freezed
          ? _value.walletAddress
          : walletAddress // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CommercioAccountPaiwiseWalletStateData
    with DiagnosticableTreeMixin
    implements CommercioAccountPaiwiseWalletStateData {
  const _$CommercioAccountPaiwiseWalletStateData(
      {required this.wallet, required this.walletAddress});

  @override
  final Wallet wallet;
  @override
  final String walletAddress;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CommercioAccountPaiwiseWalletState(wallet: $wallet, walletAddress: $walletAddress)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CommercioAccountPaiwiseWalletState'))
      ..add(DiagnosticsProperty('wallet', wallet))
      ..add(DiagnosticsProperty('walletAddress', walletAddress));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioAccountPaiwiseWalletStateData &&
            (identical(other.wallet, wallet) ||
                const DeepCollectionEquality().equals(other.wallet, wallet)) &&
            (identical(other.walletAddress, walletAddress) ||
                const DeepCollectionEquality()
                    .equals(other.walletAddress, walletAddress)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(wallet) ^
      const DeepCollectionEquality().hash(walletAddress);

  @JsonKey(ignore: true)
  @override
  $CommercioAccountPaiwiseWalletStateDataCopyWith<
          CommercioAccountPaiwiseWalletStateData>
      get copyWith => _$CommercioAccountPaiwiseWalletStateDataCopyWithImpl<
          CommercioAccountPaiwiseWalletStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Wallet wallet, String walletAddress) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return $default(wallet, walletAddress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Wallet wallet, String walletAddress)? $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(wallet, walletAddress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommercioAccountPaiwiseWalletStateData value) $default, {
    required TResult Function(CommercioAccountPaiwiseWalletStateInitial value)
        initial,
    required TResult Function(CommercioAccountPaiwiseWalletStateLoading value)
        loading,
    required TResult Function(CommercioAccountPaiwiseWalletStateError value)
        error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioAccountPaiwiseWalletStateData value)? $default, {
    TResult Function(CommercioAccountPaiwiseWalletStateInitial value)? initial,
    TResult Function(CommercioAccountPaiwiseWalletStateLoading value)? loading,
    TResult Function(CommercioAccountPaiwiseWalletStateError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class CommercioAccountPaiwiseWalletStateData
    implements CommercioAccountPaiwiseWalletState {
  const factory CommercioAccountPaiwiseWalletStateData(
          {required Wallet wallet, required String walletAddress}) =
      _$CommercioAccountPaiwiseWalletStateData;

  Wallet get wallet => throw _privateConstructorUsedError;
  String get walletAddress => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommercioAccountPaiwiseWalletStateDataCopyWith<
          CommercioAccountPaiwiseWalletStateData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommercioAccountPaiwiseWalletStateInitialCopyWith<$Res> {
  factory $CommercioAccountPaiwiseWalletStateInitialCopyWith(
          CommercioAccountPaiwiseWalletStateInitial value,
          $Res Function(CommercioAccountPaiwiseWalletStateInitial) then) =
      _$CommercioAccountPaiwiseWalletStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommercioAccountPaiwiseWalletStateInitialCopyWithImpl<$Res>
    extends _$CommercioAccountPaiwiseWalletStateCopyWithImpl<$Res>
    implements $CommercioAccountPaiwiseWalletStateInitialCopyWith<$Res> {
  _$CommercioAccountPaiwiseWalletStateInitialCopyWithImpl(
      CommercioAccountPaiwiseWalletStateInitial _value,
      $Res Function(CommercioAccountPaiwiseWalletStateInitial) _then)
      : super(_value,
            (v) => _then(v as CommercioAccountPaiwiseWalletStateInitial));

  @override
  CommercioAccountPaiwiseWalletStateInitial get _value =>
      super._value as CommercioAccountPaiwiseWalletStateInitial;
}

/// @nodoc

class _$CommercioAccountPaiwiseWalletStateInitial
    with DiagnosticableTreeMixin
    implements CommercioAccountPaiwiseWalletStateInitial {
  const _$CommercioAccountPaiwiseWalletStateInitial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CommercioAccountPaiwiseWalletState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'CommercioAccountPaiwiseWalletState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioAccountPaiwiseWalletStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Wallet wallet, String walletAddress) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Wallet wallet, String walletAddress)? $default, {
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
    TResult Function(CommercioAccountPaiwiseWalletStateData value) $default, {
    required TResult Function(CommercioAccountPaiwiseWalletStateInitial value)
        initial,
    required TResult Function(CommercioAccountPaiwiseWalletStateLoading value)
        loading,
    required TResult Function(CommercioAccountPaiwiseWalletStateError value)
        error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioAccountPaiwiseWalletStateData value)? $default, {
    TResult Function(CommercioAccountPaiwiseWalletStateInitial value)? initial,
    TResult Function(CommercioAccountPaiwiseWalletStateLoading value)? loading,
    TResult Function(CommercioAccountPaiwiseWalletStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CommercioAccountPaiwiseWalletStateInitial
    implements CommercioAccountPaiwiseWalletState {
  const factory CommercioAccountPaiwiseWalletStateInitial() =
      _$CommercioAccountPaiwiseWalletStateInitial;
}

/// @nodoc
abstract class $CommercioAccountPaiwiseWalletStateLoadingCopyWith<$Res> {
  factory $CommercioAccountPaiwiseWalletStateLoadingCopyWith(
          CommercioAccountPaiwiseWalletStateLoading value,
          $Res Function(CommercioAccountPaiwiseWalletStateLoading) then) =
      _$CommercioAccountPaiwiseWalletStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommercioAccountPaiwiseWalletStateLoadingCopyWithImpl<$Res>
    extends _$CommercioAccountPaiwiseWalletStateCopyWithImpl<$Res>
    implements $CommercioAccountPaiwiseWalletStateLoadingCopyWith<$Res> {
  _$CommercioAccountPaiwiseWalletStateLoadingCopyWithImpl(
      CommercioAccountPaiwiseWalletStateLoading _value,
      $Res Function(CommercioAccountPaiwiseWalletStateLoading) _then)
      : super(_value,
            (v) => _then(v as CommercioAccountPaiwiseWalletStateLoading));

  @override
  CommercioAccountPaiwiseWalletStateLoading get _value =>
      super._value as CommercioAccountPaiwiseWalletStateLoading;
}

/// @nodoc

class _$CommercioAccountPaiwiseWalletStateLoading
    with DiagnosticableTreeMixin
    implements CommercioAccountPaiwiseWalletStateLoading {
  const _$CommercioAccountPaiwiseWalletStateLoading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CommercioAccountPaiwiseWalletState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'CommercioAccountPaiwiseWalletState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioAccountPaiwiseWalletStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Wallet wallet, String walletAddress) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Wallet wallet, String walletAddress)? $default, {
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
    TResult Function(CommercioAccountPaiwiseWalletStateData value) $default, {
    required TResult Function(CommercioAccountPaiwiseWalletStateInitial value)
        initial,
    required TResult Function(CommercioAccountPaiwiseWalletStateLoading value)
        loading,
    required TResult Function(CommercioAccountPaiwiseWalletStateError value)
        error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioAccountPaiwiseWalletStateData value)? $default, {
    TResult Function(CommercioAccountPaiwiseWalletStateInitial value)? initial,
    TResult Function(CommercioAccountPaiwiseWalletStateLoading value)? loading,
    TResult Function(CommercioAccountPaiwiseWalletStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CommercioAccountPaiwiseWalletStateLoading
    implements CommercioAccountPaiwiseWalletState {
  const factory CommercioAccountPaiwiseWalletStateLoading() =
      _$CommercioAccountPaiwiseWalletStateLoading;
}

/// @nodoc
abstract class $CommercioAccountPaiwiseWalletStateErrorCopyWith<$Res> {
  factory $CommercioAccountPaiwiseWalletStateErrorCopyWith(
          CommercioAccountPaiwiseWalletStateError value,
          $Res Function(CommercioAccountPaiwiseWalletStateError) then) =
      _$CommercioAccountPaiwiseWalletStateErrorCopyWithImpl<$Res>;
  $Res call({String? error});
}

/// @nodoc
class _$CommercioAccountPaiwiseWalletStateErrorCopyWithImpl<$Res>
    extends _$CommercioAccountPaiwiseWalletStateCopyWithImpl<$Res>
    implements $CommercioAccountPaiwiseWalletStateErrorCopyWith<$Res> {
  _$CommercioAccountPaiwiseWalletStateErrorCopyWithImpl(
      CommercioAccountPaiwiseWalletStateError _value,
      $Res Function(CommercioAccountPaiwiseWalletStateError) _then)
      : super(
            _value, (v) => _then(v as CommercioAccountPaiwiseWalletStateError));

  @override
  CommercioAccountPaiwiseWalletStateError get _value =>
      super._value as CommercioAccountPaiwiseWalletStateError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(CommercioAccountPaiwiseWalletStateError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CommercioAccountPaiwiseWalletStateError
    with DiagnosticableTreeMixin
    implements CommercioAccountPaiwiseWalletStateError {
  const _$CommercioAccountPaiwiseWalletStateError([this.error]);

  @override
  final String? error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CommercioAccountPaiwiseWalletState.error(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'CommercioAccountPaiwiseWalletState.error'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioAccountPaiwiseWalletStateError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $CommercioAccountPaiwiseWalletStateErrorCopyWith<
          CommercioAccountPaiwiseWalletStateError>
      get copyWith => _$CommercioAccountPaiwiseWalletStateErrorCopyWithImpl<
          CommercioAccountPaiwiseWalletStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Wallet wallet, String walletAddress) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Wallet wallet, String walletAddress)? $default, {
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
    TResult Function(CommercioAccountPaiwiseWalletStateData value) $default, {
    required TResult Function(CommercioAccountPaiwiseWalletStateInitial value)
        initial,
    required TResult Function(CommercioAccountPaiwiseWalletStateLoading value)
        loading,
    required TResult Function(CommercioAccountPaiwiseWalletStateError value)
        error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioAccountPaiwiseWalletStateData value)? $default, {
    TResult Function(CommercioAccountPaiwiseWalletStateInitial value)? initial,
    TResult Function(CommercioAccountPaiwiseWalletStateLoading value)? loading,
    TResult Function(CommercioAccountPaiwiseWalletStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CommercioAccountPaiwiseWalletStateError
    implements CommercioAccountPaiwiseWalletState {
  const factory CommercioAccountPaiwiseWalletStateError([String? error]) =
      _$CommercioAccountPaiwiseWalletStateError;

  String? get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommercioAccountPaiwiseWalletStateErrorCopyWith<
          CommercioAccountPaiwiseWalletStateError>
      get copyWith => throw _privateConstructorUsedError;
}
