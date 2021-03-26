// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'faucet_invite_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FaucetInviteResponse _$_$_FaucetInviteResponseFromJson(
    Map<String, dynamic> json) {
  return _$_FaucetInviteResponse(
    txHash: json['tx_hash'] as String?,
    error: json['error'] as String?,
  );
}

Map<String, dynamic> _$_$_FaucetInviteResponseToJson(
    _$_FaucetInviteResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('tx_hash', instance.txHash);
  writeNotNull('error', instance.error);
  return val;
}
