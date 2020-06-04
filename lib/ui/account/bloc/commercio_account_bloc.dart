import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:commercio_ui/commercio_ui.dart';
import 'package:commercio_ui/ui/bloc/commercio_state.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:sacco/sacco.dart';

part 'commercio_account_event.dart';
part 'commercio_account_state.dart';
part 'commercio_account_state_loading.dart';
part 'commercio_account_state_error.dart';

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
      try {
        yield const CommercioAccountLoadingGenerateWallet();

        yield await _mapCommercioAccountGenerateNewWalletEventToState(event);
      } on Exception catch (e) {
        yield CommercioAccountGenerateWalletError(e.toString());
      }
    }

    if (event is CommercioAccountRestoreWalletEvent) {
      try {
        yield const CommercioAccountLoadingRestoreWallet();

        yield await _mapCommercioAccountRestoreWalletEventToState(event);
      } on Exception catch (e) {
        yield CommercioAccountRestoreWalletError(e.toString());
      }
    }

    if (event is CommercioAccountRequestFreeTokensEvent) {
      try {
        yield const CommercioAccountLoadingRequestFreeTokensWallet();

        yield await _mapCommercioAccountRequestFreeTokensEventToState(event);
      } on Exception catch (e) {
        yield CommercioAccountRequestFreeTokensError(e.toString());
      }
    }

    if (event is CommercioAccountCheckBalanceEvent) {
      try {
        yield const CommercioAccountLoadingCheckBalance();

        yield await _mapCommercioAccountCheckBalanceEventToState(event);
      } on Exception catch (e) {
        yield CommercioAccountCheckBalanceError(e.toString());
      }
    }

    if (event is CommercioAccountSendTokensEvent) {
      try {
        yield const CommercioAccountLoadingSendTokens();

        yield await _mapCommercioAccountSendTokensEventToState(event);
      } on Exception catch (e) {
        yield CommercioAccountSendTokensError(e.toString());
      }
    }

    if (event is CommercioAccountGenerateQrEvent) {
      try {
        yield const CommercioAccountLoadingGenerateQr();

        yield await _mapCommercioAccountGenerateQrEventToState(event);
      } on Exception catch (e) {
        yield CommercioAccountGenerateQrError(e.toString());
      }
    }

    if (event is CommercioAccountGeneratePairwiseWalletEvent) {
      try {
        yield const CommercioAccountLoadingGeneratePairwiseWallet();

        yield await _mapCommercioAccountGeneratePairwiseWalletToState(event);
      } on Exception catch (e) {
        yield CommercioAccountGeneratePairwiseWalletError(e.toString());
      }
    }
  }

  Future<CommercioAccountState> _mapCommercioAccountRestoreWalletEventToState(
      CommercioAccountRestoreWalletEvent event) async {
    await commercioAccount.restoreWallet();

    return CommercioAccountRestoredWithWallet(
        commercioAccount: commercioAccount);
  }

  Future<CommercioAccountState>
      _mapCommercioAccountGenerateNewWalletEventToState(
          CommercioAccountGenerateNewWalletEvent event) async {
    await commercioAccount.generateNewWallet(
        mnemonic: event.mnemonic,
        lastDerivationPathSegment: event.lastDerivationPathSegment);

    return CommercioAccountGeneratedWithWallet(
        commercioAccount: commercioAccount);
  }

  Future<CommercioAccountState>
      _mapCommercioAccountRequestFreeTokensEventToState(
          CommercioAccountRequestFreeTokensEvent event) async {
    final response = await commercioAccount.requestFreeTokens(
        amount: event.amount, faucetDomain: event.faucetDomain);

    return CommercioAccountWithWalletFreeTokens(
        commercioAccount: commercioAccount, accountRequestResponse: response);
  }

  Future<CommercioAccountState> _mapCommercioAccountCheckBalanceEventToState(
      CommercioAccountCheckBalanceEvent event) async {
    final balance = await commercioAccount.checkAccountBalance();

    return CommercioAccountBalance(
        commercioAccount: commercioAccount, balance: balance);
  }

  Future<CommercioAccountState> _mapCommercioAccountSendTokensEventToState(
      CommercioAccountSendTokensEvent event) async {
    final result = await commercioAccount.sendTokens(
        recipientAddress: event.recipientAddress,
        amount: event.amount,
        feeAmount: event.feeAmount,
        gas: event.gas);

    return CommercioAccountSentTokens(
        commercioAccount: commercioAccount, result: result);
  }

  Future<CommercioAccountState> _mapCommercioAccountGenerateQrEventToState(
      CommercioAccountGenerateQrEvent event) async {
    return CommercioAccountQrWithWallet(commercioAccount: commercioAccount);
  }

  Future<CommercioAccountState>
      _mapCommercioAccountGeneratePairwiseWalletToState(
          CommercioAccountGeneratePairwiseWalletEvent event) async {
    final pairwiseWallet = await commercioAccount.generatePairwiseWallet(
      newMnemonic: event.newMnemonic,
      lastDerivationPathSegment: event.lastDerivationPath,
    );

    return CommercioAccountGeneratedPaiwiseWallet(wallet: pairwiseWallet);
  }
}
