import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:commercio_ui/commercio_ui.dart';

import 'commercio_account_event.dart';
import 'commercio_account_state.dart';

class CommercioAccountGenerateWalletBloc extends Bloc<
    CommercioAccountGenerateWalletEvent, CommercioAccountGenerateWalletState> {
  final StatefulCommercioAccount commercioAccount;

  CommercioAccountGenerateWalletBloc({required this.commercioAccount})
      : super(const CommercioAccountGenerateWalletInitial());

  @override
  Stream<CommercioAccountGenerateWalletState> mapEventToState(
    CommercioAccountGenerateWalletEvent event,
  ) async* {
    try {
      yield const CommercioAccountGenerateWalletLoading();

      final walletWithMnemonic = await commercioAccount.generateNewWallet(
        mnemonic: event.mnemonic,
        lastDerivationPathSegment: event.lastDerivationPathSegment,
      );

      yield CommercioAccountGenerateWalletData(
        mnemonic: walletWithMnemonic.mnemonic,
        wallet: walletWithMnemonic.wallet,
        walletAddress: walletWithMnemonic.wallet.bech32Address,
      );
    } catch (e) {
      yield CommercioAccountGenerateWalletError(e.toString());
    }
  }
}

class CommercioAccountRestoreWalletBloc extends Bloc<
    CommercioAccountRestoreWalletEvent, CommercioAccountRestoredWalletState> {
  final StatefulCommercioAccount commercioAccount;

  CommercioAccountRestoreWalletBloc({required this.commercioAccount})
      : super(const CommercioAccountRestoredWalletStateInitial());

  @override
  Stream<CommercioAccountRestoredWalletState> mapEventToState(
    CommercioAccountRestoreWalletEvent event,
  ) async* {
    try {
      yield const CommercioAccountRestoredWalletStateLoading();

      WalletWithMnemonic walletWithMnemonic;
      if (event.mnemonic != null) {
        walletWithMnemonic = await commercioAccount.generateNewWallet(
          mnemonic: event.mnemonic,
        );
      } else {
        walletWithMnemonic = await commercioAccount.restoreWallet();
      }

      yield CommercioAccountRestoredWalletStateData(
        mnemonic: walletWithMnemonic.mnemonic,
        wallet: walletWithMnemonic.wallet,
        walletAddress: walletWithMnemonic.wallet.bech32Address,
      );
    } catch (e) {
      yield CommercioAccountRestoredWalletStateError(e.toString());
    }
  }
}

class CommercioAccountGenerateQrBloc
    extends Bloc<CommercioAccountGenerateQrEvent, CommercioAccountQrState> {
  final StatefulCommercioAccount commercioAccount;

  CommercioAccountGenerateQrBloc({required this.commercioAccount})
      : super(const CommercioAccountQrStateInitial());

  @override
  Stream<CommercioAccountQrState> mapEventToState(
    CommercioAccountGenerateQrEvent event,
  ) async* {
    try {
      yield const CommercioAccountQrStateLoading();

      if (!commercioAccount.hasWalletAddress) {
        throw const WalletNotFoundException();
      }

      yield CommercioAccountQrStateData(
        walletAddress: commercioAccount.walletAddress!,
      );
    } catch (e) {
      yield CommercioAccountQrStateError(e.toString());
    }
  }
}

class CommercioAccountCheckBalanceBloc extends Bloc<
    CommercioAccountCheckBalanceEvent, CommercioAccountBalanceState> {
  final StatefulCommercioAccount commercioAccount;

  CommercioAccountCheckBalanceBloc({required this.commercioAccount})
      : super(const CommercioAccountBalanceStateInitial());

  @override
  Stream<CommercioAccountBalanceState> mapEventToState(
    CommercioAccountCheckBalanceEvent event,
  ) async* {
    try {
      yield const CommercioAccountBalanceStateLoading();

      final balance = await commercioAccount.checkAccountBalance();

      yield CommercioAccountBalanceStateData(balance: balance);
    } catch (e) {
      yield CommercioAccountBalanceStateError(e.toString());
    }
  }
}

class CommercioAccountSendTokensBloc extends Bloc<
    CommercioAccountSendTokensEvent, CommercioAccountSentTokensState> {
  final StatefulCommercioAccount commercioAccount;

  CommercioAccountSendTokensBloc({required this.commercioAccount})
      : super(const CommercioAccountSentTokensStateInitial());

  @override
  Stream<CommercioAccountSentTokensState> mapEventToState(
    CommercioAccountSendTokensEvent event,
  ) async* {
    try {
      yield const CommercioAccountSentTokensStateLoading();

      final result = await commercioAccount.sendTokens(
        recipientAddresses: event.recipientAddresses,
        amount: event.amount,
        fee: event.fee,
        mode: event.mode,
      );

      yield CommercioAccountSentTokensStateData(result: result);
    } catch (e) {
      yield CommercioAccountSentTokensStateError(e.toString());
    }
  }
}

class CommercioAccountRequestFreeTokensBloc extends Bloc<
    CommercioAccountRequestFreeTokensEvent, CommercioAccountFreeTokensState> {
  final StatefulCommercioAccount commercioAccount;

  CommercioAccountRequestFreeTokensBloc({required this.commercioAccount})
      : super(const CommercioAccountFreeTokensStateInitial());

  @override
  Stream<CommercioAccountFreeTokensState> mapEventToState(
    CommercioAccountRequestFreeTokensEvent event,
  ) async* {
    try {
      yield const CommercioAccountFreeTokensStateLoading();

      final response =
          await commercioAccount.requestFreeTokens(amount: event.amount);

      yield CommercioAccountFreeTokensStateData(
        accountRequestResponse: response,
      );
    } catch (e) {
      yield CommercioAccountFreeTokensStateError(e.toString());
    }
  }
}

class CommercioAccountGeneratePairwiseWalletBloc extends Bloc<
    CommercioAccountGeneratePairwiseWalletEvent,
    CommercioAccountPaiwiseWalletState> {
  final StatefulCommercioAccount commercioAccount;

  CommercioAccountGeneratePairwiseWalletBloc({required this.commercioAccount})
      : super(const CommercioAccountPaiwiseWalletStateInitial());

  @override
  Stream<CommercioAccountPaiwiseWalletState> mapEventToState(
    CommercioAccountGeneratePairwiseWalletEvent event,
  ) async* {
    try {
      yield const CommercioAccountPaiwiseWalletStateLoading();

      final pairwiseWallet = await commercioAccount.generatePairwiseWallet(
        lastDerivationPathSegment: event.lastDerivationPath,
      );

      yield CommercioAccountPaiwiseWalletStateData(
        wallet: pairwiseWallet,
        walletAddress: pairwiseWallet.bech32Address,
      );
    } catch (e) {
      yield CommercioAccountPaiwiseWalletStateError(e.toString());
    }
  }
}
