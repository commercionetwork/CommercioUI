import 'package:commercio_ui/commercio_ui.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:sacco/sacco.dart';

part 'commercio_account_state.freezed.dart';

abstract class CommercioAccountState extends CommercioState {
  const CommercioAccountState();
}

@freezed
@Implements(CommercioAccountState)
abstract class CommercioAccountGenerateWalletState
    with _$CommercioAccountGenerateWalletState {
  const factory CommercioAccountGenerateWalletState({
    @required String mnemonic,
    @required Wallet wallet,
    @required String walletAddress,
  }) = CommercioAccountGenerateWalletData;

  const factory CommercioAccountGenerateWalletState.initial() =
      CommercioAccountGenerateWalletInitial;

  const factory CommercioAccountGenerateWalletState.loading() =
      CommercioAccountGenerateWalletLoading;

  const factory CommercioAccountGenerateWalletState.error([String error]) =
      CommercioAccountGenerateWalletError;
}

@freezed
@Implements(CommercioAccountState)
abstract class CommercioAccountRestoredWalletState
    with _$CommercioAccountRestoredWalletState {
  const factory CommercioAccountRestoredWalletState({
    @required String mnemonic,
    @required Wallet wallet,
    @required String walletAddress,
  }) = CommercioAccountRestoredWalletStateData;

  const factory CommercioAccountRestoredWalletState.initial() =
      CommercioAccountRestoredWalletStateInitial;

  const factory CommercioAccountRestoredWalletState.loading() =
      CommercioAccountRestoredWalletStateLoading;

  const factory CommercioAccountRestoredWalletState.error([String error]) =
      CommercioAccountRestoredWalletStateError;
}

@freezed
@Implements(CommercioAccountState)
abstract class CommercioAccountQrState with _$CommercioAccountQrState {
  const factory CommercioAccountQrState({
    @required String walletAddress,
  }) = CommercioAccountQrStateData;

  const factory CommercioAccountQrState.initial() =
      CommercioAccountQrStateInitial;

  const factory CommercioAccountQrState.loading() =
      CommercioAccountQrStateLoading;

  const factory CommercioAccountQrState.error([String error]) =
      CommercioAccountQrStateError;
}

@freezed
@Implements(CommercioAccountState)
abstract class CommercioAccountFreeTokensState
    with _$CommercioAccountFreeTokensState {
  const factory CommercioAccountFreeTokensState({
    @required AccountRequestResponse accountRequestResponse,
  }) = CommercioAccountFreeTokensStateData;

  const factory CommercioAccountFreeTokensState.initial() =
      CommercioAccountFreeTokensStateInitial;

  const factory CommercioAccountFreeTokensState.loading() =
      CommercioAccountFreeTokensStateLoading;

  const factory CommercioAccountFreeTokensState.error([String error]) =
      CommercioAccountFreeTokensStateError;
}

@freezed
@Implements(CommercioAccountState)
abstract class CommercioAccountBalanceState
    with _$CommercioAccountBalanceState {
  const factory CommercioAccountBalanceState({
    @required List<StdCoin> balance,
  }) = CommercioAccountBalanceStateData;

  const factory CommercioAccountBalanceState.initial() =
      CommercioAccountBalanceStateInitial;

  const factory CommercioAccountBalanceState.loading() =
      CommercioAccountBalanceStateLoading;

  const factory CommercioAccountBalanceState.error([String error]) =
      CommercioAccountBalanceStateError;
}

@freezed
@Implements(CommercioAccountState)
abstract class CommercioAccountSentTokensState
    with _$CommercioAccountSentTokensState {
  const factory CommercioAccountSentTokensState({
    @required TransactionResult result,
  }) = CommercioAccountSentTokensStateData;

  const factory CommercioAccountSentTokensState.initial() =
      CommercioAccountSentTokensStateInitial;

  const factory CommercioAccountSentTokensState.loading() =
      CommercioAccountSentTokensStateLoading;

  const factory CommercioAccountSentTokensState.error([String error]) =
      CommercioAccountSentTokensStateError;
}

@freezed
@Implements(CommercioAccountState)
abstract class CommercioAccountPaiwiseWalletState
    with _$CommercioAccountPaiwiseWalletState {
  const factory CommercioAccountPaiwiseWalletState({
    @required Wallet wallet,
    @required String walletAddress,
  }) = CommercioAccountPaiwiseWalletStateData;

  const factory CommercioAccountPaiwiseWalletState.initial() =
      CommercioAccountPaiwiseWalletStateInitial;

  const factory CommercioAccountPaiwiseWalletState.loading() =
      CommercioAccountPaiwiseWalletStateLoading;

  const factory CommercioAccountPaiwiseWalletState.error([String error]) =
      CommercioAccountPaiwiseWalletStateError;
}
