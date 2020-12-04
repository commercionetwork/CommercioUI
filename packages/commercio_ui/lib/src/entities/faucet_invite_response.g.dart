// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'faucet_invite_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FaucetInviteResponse faucetInviteResponseFromJson(
    Map<String, dynamic> json) {
  return _$_FaucetInviteResponse(
    txHash: json['tx_hash'] as String,
    error: json['error'] as String,
  );
}

Map<String, dynamic> faucetInviteResponseToJson(
        _$_FaucetInviteResponse instance) =>
    <String, dynamic>{
      'tx_hash': instance.txHash,
      'error': instance.error,
    };
