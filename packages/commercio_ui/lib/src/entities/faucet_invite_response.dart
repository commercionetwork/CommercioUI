import 'package:freezed_annotation/freezed_annotation.dart';

part 'faucet_invite_response.freezed.dart';
part 'faucet_invite_response.g.dart';

@freezed
abstract class FaucetInviteResponse with _$FaucetInviteResponse {
  FaucetInviteResponse._();

  @JsonSerializable(includeIfNull: false)
  factory FaucetInviteResponse({
    @JsonKey(name: 'tx_hash') String? txHash,
    String? error,
  }) = _FaucetInviteResponse;

  late final success = txHash != null;

  factory FaucetInviteResponse.fromJson(Map<String, dynamic> json) =>
      _$FaucetInviteResponseFromJson(json);
}
