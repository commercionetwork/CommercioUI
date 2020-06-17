import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:commercio_ui/commercio_ui.dart';
import 'package:meta/meta.dart';

class CommercioAccountBloc
    extends Bloc<CommercioAccountEvent, CommercioAccountState> {
  final StatefulCommercioAccount commercioAccount;

  CommercioAccountBloc({@required this.commercioAccount});

  @override
  CommercioAccountState get initialState => CommercioAccountInitial();

  @override
  Stream<CommercioAccountState> mapEventToState(
    CommercioAccountEvent event,
  ) async* {
    if (event is CommercioAccountGenerateNewWalletEvent) {
      yield* _mapCommercioAccountGenerateNewWalletEventToState(event);
    }

    if (event is CommercioAccountRestoreWalletEvent) {
      yield* _mapCommercioAccountRestoreWalletEventToState(event);
    }

    if (event is CommercioAccountRequestFreeTokensEvent) {
      yield* _mapCommercioAccountRequestFreeTokensEventToState(event);
    }

    if (event is CommercioAccountCheckBalanceEvent) {
      yield* _mapCommercioAccountCheckBalanceEventToState(event);
    }

    if (event is CommercioAccountSendTokensEvent) {
      yield* _mapCommercioAccountSendTokensEventToState(event);
    }

    if (event is CommercioAccountGenerateQrEvent) {
      yield* _mapCommercioAccountGenerateQrEventToState(event);
    }

    if (event is CommercioAccountGeneratePairwiseWalletEvent) {
      yield* _mapCommercioAccountGeneratePairwiseWalletToState(event);
    }
  }

  Stream<CommercioAccountState> _mapCommercioAccountRestoreWalletEventToState(
    CommercioAccountRestoreWalletEvent event,
  ) async* {
    try {
      yield const CommercioAccountLoadingRestoreWallet();

      await commercioAccount.restoreWallet();

      yield CommercioAccountRestoredWithWallet(
          commercioAccount: commercioAccount);
    } catch (e) {
      yield CommercioAccountRestoreWalletError(e.toString());
    }
  }

  Stream<CommercioAccountState>
      _mapCommercioAccountGenerateNewWalletEventToState(
    CommercioAccountGenerateNewWalletEvent event,
  ) async* {
    try {
      yield const CommercioAccountLoadingGenerateWallet();

      await commercioAccount.generateNewWallet(
          mnemonic: event.mnemonic,
          lastDerivationPathSegment: event.lastDerivationPathSegment);

      yield CommercioAccountGeneratedWithWallet(
          commercioAccount: commercioAccount);
    } catch (e) {
      yield CommercioAccountGenerateWalletError(e.toString());
    }
  }

  Stream<CommercioAccountState>
      _mapCommercioAccountRequestFreeTokensEventToState(
    CommercioAccountRequestFreeTokensEvent event,
  ) async* {
    try {
      yield const CommercioAccountLoadingRequestFreeTokensWallet();
      final response =
          await commercioAccount.requestFreeTokens(amount: event.amount);

      yield CommercioAccountWithWalletFreeTokens(
          commercioAccount: commercioAccount, accountRequestResponse: response);
    } catch (e) {
      yield CommercioAccountRequestFreeTokensError(e.toString());
    }
  }

  Stream<CommercioAccountState> _mapCommercioAccountCheckBalanceEventToState(
    CommercioAccountCheckBalanceEvent event,
  ) async* {
    try {
      yield const CommercioAccountLoadingCheckBalance();

      final balance = await commercioAccount.checkAccountBalance();

      yield CommercioAccountBalance(
          commercioAccount: commercioAccount, balance: balance);
    } catch (e) {
      yield CommercioAccountCheckBalanceError(e.toString());
    }
  }

  Stream<CommercioAccountState> _mapCommercioAccountSendTokensEventToState(
    CommercioAccountSendTokensEvent event,
  ) async* {
    try {
      yield const CommercioAccountLoadingSendTokens();

      final result = await commercioAccount.sendTokens(
          recipientAddress: event.recipientAddress,
          amount: event.amount,
          feeAmount: event.feeAmount,
          gas: event.gas);

      yield CommercioAccountSentTokens(
          commercioAccount: commercioAccount, result: result);
    } catch (e) {
      yield CommercioAccountSendTokensError(e.toString());
    }
  }

  Stream<CommercioAccountState> _mapCommercioAccountGenerateQrEventToState(
    CommercioAccountGenerateQrEvent event,
  ) async* {
    try {
      yield const CommercioAccountLoadingGenerateQr();

      yield CommercioAccountQrWithWallet(commercioAccount: commercioAccount);
    } catch (e) {
      yield CommercioAccountGenerateQrError(e.toString());
    }
  }

  Stream<CommercioAccountState>
      _mapCommercioAccountGeneratePairwiseWalletToState(
    CommercioAccountGeneratePairwiseWalletEvent event,
  ) async* {
    try {
      yield const CommercioAccountLoadingGeneratePairwiseWallet();

      final pairwiseWallet = await commercioAccount.generatePairwiseWallet(
        newMnemonic: event.newMnemonic,
        lastDerivationPathSegment: event.lastDerivationPath,
      );

      yield CommercioAccountGeneratedPaiwiseWallet(wallet: pairwiseWallet);
    } catch (e) {
      yield CommercioAccountGeneratePairwiseWalletError(e.toString());
    }
  }
}
