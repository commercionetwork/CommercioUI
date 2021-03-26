// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'faucet_invite_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FaucetInviteResponse _$FaucetInviteResponseFromJson(Map<String, dynamic> json) {
  return _FaucetInviteResponse.fromJson(json);
}

/// @nodoc
class _$FaucetInviteResponseTearOff {
  const _$FaucetInviteResponseTearOff();

  _FaucetInviteResponse call(
      {@JsonKey(name: 'tx_hash') String? txHash, String? error}) {
    return _FaucetInviteResponse(
      txHash: txHash,
      error: error,
    );
  }

  FaucetInviteResponse fromJson(Map<String, Object> json) {
    return FaucetInviteResponse.fromJson(json);
  }
}

/// @nodoc
const $FaucetInviteResponse = _$FaucetInviteResponseTearOff();

/// @nodoc
mixin _$FaucetInviteResponse {
  @JsonKey(name: 'tx_hash')
  String? get txHash => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FaucetInviteResponseCopyWith<FaucetInviteResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FaucetInviteResponseCopyWith<$Res> {
  factory $FaucetInviteResponseCopyWith(FaucetInviteResponse value,
          $Res Function(FaucetInviteResponse) then) =
      _$FaucetInviteResponseCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'tx_hash') String? txHash, String? error});
}

/// @nodoc
class _$FaucetInviteResponseCopyWithImpl<$Res>
    implements $FaucetInviteResponseCopyWith<$Res> {
  _$FaucetInviteResponseCopyWithImpl(this._value, this._then);

  final FaucetInviteResponse _value;
  // ignore: unused_field
  final $Res Function(FaucetInviteResponse) _then;

  @override
  $Res call({
    Object? txHash = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      txHash: txHash == freezed
          ? _value.txHash
          : txHash // ignore: cast_nullable_to_non_nullable
              as String?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$FaucetInviteResponseCopyWith<$Res>
    implements $FaucetInviteResponseCopyWith<$Res> {
  factory _$FaucetInviteResponseCopyWith(_FaucetInviteResponse value,
          $Res Function(_FaucetInviteResponse) then) =
      __$FaucetInviteResponseCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'tx_hash') String? txHash, String? error});
}

/// @nodoc
class __$FaucetInviteResponseCopyWithImpl<$Res>
    extends _$FaucetInviteResponseCopyWithImpl<$Res>
    implements _$FaucetInviteResponseCopyWith<$Res> {
  __$FaucetInviteResponseCopyWithImpl(
      _FaucetInviteResponse _value, $Res Function(_FaucetInviteResponse) _then)
      : super(_value, (v) => _then(v as _FaucetInviteResponse));

  @override
  _FaucetInviteResponse get _value => super._value as _FaucetInviteResponse;

  @override
  $Res call({
    Object? txHash = freezed,
    Object? error = freezed,
  }) {
    return _then(_FaucetInviteResponse(
      txHash: txHash == freezed
          ? _value.txHash
          : txHash // ignore: cast_nullable_to_non_nullable
              as String?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

@JsonSerializable(includeIfNull: false)

/// @nodoc
class _$_FaucetInviteResponse extends _FaucetInviteResponse {
  _$_FaucetInviteResponse({@JsonKey(name: 'tx_hash') this.txHash, this.error})
      : super._();

  factory _$_FaucetInviteResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_FaucetInviteResponseFromJson(json);

  @override
  @JsonKey(name: 'tx_hash')
  final String? txHash;
  @override
  final String? error;

  @override
  String toString() {
    return 'FaucetInviteResponse(txHash: $txHash, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FaucetInviteResponse &&
            (identical(other.txHash, txHash) ||
                const DeepCollectionEquality().equals(other.txHash, txHash)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(txHash) ^
      const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  _$FaucetInviteResponseCopyWith<_FaucetInviteResponse> get copyWith =>
      __$FaucetInviteResponseCopyWithImpl<_FaucetInviteResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FaucetInviteResponseToJson(this);
  }
}

abstract class _FaucetInviteResponse extends FaucetInviteResponse {
  factory _FaucetInviteResponse(
      {@JsonKey(name: 'tx_hash') String? txHash,
      String? error}) = _$_FaucetInviteResponse;
  _FaucetInviteResponse._() : super._();

  factory _FaucetInviteResponse.fromJson(Map<String, dynamic> json) =
      _$_FaucetInviteResponse.fromJson;

  @override
  @JsonKey(name: 'tx_hash')
  String? get txHash => throw _privateConstructorUsedError;
  @override
  String? get error => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FaucetInviteResponseCopyWith<_FaucetInviteResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
