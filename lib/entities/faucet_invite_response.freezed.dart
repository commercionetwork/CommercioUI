// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'faucet_invite_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
FaucetInviteResponse _$FaucetInviteResponseFromJson(Map<String, dynamic> json) {
  return _FaucetInviteResponse.fromJson(json);
}

class _$FaucetInviteResponseTearOff {
  const _$FaucetInviteResponseTearOff();

  _FaucetInviteResponse call(
      {@JsonKey(name: 'tx_hash') String txHash, String error}) {
    return _FaucetInviteResponse(
      txHash: txHash,
      error: error,
    );
  }
}

// ignore: unused_element
const $FaucetInviteResponse = _$FaucetInviteResponseTearOff();

mixin _$FaucetInviteResponse {
  @JsonKey(name: 'tx_hash')
  String get txHash;
  String get error;

  Map<String, dynamic> toJson();
  $FaucetInviteResponseCopyWith<FaucetInviteResponse> get copyWith;
}

abstract class $FaucetInviteResponseCopyWith<$Res> {
  factory $FaucetInviteResponseCopyWith(FaucetInviteResponse value,
          $Res Function(FaucetInviteResponse) then) =
      _$FaucetInviteResponseCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'tx_hash') String txHash, String error});
}

class _$FaucetInviteResponseCopyWithImpl<$Res>
    implements $FaucetInviteResponseCopyWith<$Res> {
  _$FaucetInviteResponseCopyWithImpl(this._value, this._then);

  final FaucetInviteResponse _value;
  // ignore: unused_field
  final $Res Function(FaucetInviteResponse) _then;

  @override
  $Res call({
    Object txHash = freezed,
    Object error = freezed,
  }) {
    return _then(_value.copyWith(
      txHash: txHash == freezed ? _value.txHash : txHash as String,
      error: error == freezed ? _value.error : error as String,
    ));
  }
}

abstract class _$FaucetInviteResponseCopyWith<$Res>
    implements $FaucetInviteResponseCopyWith<$Res> {
  factory _$FaucetInviteResponseCopyWith(_FaucetInviteResponse value,
          $Res Function(_FaucetInviteResponse) then) =
      __$FaucetInviteResponseCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'tx_hash') String txHash, String error});
}

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
    Object txHash = freezed,
    Object error = freezed,
  }) {
    return _then(_FaucetInviteResponse(
      txHash: txHash == freezed ? _value.txHash : txHash as String,
      error: error == freezed ? _value.error : error as String,
    ));
  }
}

@JsonSerializable(nullable: true)
class _$_FaucetInviteResponse implements _FaucetInviteResponse {
  _$_FaucetInviteResponse({@JsonKey(name: 'tx_hash') this.txHash, this.error});

  factory _$_FaucetInviteResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_FaucetInviteResponseFromJson(json);

  @override
  @JsonKey(name: 'tx_hash')
  final String txHash;
  @override
  final String error;

  bool _didsuccess = false;
  bool _success;

  @override
  bool get success {
    if (_didsuccess == false) {
      _didsuccess = true;
      _success = txHash != null;
    }
    return _success;
  }

  @override
  String toString() {
    return 'FaucetInviteResponse(txHash: $txHash, error: $error, success: $success)';
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

  @override
  _$FaucetInviteResponseCopyWith<_FaucetInviteResponse> get copyWith =>
      __$FaucetInviteResponseCopyWithImpl<_FaucetInviteResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FaucetInviteResponseToJson(this);
  }
}

abstract class _FaucetInviteResponse implements FaucetInviteResponse {
  factory _FaucetInviteResponse(
      {@JsonKey(name: 'tx_hash') String txHash,
      String error}) = _$_FaucetInviteResponse;

  factory _FaucetInviteResponse.fromJson(Map<String, dynamic> json) =
      _$_FaucetInviteResponse.fromJson;

  @override
  @JsonKey(name: 'tx_hash')
  String get txHash;
  @override
  String get error;
  @override
  _$FaucetInviteResponseCopyWith<_FaucetInviteResponse> get copyWith;
}
