// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'commercio_account_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$CommercioAccountGenerateWalletStateTearOff {
  const _$CommercioAccountGenerateWalletStateTearOff();

// ignore: unused_element
  CommercioAccountGenerateWalletData call(
      {@required String mnemonic,
      @required Wallet wallet,
      @required String walletAddress}) {
    return CommercioAccountGenerateWalletData(
      mnemonic: mnemonic,
      wallet: wallet,
      walletAddress: walletAddress,
    );
  }

// ignore: unused_element
  CommercioAccountGenerateWalletInitial initial() {
    return const CommercioAccountGenerateWalletInitial();
  }

// ignore: unused_element
  CommercioAccountGenerateWalletLoading loading() {
    return const CommercioAccountGenerateWalletLoading();
  }

// ignore: unused_element
  CommercioAccountGenerateWalletError error([String error]) {
    return CommercioAccountGenerateWalletError(
      error,
    );
  }
}

// ignore: unused_element
const $CommercioAccountGenerateWalletState =
    _$CommercioAccountGenerateWalletStateTearOff();

mixin _$CommercioAccountGenerateWalletState {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String mnemonic, Wallet wallet, String walletAddress), {
    @required Result initial(),
    @required Result loading(),
    @required Result error(String error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String mnemonic, Wallet wallet, String walletAddress), {
    Result initial(),
    Result loading(),
    Result error(String error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CommercioAccountGenerateWalletData value), {
    @required Result initial(CommercioAccountGenerateWalletInitial value),
    @required Result loading(CommercioAccountGenerateWalletLoading value),
    @required Result error(CommercioAccountGenerateWalletError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CommercioAccountGenerateWalletData value), {
    Result initial(CommercioAccountGenerateWalletInitial value),
    Result loading(CommercioAccountGenerateWalletLoading value),
    Result error(CommercioAccountGenerateWalletError value),
    @required Result orElse(),
  });
}

abstract class $CommercioAccountGenerateWalletStateCopyWith<$Res> {
  factory $CommercioAccountGenerateWalletStateCopyWith(
          CommercioAccountGenerateWalletState value,
          $Res Function(CommercioAccountGenerateWalletState) then) =
      _$CommercioAccountGenerateWalletStateCopyWithImpl<$Res>;
}

class _$CommercioAccountGenerateWalletStateCopyWithImpl<$Res>
    implements $CommercioAccountGenerateWalletStateCopyWith<$Res> {
  _$CommercioAccountGenerateWalletStateCopyWithImpl(this._value, this._then);

  final CommercioAccountGenerateWalletState _value;
  // ignore: unused_field
  final $Res Function(CommercioAccountGenerateWalletState) _then;
}

abstract class $CommercioAccountGenerateWalletDataCopyWith<$Res> {
  factory $CommercioAccountGenerateWalletDataCopyWith(
          CommercioAccountGenerateWalletData value,
          $Res Function(CommercioAccountGenerateWalletData) then) =
      _$CommercioAccountGenerateWalletDataCopyWithImpl<$Res>;
  $Res call({String mnemonic, Wallet wallet, String walletAddress});
}

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
    Object mnemonic = freezed,
    Object wallet = freezed,
    Object walletAddress = freezed,
  }) {
    return _then(CommercioAccountGenerateWalletData(
      mnemonic: mnemonic == freezed ? _value.mnemonic : mnemonic as String,
      wallet: wallet == freezed ? _value.wallet : wallet as Wallet,
      walletAddress: walletAddress == freezed
          ? _value.walletAddress
          : walletAddress as String,
    ));
  }
}

class _$CommercioAccountGenerateWalletData
    implements CommercioAccountGenerateWalletData {
  const _$CommercioAccountGenerateWalletData(
      {@required this.mnemonic,
      @required this.wallet,
      @required this.walletAddress})
      : assert(mnemonic != null),
        assert(wallet != null),
        assert(walletAddress != null);

  @override
  final String mnemonic;
  @override
  final Wallet wallet;
  @override
  final String walletAddress;

  @override
  String toString() {
    return 'CommercioAccountGenerateWalletState(mnemonic: $mnemonic, wallet: $wallet, walletAddress: $walletAddress)';
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

  @override
  $CommercioAccountGenerateWalletDataCopyWith<
          CommercioAccountGenerateWalletData>
      get copyWith => _$CommercioAccountGenerateWalletDataCopyWithImpl<
          CommercioAccountGenerateWalletData>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String mnemonic, Wallet wallet, String walletAddress), {
    @required Result initial(),
    @required Result loading(),
    @required Result error(String error),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return $default(mnemonic, wallet, walletAddress);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String mnemonic, Wallet wallet, String walletAddress), {
    Result initial(),
    Result loading(),
    Result error(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(mnemonic, wallet, walletAddress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CommercioAccountGenerateWalletData value), {
    @required Result initial(CommercioAccountGenerateWalletInitial value),
    @required Result loading(CommercioAccountGenerateWalletLoading value),
    @required Result error(CommercioAccountGenerateWalletError value),
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
    Result $default(CommercioAccountGenerateWalletData value), {
    Result initial(CommercioAccountGenerateWalletInitial value),
    Result loading(CommercioAccountGenerateWalletLoading value),
    Result error(CommercioAccountGenerateWalletError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class CommercioAccountGenerateWalletData
    implements CommercioAccountGenerateWalletState {
  const factory CommercioAccountGenerateWalletData(
      {@required String mnemonic,
      @required Wallet wallet,
      @required String walletAddress}) = _$CommercioAccountGenerateWalletData;

  String get mnemonic;
  Wallet get wallet;
  String get walletAddress;
  $CommercioAccountGenerateWalletDataCopyWith<
      CommercioAccountGenerateWalletData> get copyWith;
}

abstract class $CommercioAccountGenerateWalletInitialCopyWith<$Res> {
  factory $CommercioAccountGenerateWalletInitialCopyWith(
          CommercioAccountGenerateWalletInitial value,
          $Res Function(CommercioAccountGenerateWalletInitial) then) =
      _$CommercioAccountGenerateWalletInitialCopyWithImpl<$Res>;
}

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

class _$CommercioAccountGenerateWalletInitial
    implements CommercioAccountGenerateWalletInitial {
  const _$CommercioAccountGenerateWalletInitial();

  @override
  String toString() {
    return 'CommercioAccountGenerateWalletState.initial()';
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
  Result when<Result extends Object>(
    Result $default(String mnemonic, Wallet wallet, String walletAddress), {
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
    Result $default(String mnemonic, Wallet wallet, String walletAddress), {
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
    Result $default(CommercioAccountGenerateWalletData value), {
    @required Result initial(CommercioAccountGenerateWalletInitial value),
    @required Result loading(CommercioAccountGenerateWalletLoading value),
    @required Result error(CommercioAccountGenerateWalletError value),
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
    Result $default(CommercioAccountGenerateWalletData value), {
    Result initial(CommercioAccountGenerateWalletInitial value),
    Result loading(CommercioAccountGenerateWalletLoading value),
    Result error(CommercioAccountGenerateWalletError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
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

abstract class $CommercioAccountGenerateWalletLoadingCopyWith<$Res> {
  factory $CommercioAccountGenerateWalletLoadingCopyWith(
          CommercioAccountGenerateWalletLoading value,
          $Res Function(CommercioAccountGenerateWalletLoading) then) =
      _$CommercioAccountGenerateWalletLoadingCopyWithImpl<$Res>;
}

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

class _$CommercioAccountGenerateWalletLoading
    implements CommercioAccountGenerateWalletLoading {
  const _$CommercioAccountGenerateWalletLoading();

  @override
  String toString() {
    return 'CommercioAccountGenerateWalletState.loading()';
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
  Result when<Result extends Object>(
    Result $default(String mnemonic, Wallet wallet, String walletAddress), {
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
    Result $default(String mnemonic, Wallet wallet, String walletAddress), {
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
    Result $default(CommercioAccountGenerateWalletData value), {
    @required Result initial(CommercioAccountGenerateWalletInitial value),
    @required Result loading(CommercioAccountGenerateWalletLoading value),
    @required Result error(CommercioAccountGenerateWalletError value),
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
    Result $default(CommercioAccountGenerateWalletData value), {
    Result initial(CommercioAccountGenerateWalletInitial value),
    Result loading(CommercioAccountGenerateWalletLoading value),
    Result error(CommercioAccountGenerateWalletError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
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

abstract class $CommercioAccountGenerateWalletErrorCopyWith<$Res> {
  factory $CommercioAccountGenerateWalletErrorCopyWith(
          CommercioAccountGenerateWalletError value,
          $Res Function(CommercioAccountGenerateWalletError) then) =
      _$CommercioAccountGenerateWalletErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

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
    Object error = freezed,
  }) {
    return _then(CommercioAccountGenerateWalletError(
      error == freezed ? _value.error : error as String,
    ));
  }
}

class _$CommercioAccountGenerateWalletError
    implements CommercioAccountGenerateWalletError {
  const _$CommercioAccountGenerateWalletError([this.error]);

  @override
  final String error;

  @override
  String toString() {
    return 'CommercioAccountGenerateWalletState.error(error: $error)';
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

  @override
  $CommercioAccountGenerateWalletErrorCopyWith<
          CommercioAccountGenerateWalletError>
      get copyWith => _$CommercioAccountGenerateWalletErrorCopyWithImpl<
          CommercioAccountGenerateWalletError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String mnemonic, Wallet wallet, String walletAddress), {
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
    Result $default(String mnemonic, Wallet wallet, String walletAddress), {
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
    Result $default(CommercioAccountGenerateWalletData value), {
    @required Result initial(CommercioAccountGenerateWalletInitial value),
    @required Result loading(CommercioAccountGenerateWalletLoading value),
    @required Result error(CommercioAccountGenerateWalletError value),
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
    Result $default(CommercioAccountGenerateWalletData value), {
    Result initial(CommercioAccountGenerateWalletInitial value),
    Result loading(CommercioAccountGenerateWalletLoading value),
    Result error(CommercioAccountGenerateWalletError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CommercioAccountGenerateWalletError
    implements CommercioAccountGenerateWalletState {
  const factory CommercioAccountGenerateWalletError([String error]) =
      _$CommercioAccountGenerateWalletError;

  String get error;
  $CommercioAccountGenerateWalletErrorCopyWith<
      CommercioAccountGenerateWalletError> get copyWith;
}

class _$CommercioAccountRestoredWalletStateTearOff {
  const _$CommercioAccountRestoredWalletStateTearOff();

// ignore: unused_element
  CommercioAccountRestoredWalletStateData call(
      {@required String mnemonic,
      @required Wallet wallet,
      @required String walletAddress}) {
    return CommercioAccountRestoredWalletStateData(
      mnemonic: mnemonic,
      wallet: wallet,
      walletAddress: walletAddress,
    );
  }

// ignore: unused_element
  CommercioAccountRestoredWalletStateInitial initial() {
    return const CommercioAccountRestoredWalletStateInitial();
  }

// ignore: unused_element
  CommercioAccountRestoredWalletStateLoading loading() {
    return const CommercioAccountRestoredWalletStateLoading();
  }

// ignore: unused_element
  CommercioAccountRestoredWalletStateError error([String error]) {
    return CommercioAccountRestoredWalletStateError(
      error,
    );
  }
}

// ignore: unused_element
const $CommercioAccountRestoredWalletState =
    _$CommercioAccountRestoredWalletStateTearOff();

mixin _$CommercioAccountRestoredWalletState {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String mnemonic, Wallet wallet, String walletAddress), {
    @required Result initial(),
    @required Result loading(),
    @required Result error(String error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String mnemonic, Wallet wallet, String walletAddress), {
    Result initial(),
    Result loading(),
    Result error(String error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CommercioAccountRestoredWalletStateData value), {
    @required Result initial(CommercioAccountRestoredWalletStateInitial value),
    @required Result loading(CommercioAccountRestoredWalletStateLoading value),
    @required Result error(CommercioAccountRestoredWalletStateError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CommercioAccountRestoredWalletStateData value), {
    Result initial(CommercioAccountRestoredWalletStateInitial value),
    Result loading(CommercioAccountRestoredWalletStateLoading value),
    Result error(CommercioAccountRestoredWalletStateError value),
    @required Result orElse(),
  });
}

abstract class $CommercioAccountRestoredWalletStateCopyWith<$Res> {
  factory $CommercioAccountRestoredWalletStateCopyWith(
          CommercioAccountRestoredWalletState value,
          $Res Function(CommercioAccountRestoredWalletState) then) =
      _$CommercioAccountRestoredWalletStateCopyWithImpl<$Res>;
}

class _$CommercioAccountRestoredWalletStateCopyWithImpl<$Res>
    implements $CommercioAccountRestoredWalletStateCopyWith<$Res> {
  _$CommercioAccountRestoredWalletStateCopyWithImpl(this._value, this._then);

  final CommercioAccountRestoredWalletState _value;
  // ignore: unused_field
  final $Res Function(CommercioAccountRestoredWalletState) _then;
}

abstract class $CommercioAccountRestoredWalletStateDataCopyWith<$Res> {
  factory $CommercioAccountRestoredWalletStateDataCopyWith(
          CommercioAccountRestoredWalletStateData value,
          $Res Function(CommercioAccountRestoredWalletStateData) then) =
      _$CommercioAccountRestoredWalletStateDataCopyWithImpl<$Res>;
  $Res call({String mnemonic, Wallet wallet, String walletAddress});
}

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
    Object mnemonic = freezed,
    Object wallet = freezed,
    Object walletAddress = freezed,
  }) {
    return _then(CommercioAccountRestoredWalletStateData(
      mnemonic: mnemonic == freezed ? _value.mnemonic : mnemonic as String,
      wallet: wallet == freezed ? _value.wallet : wallet as Wallet,
      walletAddress: walletAddress == freezed
          ? _value.walletAddress
          : walletAddress as String,
    ));
  }
}

class _$CommercioAccountRestoredWalletStateData
    implements CommercioAccountRestoredWalletStateData {
  const _$CommercioAccountRestoredWalletStateData(
      {@required this.mnemonic,
      @required this.wallet,
      @required this.walletAddress})
      : assert(mnemonic != null),
        assert(wallet != null),
        assert(walletAddress != null);

  @override
  final String mnemonic;
  @override
  final Wallet wallet;
  @override
  final String walletAddress;

  @override
  String toString() {
    return 'CommercioAccountRestoredWalletState(mnemonic: $mnemonic, wallet: $wallet, walletAddress: $walletAddress)';
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

  @override
  $CommercioAccountRestoredWalletStateDataCopyWith<
          CommercioAccountRestoredWalletStateData>
      get copyWith => _$CommercioAccountRestoredWalletStateDataCopyWithImpl<
          CommercioAccountRestoredWalletStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String mnemonic, Wallet wallet, String walletAddress), {
    @required Result initial(),
    @required Result loading(),
    @required Result error(String error),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return $default(mnemonic, wallet, walletAddress);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String mnemonic, Wallet wallet, String walletAddress), {
    Result initial(),
    Result loading(),
    Result error(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(mnemonic, wallet, walletAddress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CommercioAccountRestoredWalletStateData value), {
    @required Result initial(CommercioAccountRestoredWalletStateInitial value),
    @required Result loading(CommercioAccountRestoredWalletStateLoading value),
    @required Result error(CommercioAccountRestoredWalletStateError value),
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
    Result $default(CommercioAccountRestoredWalletStateData value), {
    Result initial(CommercioAccountRestoredWalletStateInitial value),
    Result loading(CommercioAccountRestoredWalletStateLoading value),
    Result error(CommercioAccountRestoredWalletStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class CommercioAccountRestoredWalletStateData
    implements CommercioAccountRestoredWalletState {
  const factory CommercioAccountRestoredWalletStateData(
          {@required String mnemonic,
          @required Wallet wallet,
          @required String walletAddress}) =
      _$CommercioAccountRestoredWalletStateData;

  String get mnemonic;
  Wallet get wallet;
  String get walletAddress;
  $CommercioAccountRestoredWalletStateDataCopyWith<
      CommercioAccountRestoredWalletStateData> get copyWith;
}

abstract class $CommercioAccountRestoredWalletStateInitialCopyWith<$Res> {
  factory $CommercioAccountRestoredWalletStateInitialCopyWith(
          CommercioAccountRestoredWalletStateInitial value,
          $Res Function(CommercioAccountRestoredWalletStateInitial) then) =
      _$CommercioAccountRestoredWalletStateInitialCopyWithImpl<$Res>;
}

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

class _$CommercioAccountRestoredWalletStateInitial
    implements CommercioAccountRestoredWalletStateInitial {
  const _$CommercioAccountRestoredWalletStateInitial();

  @override
  String toString() {
    return 'CommercioAccountRestoredWalletState.initial()';
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
  Result when<Result extends Object>(
    Result $default(String mnemonic, Wallet wallet, String walletAddress), {
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
    Result $default(String mnemonic, Wallet wallet, String walletAddress), {
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
    Result $default(CommercioAccountRestoredWalletStateData value), {
    @required Result initial(CommercioAccountRestoredWalletStateInitial value),
    @required Result loading(CommercioAccountRestoredWalletStateLoading value),
    @required Result error(CommercioAccountRestoredWalletStateError value),
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
    Result $default(CommercioAccountRestoredWalletStateData value), {
    Result initial(CommercioAccountRestoredWalletStateInitial value),
    Result loading(CommercioAccountRestoredWalletStateLoading value),
    Result error(CommercioAccountRestoredWalletStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
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

abstract class $CommercioAccountRestoredWalletStateLoadingCopyWith<$Res> {
  factory $CommercioAccountRestoredWalletStateLoadingCopyWith(
          CommercioAccountRestoredWalletStateLoading value,
          $Res Function(CommercioAccountRestoredWalletStateLoading) then) =
      _$CommercioAccountRestoredWalletStateLoadingCopyWithImpl<$Res>;
}

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

class _$CommercioAccountRestoredWalletStateLoading
    implements CommercioAccountRestoredWalletStateLoading {
  const _$CommercioAccountRestoredWalletStateLoading();

  @override
  String toString() {
    return 'CommercioAccountRestoredWalletState.loading()';
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
  Result when<Result extends Object>(
    Result $default(String mnemonic, Wallet wallet, String walletAddress), {
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
    Result $default(String mnemonic, Wallet wallet, String walletAddress), {
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
    Result $default(CommercioAccountRestoredWalletStateData value), {
    @required Result initial(CommercioAccountRestoredWalletStateInitial value),
    @required Result loading(CommercioAccountRestoredWalletStateLoading value),
    @required Result error(CommercioAccountRestoredWalletStateError value),
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
    Result $default(CommercioAccountRestoredWalletStateData value), {
    Result initial(CommercioAccountRestoredWalletStateInitial value),
    Result loading(CommercioAccountRestoredWalletStateLoading value),
    Result error(CommercioAccountRestoredWalletStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
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

abstract class $CommercioAccountRestoredWalletStateErrorCopyWith<$Res> {
  factory $CommercioAccountRestoredWalletStateErrorCopyWith(
          CommercioAccountRestoredWalletStateError value,
          $Res Function(CommercioAccountRestoredWalletStateError) then) =
      _$CommercioAccountRestoredWalletStateErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

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
    Object error = freezed,
  }) {
    return _then(CommercioAccountRestoredWalletStateError(
      error == freezed ? _value.error : error as String,
    ));
  }
}

class _$CommercioAccountRestoredWalletStateError
    implements CommercioAccountRestoredWalletStateError {
  const _$CommercioAccountRestoredWalletStateError([this.error]);

  @override
  final String error;

  @override
  String toString() {
    return 'CommercioAccountRestoredWalletState.error(error: $error)';
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

  @override
  $CommercioAccountRestoredWalletStateErrorCopyWith<
          CommercioAccountRestoredWalletStateError>
      get copyWith => _$CommercioAccountRestoredWalletStateErrorCopyWithImpl<
          CommercioAccountRestoredWalletStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String mnemonic, Wallet wallet, String walletAddress), {
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
    Result $default(String mnemonic, Wallet wallet, String walletAddress), {
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
    Result $default(CommercioAccountRestoredWalletStateData value), {
    @required Result initial(CommercioAccountRestoredWalletStateInitial value),
    @required Result loading(CommercioAccountRestoredWalletStateLoading value),
    @required Result error(CommercioAccountRestoredWalletStateError value),
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
    Result $default(CommercioAccountRestoredWalletStateData value), {
    Result initial(CommercioAccountRestoredWalletStateInitial value),
    Result loading(CommercioAccountRestoredWalletStateLoading value),
    Result error(CommercioAccountRestoredWalletStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CommercioAccountRestoredWalletStateError
    implements CommercioAccountRestoredWalletState {
  const factory CommercioAccountRestoredWalletStateError([String error]) =
      _$CommercioAccountRestoredWalletStateError;

  String get error;
  $CommercioAccountRestoredWalletStateErrorCopyWith<
      CommercioAccountRestoredWalletStateError> get copyWith;
}

class _$CommercioAccountQrStateTearOff {
  const _$CommercioAccountQrStateTearOff();

// ignore: unused_element
  CommercioAccountQrStateData call({@required String walletAddress}) {
    return CommercioAccountQrStateData(
      walletAddress: walletAddress,
    );
  }

// ignore: unused_element
  CommercioAccountQrStateInitial initial() {
    return const CommercioAccountQrStateInitial();
  }

// ignore: unused_element
  CommercioAccountQrStateLoading loading() {
    return const CommercioAccountQrStateLoading();
  }

// ignore: unused_element
  CommercioAccountQrStateError error([String error]) {
    return CommercioAccountQrStateError(
      error,
    );
  }
}

// ignore: unused_element
const $CommercioAccountQrState = _$CommercioAccountQrStateTearOff();

mixin _$CommercioAccountQrState {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String walletAddress), {
    @required Result initial(),
    @required Result loading(),
    @required Result error(String error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String walletAddress), {
    Result initial(),
    Result loading(),
    Result error(String error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CommercioAccountQrStateData value), {
    @required Result initial(CommercioAccountQrStateInitial value),
    @required Result loading(CommercioAccountQrStateLoading value),
    @required Result error(CommercioAccountQrStateError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CommercioAccountQrStateData value), {
    Result initial(CommercioAccountQrStateInitial value),
    Result loading(CommercioAccountQrStateLoading value),
    Result error(CommercioAccountQrStateError value),
    @required Result orElse(),
  });
}

abstract class $CommercioAccountQrStateCopyWith<$Res> {
  factory $CommercioAccountQrStateCopyWith(CommercioAccountQrState value,
          $Res Function(CommercioAccountQrState) then) =
      _$CommercioAccountQrStateCopyWithImpl<$Res>;
}

class _$CommercioAccountQrStateCopyWithImpl<$Res>
    implements $CommercioAccountQrStateCopyWith<$Res> {
  _$CommercioAccountQrStateCopyWithImpl(this._value, this._then);

  final CommercioAccountQrState _value;
  // ignore: unused_field
  final $Res Function(CommercioAccountQrState) _then;
}

abstract class $CommercioAccountQrStateDataCopyWith<$Res> {
  factory $CommercioAccountQrStateDataCopyWith(
          CommercioAccountQrStateData value,
          $Res Function(CommercioAccountQrStateData) then) =
      _$CommercioAccountQrStateDataCopyWithImpl<$Res>;
  $Res call({String walletAddress});
}

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
    Object walletAddress = freezed,
  }) {
    return _then(CommercioAccountQrStateData(
      walletAddress: walletAddress == freezed
          ? _value.walletAddress
          : walletAddress as String,
    ));
  }
}

class _$CommercioAccountQrStateData implements CommercioAccountQrStateData {
  const _$CommercioAccountQrStateData({@required this.walletAddress})
      : assert(walletAddress != null);

  @override
  final String walletAddress;

  @override
  String toString() {
    return 'CommercioAccountQrState(walletAddress: $walletAddress)';
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

  @override
  $CommercioAccountQrStateDataCopyWith<CommercioAccountQrStateData>
      get copyWith => _$CommercioAccountQrStateDataCopyWithImpl<
          CommercioAccountQrStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String walletAddress), {
    @required Result initial(),
    @required Result loading(),
    @required Result error(String error),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return $default(walletAddress);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String walletAddress), {
    Result initial(),
    Result loading(),
    Result error(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(walletAddress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CommercioAccountQrStateData value), {
    @required Result initial(CommercioAccountQrStateInitial value),
    @required Result loading(CommercioAccountQrStateLoading value),
    @required Result error(CommercioAccountQrStateError value),
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
    Result $default(CommercioAccountQrStateData value), {
    Result initial(CommercioAccountQrStateInitial value),
    Result loading(CommercioAccountQrStateLoading value),
    Result error(CommercioAccountQrStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class CommercioAccountQrStateData implements CommercioAccountQrState {
  const factory CommercioAccountQrStateData({@required String walletAddress}) =
      _$CommercioAccountQrStateData;

  String get walletAddress;
  $CommercioAccountQrStateDataCopyWith<CommercioAccountQrStateData>
      get copyWith;
}

abstract class $CommercioAccountQrStateInitialCopyWith<$Res> {
  factory $CommercioAccountQrStateInitialCopyWith(
          CommercioAccountQrStateInitial value,
          $Res Function(CommercioAccountQrStateInitial) then) =
      _$CommercioAccountQrStateInitialCopyWithImpl<$Res>;
}

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

class _$CommercioAccountQrStateInitial
    implements CommercioAccountQrStateInitial {
  const _$CommercioAccountQrStateInitial();

  @override
  String toString() {
    return 'CommercioAccountQrState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CommercioAccountQrStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String walletAddress), {
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
    Result $default(String walletAddress), {
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
    Result $default(CommercioAccountQrStateData value), {
    @required Result initial(CommercioAccountQrStateInitial value),
    @required Result loading(CommercioAccountQrStateLoading value),
    @required Result error(CommercioAccountQrStateError value),
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
    Result $default(CommercioAccountQrStateData value), {
    Result initial(CommercioAccountQrStateInitial value),
    Result loading(CommercioAccountQrStateLoading value),
    Result error(CommercioAccountQrStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
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

abstract class $CommercioAccountQrStateLoadingCopyWith<$Res> {
  factory $CommercioAccountQrStateLoadingCopyWith(
          CommercioAccountQrStateLoading value,
          $Res Function(CommercioAccountQrStateLoading) then) =
      _$CommercioAccountQrStateLoadingCopyWithImpl<$Res>;
}

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

class _$CommercioAccountQrStateLoading
    implements CommercioAccountQrStateLoading {
  const _$CommercioAccountQrStateLoading();

  @override
  String toString() {
    return 'CommercioAccountQrState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CommercioAccountQrStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String walletAddress), {
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
    Result $default(String walletAddress), {
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
    Result $default(CommercioAccountQrStateData value), {
    @required Result initial(CommercioAccountQrStateInitial value),
    @required Result loading(CommercioAccountQrStateLoading value),
    @required Result error(CommercioAccountQrStateError value),
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
    Result $default(CommercioAccountQrStateData value), {
    Result initial(CommercioAccountQrStateInitial value),
    Result loading(CommercioAccountQrStateLoading value),
    Result error(CommercioAccountQrStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
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

abstract class $CommercioAccountQrStateErrorCopyWith<$Res> {
  factory $CommercioAccountQrStateErrorCopyWith(
          CommercioAccountQrStateError value,
          $Res Function(CommercioAccountQrStateError) then) =
      _$CommercioAccountQrStateErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

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
    Object error = freezed,
  }) {
    return _then(CommercioAccountQrStateError(
      error == freezed ? _value.error : error as String,
    ));
  }
}

class _$CommercioAccountQrStateError implements CommercioAccountQrStateError {
  const _$CommercioAccountQrStateError([this.error]);

  @override
  final String error;

  @override
  String toString() {
    return 'CommercioAccountQrState.error(error: $error)';
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

  @override
  $CommercioAccountQrStateErrorCopyWith<CommercioAccountQrStateError>
      get copyWith => _$CommercioAccountQrStateErrorCopyWithImpl<
          CommercioAccountQrStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String walletAddress), {
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
    Result $default(String walletAddress), {
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
    Result $default(CommercioAccountQrStateData value), {
    @required Result initial(CommercioAccountQrStateInitial value),
    @required Result loading(CommercioAccountQrStateLoading value),
    @required Result error(CommercioAccountQrStateError value),
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
    Result $default(CommercioAccountQrStateData value), {
    Result initial(CommercioAccountQrStateInitial value),
    Result loading(CommercioAccountQrStateLoading value),
    Result error(CommercioAccountQrStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CommercioAccountQrStateError implements CommercioAccountQrState {
  const factory CommercioAccountQrStateError([String error]) =
      _$CommercioAccountQrStateError;

  String get error;
  $CommercioAccountQrStateErrorCopyWith<CommercioAccountQrStateError>
      get copyWith;
}

class _$CommercioAccountFreeTokensStateTearOff {
  const _$CommercioAccountFreeTokensStateTearOff();

// ignore: unused_element
  CommercioAccountFreeTokensStateData call(
      {@required AccountRequestResponse accountRequestResponse}) {
    return CommercioAccountFreeTokensStateData(
      accountRequestResponse: accountRequestResponse,
    );
  }

// ignore: unused_element
  CommercioAccountFreeTokensStateInitial initial() {
    return const CommercioAccountFreeTokensStateInitial();
  }

// ignore: unused_element
  CommercioAccountFreeTokensStateLoading loading() {
    return const CommercioAccountFreeTokensStateLoading();
  }

// ignore: unused_element
  CommercioAccountFreeTokensStateError error([String error]) {
    return CommercioAccountFreeTokensStateError(
      error,
    );
  }
}

// ignore: unused_element
const $CommercioAccountFreeTokensState =
    _$CommercioAccountFreeTokensStateTearOff();

mixin _$CommercioAccountFreeTokensState {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(AccountRequestResponse accountRequestResponse), {
    @required Result initial(),
    @required Result loading(),
    @required Result error(String error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(AccountRequestResponse accountRequestResponse), {
    Result initial(),
    Result loading(),
    Result error(String error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CommercioAccountFreeTokensStateData value), {
    @required Result initial(CommercioAccountFreeTokensStateInitial value),
    @required Result loading(CommercioAccountFreeTokensStateLoading value),
    @required Result error(CommercioAccountFreeTokensStateError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CommercioAccountFreeTokensStateData value), {
    Result initial(CommercioAccountFreeTokensStateInitial value),
    Result loading(CommercioAccountFreeTokensStateLoading value),
    Result error(CommercioAccountFreeTokensStateError value),
    @required Result orElse(),
  });
}

abstract class $CommercioAccountFreeTokensStateCopyWith<$Res> {
  factory $CommercioAccountFreeTokensStateCopyWith(
          CommercioAccountFreeTokensState value,
          $Res Function(CommercioAccountFreeTokensState) then) =
      _$CommercioAccountFreeTokensStateCopyWithImpl<$Res>;
}

class _$CommercioAccountFreeTokensStateCopyWithImpl<$Res>
    implements $CommercioAccountFreeTokensStateCopyWith<$Res> {
  _$CommercioAccountFreeTokensStateCopyWithImpl(this._value, this._then);

  final CommercioAccountFreeTokensState _value;
  // ignore: unused_field
  final $Res Function(CommercioAccountFreeTokensState) _then;
}

abstract class $CommercioAccountFreeTokensStateDataCopyWith<$Res> {
  factory $CommercioAccountFreeTokensStateDataCopyWith(
          CommercioAccountFreeTokensStateData value,
          $Res Function(CommercioAccountFreeTokensStateData) then) =
      _$CommercioAccountFreeTokensStateDataCopyWithImpl<$Res>;
  $Res call({AccountRequestResponse accountRequestResponse});
}

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
    Object accountRequestResponse = freezed,
  }) {
    return _then(CommercioAccountFreeTokensStateData(
      accountRequestResponse: accountRequestResponse == freezed
          ? _value.accountRequestResponse
          : accountRequestResponse as AccountRequestResponse,
    ));
  }
}

class _$CommercioAccountFreeTokensStateData
    implements CommercioAccountFreeTokensStateData {
  const _$CommercioAccountFreeTokensStateData(
      {@required this.accountRequestResponse})
      : assert(accountRequestResponse != null);

  @override
  final AccountRequestResponse accountRequestResponse;

  @override
  String toString() {
    return 'CommercioAccountFreeTokensState(accountRequestResponse: $accountRequestResponse)';
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

  @override
  $CommercioAccountFreeTokensStateDataCopyWith<
          CommercioAccountFreeTokensStateData>
      get copyWith => _$CommercioAccountFreeTokensStateDataCopyWithImpl<
          CommercioAccountFreeTokensStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(AccountRequestResponse accountRequestResponse), {
    @required Result initial(),
    @required Result loading(),
    @required Result error(String error),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return $default(accountRequestResponse);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(AccountRequestResponse accountRequestResponse), {
    Result initial(),
    Result loading(),
    Result error(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(accountRequestResponse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CommercioAccountFreeTokensStateData value), {
    @required Result initial(CommercioAccountFreeTokensStateInitial value),
    @required Result loading(CommercioAccountFreeTokensStateLoading value),
    @required Result error(CommercioAccountFreeTokensStateError value),
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
    Result $default(CommercioAccountFreeTokensStateData value), {
    Result initial(CommercioAccountFreeTokensStateInitial value),
    Result loading(CommercioAccountFreeTokensStateLoading value),
    Result error(CommercioAccountFreeTokensStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class CommercioAccountFreeTokensStateData
    implements CommercioAccountFreeTokensState {
  const factory CommercioAccountFreeTokensStateData(
          {@required AccountRequestResponse accountRequestResponse}) =
      _$CommercioAccountFreeTokensStateData;

  AccountRequestResponse get accountRequestResponse;
  $CommercioAccountFreeTokensStateDataCopyWith<
      CommercioAccountFreeTokensStateData> get copyWith;
}

abstract class $CommercioAccountFreeTokensStateInitialCopyWith<$Res> {
  factory $CommercioAccountFreeTokensStateInitialCopyWith(
          CommercioAccountFreeTokensStateInitial value,
          $Res Function(CommercioAccountFreeTokensStateInitial) then) =
      _$CommercioAccountFreeTokensStateInitialCopyWithImpl<$Res>;
}

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

class _$CommercioAccountFreeTokensStateInitial
    implements CommercioAccountFreeTokensStateInitial {
  const _$CommercioAccountFreeTokensStateInitial();

  @override
  String toString() {
    return 'CommercioAccountFreeTokensState.initial()';
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
  Result when<Result extends Object>(
    Result $default(AccountRequestResponse accountRequestResponse), {
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
    Result $default(AccountRequestResponse accountRequestResponse), {
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
    Result $default(CommercioAccountFreeTokensStateData value), {
    @required Result initial(CommercioAccountFreeTokensStateInitial value),
    @required Result loading(CommercioAccountFreeTokensStateLoading value),
    @required Result error(CommercioAccountFreeTokensStateError value),
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
    Result $default(CommercioAccountFreeTokensStateData value), {
    Result initial(CommercioAccountFreeTokensStateInitial value),
    Result loading(CommercioAccountFreeTokensStateLoading value),
    Result error(CommercioAccountFreeTokensStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
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

abstract class $CommercioAccountFreeTokensStateLoadingCopyWith<$Res> {
  factory $CommercioAccountFreeTokensStateLoadingCopyWith(
          CommercioAccountFreeTokensStateLoading value,
          $Res Function(CommercioAccountFreeTokensStateLoading) then) =
      _$CommercioAccountFreeTokensStateLoadingCopyWithImpl<$Res>;
}

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

class _$CommercioAccountFreeTokensStateLoading
    implements CommercioAccountFreeTokensStateLoading {
  const _$CommercioAccountFreeTokensStateLoading();

  @override
  String toString() {
    return 'CommercioAccountFreeTokensState.loading()';
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
  Result when<Result extends Object>(
    Result $default(AccountRequestResponse accountRequestResponse), {
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
    Result $default(AccountRequestResponse accountRequestResponse), {
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
    Result $default(CommercioAccountFreeTokensStateData value), {
    @required Result initial(CommercioAccountFreeTokensStateInitial value),
    @required Result loading(CommercioAccountFreeTokensStateLoading value),
    @required Result error(CommercioAccountFreeTokensStateError value),
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
    Result $default(CommercioAccountFreeTokensStateData value), {
    Result initial(CommercioAccountFreeTokensStateInitial value),
    Result loading(CommercioAccountFreeTokensStateLoading value),
    Result error(CommercioAccountFreeTokensStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
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

abstract class $CommercioAccountFreeTokensStateErrorCopyWith<$Res> {
  factory $CommercioAccountFreeTokensStateErrorCopyWith(
          CommercioAccountFreeTokensStateError value,
          $Res Function(CommercioAccountFreeTokensStateError) then) =
      _$CommercioAccountFreeTokensStateErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

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
    Object error = freezed,
  }) {
    return _then(CommercioAccountFreeTokensStateError(
      error == freezed ? _value.error : error as String,
    ));
  }
}

class _$CommercioAccountFreeTokensStateError
    implements CommercioAccountFreeTokensStateError {
  const _$CommercioAccountFreeTokensStateError([this.error]);

  @override
  final String error;

  @override
  String toString() {
    return 'CommercioAccountFreeTokensState.error(error: $error)';
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

  @override
  $CommercioAccountFreeTokensStateErrorCopyWith<
          CommercioAccountFreeTokensStateError>
      get copyWith => _$CommercioAccountFreeTokensStateErrorCopyWithImpl<
          CommercioAccountFreeTokensStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(AccountRequestResponse accountRequestResponse), {
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
    Result $default(AccountRequestResponse accountRequestResponse), {
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
    Result $default(CommercioAccountFreeTokensStateData value), {
    @required Result initial(CommercioAccountFreeTokensStateInitial value),
    @required Result loading(CommercioAccountFreeTokensStateLoading value),
    @required Result error(CommercioAccountFreeTokensStateError value),
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
    Result $default(CommercioAccountFreeTokensStateData value), {
    Result initial(CommercioAccountFreeTokensStateInitial value),
    Result loading(CommercioAccountFreeTokensStateLoading value),
    Result error(CommercioAccountFreeTokensStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CommercioAccountFreeTokensStateError
    implements CommercioAccountFreeTokensState {
  const factory CommercioAccountFreeTokensStateError([String error]) =
      _$CommercioAccountFreeTokensStateError;

  String get error;
  $CommercioAccountFreeTokensStateErrorCopyWith<
      CommercioAccountFreeTokensStateError> get copyWith;
}

class _$CommercioAccountBalanceStateTearOff {
  const _$CommercioAccountBalanceStateTearOff();

// ignore: unused_element
  CommercioAccountBalanceStateData call({@required List<StdCoin> balance}) {
    return CommercioAccountBalanceStateData(
      balance: balance,
    );
  }

// ignore: unused_element
  CommercioAccountBalanceStateInitial initial() {
    return const CommercioAccountBalanceStateInitial();
  }

// ignore: unused_element
  CommercioAccountBalanceStateLoading loading() {
    return const CommercioAccountBalanceStateLoading();
  }

// ignore: unused_element
  CommercioAccountBalanceStateError error([String error]) {
    return CommercioAccountBalanceStateError(
      error,
    );
  }
}

// ignore: unused_element
const $CommercioAccountBalanceState = _$CommercioAccountBalanceStateTearOff();

mixin _$CommercioAccountBalanceState {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(List<StdCoin> balance), {
    @required Result initial(),
    @required Result loading(),
    @required Result error(String error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(List<StdCoin> balance), {
    Result initial(),
    Result loading(),
    Result error(String error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CommercioAccountBalanceStateData value), {
    @required Result initial(CommercioAccountBalanceStateInitial value),
    @required Result loading(CommercioAccountBalanceStateLoading value),
    @required Result error(CommercioAccountBalanceStateError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CommercioAccountBalanceStateData value), {
    Result initial(CommercioAccountBalanceStateInitial value),
    Result loading(CommercioAccountBalanceStateLoading value),
    Result error(CommercioAccountBalanceStateError value),
    @required Result orElse(),
  });
}

abstract class $CommercioAccountBalanceStateCopyWith<$Res> {
  factory $CommercioAccountBalanceStateCopyWith(
          CommercioAccountBalanceState value,
          $Res Function(CommercioAccountBalanceState) then) =
      _$CommercioAccountBalanceStateCopyWithImpl<$Res>;
}

class _$CommercioAccountBalanceStateCopyWithImpl<$Res>
    implements $CommercioAccountBalanceStateCopyWith<$Res> {
  _$CommercioAccountBalanceStateCopyWithImpl(this._value, this._then);

  final CommercioAccountBalanceState _value;
  // ignore: unused_field
  final $Res Function(CommercioAccountBalanceState) _then;
}

abstract class $CommercioAccountBalanceStateDataCopyWith<$Res> {
  factory $CommercioAccountBalanceStateDataCopyWith(
          CommercioAccountBalanceStateData value,
          $Res Function(CommercioAccountBalanceStateData) then) =
      _$CommercioAccountBalanceStateDataCopyWithImpl<$Res>;
  $Res call({List<StdCoin> balance});
}

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
    Object balance = freezed,
  }) {
    return _then(CommercioAccountBalanceStateData(
      balance: balance == freezed ? _value.balance : balance as List<StdCoin>,
    ));
  }
}

class _$CommercioAccountBalanceStateData
    implements CommercioAccountBalanceStateData {
  const _$CommercioAccountBalanceStateData({@required this.balance})
      : assert(balance != null);

  @override
  final List<StdCoin> balance;

  @override
  String toString() {
    return 'CommercioAccountBalanceState(balance: $balance)';
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

  @override
  $CommercioAccountBalanceStateDataCopyWith<CommercioAccountBalanceStateData>
      get copyWith => _$CommercioAccountBalanceStateDataCopyWithImpl<
          CommercioAccountBalanceStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(List<StdCoin> balance), {
    @required Result initial(),
    @required Result loading(),
    @required Result error(String error),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return $default(balance);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(List<StdCoin> balance), {
    Result initial(),
    Result loading(),
    Result error(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(balance);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CommercioAccountBalanceStateData value), {
    @required Result initial(CommercioAccountBalanceStateInitial value),
    @required Result loading(CommercioAccountBalanceStateLoading value),
    @required Result error(CommercioAccountBalanceStateError value),
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
    Result $default(CommercioAccountBalanceStateData value), {
    Result initial(CommercioAccountBalanceStateInitial value),
    Result loading(CommercioAccountBalanceStateLoading value),
    Result error(CommercioAccountBalanceStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class CommercioAccountBalanceStateData
    implements CommercioAccountBalanceState {
  const factory CommercioAccountBalanceStateData(
      {@required List<StdCoin> balance}) = _$CommercioAccountBalanceStateData;

  List<StdCoin> get balance;
  $CommercioAccountBalanceStateDataCopyWith<CommercioAccountBalanceStateData>
      get copyWith;
}

abstract class $CommercioAccountBalanceStateInitialCopyWith<$Res> {
  factory $CommercioAccountBalanceStateInitialCopyWith(
          CommercioAccountBalanceStateInitial value,
          $Res Function(CommercioAccountBalanceStateInitial) then) =
      _$CommercioAccountBalanceStateInitialCopyWithImpl<$Res>;
}

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

class _$CommercioAccountBalanceStateInitial
    implements CommercioAccountBalanceStateInitial {
  const _$CommercioAccountBalanceStateInitial();

  @override
  String toString() {
    return 'CommercioAccountBalanceState.initial()';
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
  Result when<Result extends Object>(
    Result $default(List<StdCoin> balance), {
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
    Result $default(List<StdCoin> balance), {
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
    Result $default(CommercioAccountBalanceStateData value), {
    @required Result initial(CommercioAccountBalanceStateInitial value),
    @required Result loading(CommercioAccountBalanceStateLoading value),
    @required Result error(CommercioAccountBalanceStateError value),
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
    Result $default(CommercioAccountBalanceStateData value), {
    Result initial(CommercioAccountBalanceStateInitial value),
    Result loading(CommercioAccountBalanceStateLoading value),
    Result error(CommercioAccountBalanceStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
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

abstract class $CommercioAccountBalanceStateLoadingCopyWith<$Res> {
  factory $CommercioAccountBalanceStateLoadingCopyWith(
          CommercioAccountBalanceStateLoading value,
          $Res Function(CommercioAccountBalanceStateLoading) then) =
      _$CommercioAccountBalanceStateLoadingCopyWithImpl<$Res>;
}

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

class _$CommercioAccountBalanceStateLoading
    implements CommercioAccountBalanceStateLoading {
  const _$CommercioAccountBalanceStateLoading();

  @override
  String toString() {
    return 'CommercioAccountBalanceState.loading()';
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
  Result when<Result extends Object>(
    Result $default(List<StdCoin> balance), {
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
    Result $default(List<StdCoin> balance), {
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
    Result $default(CommercioAccountBalanceStateData value), {
    @required Result initial(CommercioAccountBalanceStateInitial value),
    @required Result loading(CommercioAccountBalanceStateLoading value),
    @required Result error(CommercioAccountBalanceStateError value),
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
    Result $default(CommercioAccountBalanceStateData value), {
    Result initial(CommercioAccountBalanceStateInitial value),
    Result loading(CommercioAccountBalanceStateLoading value),
    Result error(CommercioAccountBalanceStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
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

abstract class $CommercioAccountBalanceStateErrorCopyWith<$Res> {
  factory $CommercioAccountBalanceStateErrorCopyWith(
          CommercioAccountBalanceStateError value,
          $Res Function(CommercioAccountBalanceStateError) then) =
      _$CommercioAccountBalanceStateErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

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
    Object error = freezed,
  }) {
    return _then(CommercioAccountBalanceStateError(
      error == freezed ? _value.error : error as String,
    ));
  }
}

class _$CommercioAccountBalanceStateError
    implements CommercioAccountBalanceStateError {
  const _$CommercioAccountBalanceStateError([this.error]);

  @override
  final String error;

  @override
  String toString() {
    return 'CommercioAccountBalanceState.error(error: $error)';
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

  @override
  $CommercioAccountBalanceStateErrorCopyWith<CommercioAccountBalanceStateError>
      get copyWith => _$CommercioAccountBalanceStateErrorCopyWithImpl<
          CommercioAccountBalanceStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(List<StdCoin> balance), {
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
    Result $default(List<StdCoin> balance), {
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
    Result $default(CommercioAccountBalanceStateData value), {
    @required Result initial(CommercioAccountBalanceStateInitial value),
    @required Result loading(CommercioAccountBalanceStateLoading value),
    @required Result error(CommercioAccountBalanceStateError value),
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
    Result $default(CommercioAccountBalanceStateData value), {
    Result initial(CommercioAccountBalanceStateInitial value),
    Result loading(CommercioAccountBalanceStateLoading value),
    Result error(CommercioAccountBalanceStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CommercioAccountBalanceStateError
    implements CommercioAccountBalanceState {
  const factory CommercioAccountBalanceStateError([String error]) =
      _$CommercioAccountBalanceStateError;

  String get error;
  $CommercioAccountBalanceStateErrorCopyWith<CommercioAccountBalanceStateError>
      get copyWith;
}

class _$CommercioAccountSentTokensStateTearOff {
  const _$CommercioAccountSentTokensStateTearOff();

// ignore: unused_element
  CommercioAccountSentTokensStateData call(
      {@required TransactionResult result}) {
    return CommercioAccountSentTokensStateData(
      result: result,
    );
  }

// ignore: unused_element
  CommercioAccountSentTokensStateInitial initial() {
    return const CommercioAccountSentTokensStateInitial();
  }

// ignore: unused_element
  CommercioAccountSentTokensStateLoading loading() {
    return const CommercioAccountSentTokensStateLoading();
  }

// ignore: unused_element
  CommercioAccountSentTokensStateError error([String error]) {
    return CommercioAccountSentTokensStateError(
      error,
    );
  }
}

// ignore: unused_element
const $CommercioAccountSentTokensState =
    _$CommercioAccountSentTokensStateTearOff();

mixin _$CommercioAccountSentTokensState {
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
    Result $default(CommercioAccountSentTokensStateData value), {
    @required Result initial(CommercioAccountSentTokensStateInitial value),
    @required Result loading(CommercioAccountSentTokensStateLoading value),
    @required Result error(CommercioAccountSentTokensStateError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CommercioAccountSentTokensStateData value), {
    Result initial(CommercioAccountSentTokensStateInitial value),
    Result loading(CommercioAccountSentTokensStateLoading value),
    Result error(CommercioAccountSentTokensStateError value),
    @required Result orElse(),
  });
}

abstract class $CommercioAccountSentTokensStateCopyWith<$Res> {
  factory $CommercioAccountSentTokensStateCopyWith(
          CommercioAccountSentTokensState value,
          $Res Function(CommercioAccountSentTokensState) then) =
      _$CommercioAccountSentTokensStateCopyWithImpl<$Res>;
}

class _$CommercioAccountSentTokensStateCopyWithImpl<$Res>
    implements $CommercioAccountSentTokensStateCopyWith<$Res> {
  _$CommercioAccountSentTokensStateCopyWithImpl(this._value, this._then);

  final CommercioAccountSentTokensState _value;
  // ignore: unused_field
  final $Res Function(CommercioAccountSentTokensState) _then;
}

abstract class $CommercioAccountSentTokensStateDataCopyWith<$Res> {
  factory $CommercioAccountSentTokensStateDataCopyWith(
          CommercioAccountSentTokensStateData value,
          $Res Function(CommercioAccountSentTokensStateData) then) =
      _$CommercioAccountSentTokensStateDataCopyWithImpl<$Res>;
  $Res call({TransactionResult result});
}

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
    Object result = freezed,
  }) {
    return _then(CommercioAccountSentTokensStateData(
      result: result == freezed ? _value.result : result as TransactionResult,
    ));
  }
}

class _$CommercioAccountSentTokensStateData
    implements CommercioAccountSentTokensStateData {
  const _$CommercioAccountSentTokensStateData({@required this.result})
      : assert(result != null);

  @override
  final TransactionResult result;

  @override
  String toString() {
    return 'CommercioAccountSentTokensState(result: $result)';
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

  @override
  $CommercioAccountSentTokensStateDataCopyWith<
          CommercioAccountSentTokensStateData>
      get copyWith => _$CommercioAccountSentTokensStateDataCopyWithImpl<
          CommercioAccountSentTokensStateData>(this, _$identity);

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
    Result $default(CommercioAccountSentTokensStateData value), {
    @required Result initial(CommercioAccountSentTokensStateInitial value),
    @required Result loading(CommercioAccountSentTokensStateLoading value),
    @required Result error(CommercioAccountSentTokensStateError value),
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
    Result $default(CommercioAccountSentTokensStateData value), {
    Result initial(CommercioAccountSentTokensStateInitial value),
    Result loading(CommercioAccountSentTokensStateLoading value),
    Result error(CommercioAccountSentTokensStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class CommercioAccountSentTokensStateData
    implements CommercioAccountSentTokensState {
  const factory CommercioAccountSentTokensStateData(
          {@required TransactionResult result}) =
      _$CommercioAccountSentTokensStateData;

  TransactionResult get result;
  $CommercioAccountSentTokensStateDataCopyWith<
      CommercioAccountSentTokensStateData> get copyWith;
}

abstract class $CommercioAccountSentTokensStateInitialCopyWith<$Res> {
  factory $CommercioAccountSentTokensStateInitialCopyWith(
          CommercioAccountSentTokensStateInitial value,
          $Res Function(CommercioAccountSentTokensStateInitial) then) =
      _$CommercioAccountSentTokensStateInitialCopyWithImpl<$Res>;
}

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

class _$CommercioAccountSentTokensStateInitial
    implements CommercioAccountSentTokensStateInitial {
  const _$CommercioAccountSentTokensStateInitial();

  @override
  String toString() {
    return 'CommercioAccountSentTokensState.initial()';
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
    Result $default(CommercioAccountSentTokensStateData value), {
    @required Result initial(CommercioAccountSentTokensStateInitial value),
    @required Result loading(CommercioAccountSentTokensStateLoading value),
    @required Result error(CommercioAccountSentTokensStateError value),
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
    Result $default(CommercioAccountSentTokensStateData value), {
    Result initial(CommercioAccountSentTokensStateInitial value),
    Result loading(CommercioAccountSentTokensStateLoading value),
    Result error(CommercioAccountSentTokensStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
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

abstract class $CommercioAccountSentTokensStateLoadingCopyWith<$Res> {
  factory $CommercioAccountSentTokensStateLoadingCopyWith(
          CommercioAccountSentTokensStateLoading value,
          $Res Function(CommercioAccountSentTokensStateLoading) then) =
      _$CommercioAccountSentTokensStateLoadingCopyWithImpl<$Res>;
}

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

class _$CommercioAccountSentTokensStateLoading
    implements CommercioAccountSentTokensStateLoading {
  const _$CommercioAccountSentTokensStateLoading();

  @override
  String toString() {
    return 'CommercioAccountSentTokensState.loading()';
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
    Result $default(CommercioAccountSentTokensStateData value), {
    @required Result initial(CommercioAccountSentTokensStateInitial value),
    @required Result loading(CommercioAccountSentTokensStateLoading value),
    @required Result error(CommercioAccountSentTokensStateError value),
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
    Result $default(CommercioAccountSentTokensStateData value), {
    Result initial(CommercioAccountSentTokensStateInitial value),
    Result loading(CommercioAccountSentTokensStateLoading value),
    Result error(CommercioAccountSentTokensStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
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

abstract class $CommercioAccountSentTokensStateErrorCopyWith<$Res> {
  factory $CommercioAccountSentTokensStateErrorCopyWith(
          CommercioAccountSentTokensStateError value,
          $Res Function(CommercioAccountSentTokensStateError) then) =
      _$CommercioAccountSentTokensStateErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

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
    Object error = freezed,
  }) {
    return _then(CommercioAccountSentTokensStateError(
      error == freezed ? _value.error : error as String,
    ));
  }
}

class _$CommercioAccountSentTokensStateError
    implements CommercioAccountSentTokensStateError {
  const _$CommercioAccountSentTokensStateError([this.error]);

  @override
  final String error;

  @override
  String toString() {
    return 'CommercioAccountSentTokensState.error(error: $error)';
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

  @override
  $CommercioAccountSentTokensStateErrorCopyWith<
          CommercioAccountSentTokensStateError>
      get copyWith => _$CommercioAccountSentTokensStateErrorCopyWithImpl<
          CommercioAccountSentTokensStateError>(this, _$identity);

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
    Result $default(CommercioAccountSentTokensStateData value), {
    @required Result initial(CommercioAccountSentTokensStateInitial value),
    @required Result loading(CommercioAccountSentTokensStateLoading value),
    @required Result error(CommercioAccountSentTokensStateError value),
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
    Result $default(CommercioAccountSentTokensStateData value), {
    Result initial(CommercioAccountSentTokensStateInitial value),
    Result loading(CommercioAccountSentTokensStateLoading value),
    Result error(CommercioAccountSentTokensStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CommercioAccountSentTokensStateError
    implements CommercioAccountSentTokensState {
  const factory CommercioAccountSentTokensStateError([String error]) =
      _$CommercioAccountSentTokensStateError;

  String get error;
  $CommercioAccountSentTokensStateErrorCopyWith<
      CommercioAccountSentTokensStateError> get copyWith;
}

class _$CommercioAccountPaiwiseWalletStateTearOff {
  const _$CommercioAccountPaiwiseWalletStateTearOff();

// ignore: unused_element
  CommercioAccountPaiwiseWalletStateData call(
      {@required Wallet wallet, @required String walletAddress}) {
    return CommercioAccountPaiwiseWalletStateData(
      wallet: wallet,
      walletAddress: walletAddress,
    );
  }

// ignore: unused_element
  CommercioAccountPaiwiseWalletStateInitial initial() {
    return const CommercioAccountPaiwiseWalletStateInitial();
  }

// ignore: unused_element
  CommercioAccountPaiwiseWalletStateLoading loading() {
    return const CommercioAccountPaiwiseWalletStateLoading();
  }

// ignore: unused_element
  CommercioAccountPaiwiseWalletStateError error([String error]) {
    return CommercioAccountPaiwiseWalletStateError(
      error,
    );
  }
}

// ignore: unused_element
const $CommercioAccountPaiwiseWalletState =
    _$CommercioAccountPaiwiseWalletStateTearOff();

mixin _$CommercioAccountPaiwiseWalletState {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(Wallet wallet, String walletAddress), {
    @required Result initial(),
    @required Result loading(),
    @required Result error(String error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(Wallet wallet, String walletAddress), {
    Result initial(),
    Result loading(),
    Result error(String error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CommercioAccountPaiwiseWalletStateData value), {
    @required Result initial(CommercioAccountPaiwiseWalletStateInitial value),
    @required Result loading(CommercioAccountPaiwiseWalletStateLoading value),
    @required Result error(CommercioAccountPaiwiseWalletStateError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CommercioAccountPaiwiseWalletStateData value), {
    Result initial(CommercioAccountPaiwiseWalletStateInitial value),
    Result loading(CommercioAccountPaiwiseWalletStateLoading value),
    Result error(CommercioAccountPaiwiseWalletStateError value),
    @required Result orElse(),
  });
}

abstract class $CommercioAccountPaiwiseWalletStateCopyWith<$Res> {
  factory $CommercioAccountPaiwiseWalletStateCopyWith(
          CommercioAccountPaiwiseWalletState value,
          $Res Function(CommercioAccountPaiwiseWalletState) then) =
      _$CommercioAccountPaiwiseWalletStateCopyWithImpl<$Res>;
}

class _$CommercioAccountPaiwiseWalletStateCopyWithImpl<$Res>
    implements $CommercioAccountPaiwiseWalletStateCopyWith<$Res> {
  _$CommercioAccountPaiwiseWalletStateCopyWithImpl(this._value, this._then);

  final CommercioAccountPaiwiseWalletState _value;
  // ignore: unused_field
  final $Res Function(CommercioAccountPaiwiseWalletState) _then;
}

abstract class $CommercioAccountPaiwiseWalletStateDataCopyWith<$Res> {
  factory $CommercioAccountPaiwiseWalletStateDataCopyWith(
          CommercioAccountPaiwiseWalletStateData value,
          $Res Function(CommercioAccountPaiwiseWalletStateData) then) =
      _$CommercioAccountPaiwiseWalletStateDataCopyWithImpl<$Res>;
  $Res call({Wallet wallet, String walletAddress});
}

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
    Object wallet = freezed,
    Object walletAddress = freezed,
  }) {
    return _then(CommercioAccountPaiwiseWalletStateData(
      wallet: wallet == freezed ? _value.wallet : wallet as Wallet,
      walletAddress: walletAddress == freezed
          ? _value.walletAddress
          : walletAddress as String,
    ));
  }
}

class _$CommercioAccountPaiwiseWalletStateData
    implements CommercioAccountPaiwiseWalletStateData {
  const _$CommercioAccountPaiwiseWalletStateData(
      {@required this.wallet, @required this.walletAddress})
      : assert(wallet != null),
        assert(walletAddress != null);

  @override
  final Wallet wallet;
  @override
  final String walletAddress;

  @override
  String toString() {
    return 'CommercioAccountPaiwiseWalletState(wallet: $wallet, walletAddress: $walletAddress)';
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

  @override
  $CommercioAccountPaiwiseWalletStateDataCopyWith<
          CommercioAccountPaiwiseWalletStateData>
      get copyWith => _$CommercioAccountPaiwiseWalletStateDataCopyWithImpl<
          CommercioAccountPaiwiseWalletStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(Wallet wallet, String walletAddress), {
    @required Result initial(),
    @required Result loading(),
    @required Result error(String error),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return $default(wallet, walletAddress);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(Wallet wallet, String walletAddress), {
    Result initial(),
    Result loading(),
    Result error(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(wallet, walletAddress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CommercioAccountPaiwiseWalletStateData value), {
    @required Result initial(CommercioAccountPaiwiseWalletStateInitial value),
    @required Result loading(CommercioAccountPaiwiseWalletStateLoading value),
    @required Result error(CommercioAccountPaiwiseWalletStateError value),
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
    Result $default(CommercioAccountPaiwiseWalletStateData value), {
    Result initial(CommercioAccountPaiwiseWalletStateInitial value),
    Result loading(CommercioAccountPaiwiseWalletStateLoading value),
    Result error(CommercioAccountPaiwiseWalletStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class CommercioAccountPaiwiseWalletStateData
    implements CommercioAccountPaiwiseWalletState {
  const factory CommercioAccountPaiwiseWalletStateData(
          {@required Wallet wallet, @required String walletAddress}) =
      _$CommercioAccountPaiwiseWalletStateData;

  Wallet get wallet;
  String get walletAddress;
  $CommercioAccountPaiwiseWalletStateDataCopyWith<
      CommercioAccountPaiwiseWalletStateData> get copyWith;
}

abstract class $CommercioAccountPaiwiseWalletStateInitialCopyWith<$Res> {
  factory $CommercioAccountPaiwiseWalletStateInitialCopyWith(
          CommercioAccountPaiwiseWalletStateInitial value,
          $Res Function(CommercioAccountPaiwiseWalletStateInitial) then) =
      _$CommercioAccountPaiwiseWalletStateInitialCopyWithImpl<$Res>;
}

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

class _$CommercioAccountPaiwiseWalletStateInitial
    implements CommercioAccountPaiwiseWalletStateInitial {
  const _$CommercioAccountPaiwiseWalletStateInitial();

  @override
  String toString() {
    return 'CommercioAccountPaiwiseWalletState.initial()';
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
  Result when<Result extends Object>(
    Result $default(Wallet wallet, String walletAddress), {
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
    Result $default(Wallet wallet, String walletAddress), {
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
    Result $default(CommercioAccountPaiwiseWalletStateData value), {
    @required Result initial(CommercioAccountPaiwiseWalletStateInitial value),
    @required Result loading(CommercioAccountPaiwiseWalletStateLoading value),
    @required Result error(CommercioAccountPaiwiseWalletStateError value),
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
    Result $default(CommercioAccountPaiwiseWalletStateData value), {
    Result initial(CommercioAccountPaiwiseWalletStateInitial value),
    Result loading(CommercioAccountPaiwiseWalletStateLoading value),
    Result error(CommercioAccountPaiwiseWalletStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
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

abstract class $CommercioAccountPaiwiseWalletStateLoadingCopyWith<$Res> {
  factory $CommercioAccountPaiwiseWalletStateLoadingCopyWith(
          CommercioAccountPaiwiseWalletStateLoading value,
          $Res Function(CommercioAccountPaiwiseWalletStateLoading) then) =
      _$CommercioAccountPaiwiseWalletStateLoadingCopyWithImpl<$Res>;
}

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

class _$CommercioAccountPaiwiseWalletStateLoading
    implements CommercioAccountPaiwiseWalletStateLoading {
  const _$CommercioAccountPaiwiseWalletStateLoading();

  @override
  String toString() {
    return 'CommercioAccountPaiwiseWalletState.loading()';
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
  Result when<Result extends Object>(
    Result $default(Wallet wallet, String walletAddress), {
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
    Result $default(Wallet wallet, String walletAddress), {
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
    Result $default(CommercioAccountPaiwiseWalletStateData value), {
    @required Result initial(CommercioAccountPaiwiseWalletStateInitial value),
    @required Result loading(CommercioAccountPaiwiseWalletStateLoading value),
    @required Result error(CommercioAccountPaiwiseWalletStateError value),
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
    Result $default(CommercioAccountPaiwiseWalletStateData value), {
    Result initial(CommercioAccountPaiwiseWalletStateInitial value),
    Result loading(CommercioAccountPaiwiseWalletStateLoading value),
    Result error(CommercioAccountPaiwiseWalletStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
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

abstract class $CommercioAccountPaiwiseWalletStateErrorCopyWith<$Res> {
  factory $CommercioAccountPaiwiseWalletStateErrorCopyWith(
          CommercioAccountPaiwiseWalletStateError value,
          $Res Function(CommercioAccountPaiwiseWalletStateError) then) =
      _$CommercioAccountPaiwiseWalletStateErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

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
    Object error = freezed,
  }) {
    return _then(CommercioAccountPaiwiseWalletStateError(
      error == freezed ? _value.error : error as String,
    ));
  }
}

class _$CommercioAccountPaiwiseWalletStateError
    implements CommercioAccountPaiwiseWalletStateError {
  const _$CommercioAccountPaiwiseWalletStateError([this.error]);

  @override
  final String error;

  @override
  String toString() {
    return 'CommercioAccountPaiwiseWalletState.error(error: $error)';
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

  @override
  $CommercioAccountPaiwiseWalletStateErrorCopyWith<
          CommercioAccountPaiwiseWalletStateError>
      get copyWith => _$CommercioAccountPaiwiseWalletStateErrorCopyWithImpl<
          CommercioAccountPaiwiseWalletStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(Wallet wallet, String walletAddress), {
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
    Result $default(Wallet wallet, String walletAddress), {
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
    Result $default(CommercioAccountPaiwiseWalletStateData value), {
    @required Result initial(CommercioAccountPaiwiseWalletStateInitial value),
    @required Result loading(CommercioAccountPaiwiseWalletStateLoading value),
    @required Result error(CommercioAccountPaiwiseWalletStateError value),
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
    Result $default(CommercioAccountPaiwiseWalletStateData value), {
    Result initial(CommercioAccountPaiwiseWalletStateInitial value),
    Result loading(CommercioAccountPaiwiseWalletStateLoading value),
    Result error(CommercioAccountPaiwiseWalletStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CommercioAccountPaiwiseWalletStateError
    implements CommercioAccountPaiwiseWalletState {
  const factory CommercioAccountPaiwiseWalletStateError([String error]) =
      _$CommercioAccountPaiwiseWalletStateError;

  String get error;
  $CommercioAccountPaiwiseWalletStateErrorCopyWith<
      CommercioAccountPaiwiseWalletStateError> get copyWith;
}
