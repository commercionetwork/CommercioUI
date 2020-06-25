import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:commercio_ui/commercio_ui.dart';
import 'package:meta/meta.dart';

class CommercioAccountGenerateWalletBloc extends Bloc<
    CommercioAccountGenerateWalletEvent, CommercioAccountGenerateWalletState> {
  final StatefulCommercioAccount commercioAccount;

  CommercioAccountGenerateWalletBloc({@required this.commercioAccount});

  @override
  CommercioAccountGenerateWalletState get initialState {
    if (commercioAccount.hasWallet &&
        commercioAccount.hasMnemonic &&
        commercioAccount.hasWalletAddress) {
      return CommercioAccountGenerateWalletData(
        mnemonic: commercioAccount.mnemonic,
        wallet: commercioAccount.wallet,
        walletAddress: commercioAccount.walletAddress,
      );
    }

    return const CommercioAccountGenerateWalletInitial();
  }

  @override
  Stream<CommercioAccountGenerateWalletState> mapEventToState(
    CommercioAccountGenerateWalletEvent event,
  ) async* {
    try {
      yield const CommercioAccountGenerateWalletLoading();

      await commercioAccount.generateNewWallet(
        mnemonic: event.mnemonic,
        lastDerivationPathSegment: event.lastDerivationPathSegment,
      );

      yield CommercioAccountGenerateWalletData(
        mnemonic: commercioAccount.mnemonic,
        wallet: commercioAccount.wallet,
        walletAddress: commercioAccount.walletAddress,
      );
    } catch (e) {
      yield CommercioAccountGenerateWalletError(e.toString());
    }
  }
}

class CommercioAccountRestoreWalletBloc extends Bloc<
    CommercioAccountRestoreWalletEvent, CommercioAccountRestoredWalletState> {
  final StatefulCommercioAccount commercioAccount;

  CommercioAccountRestoreWalletBloc({@required this.commercioAccount});

  @override
  CommercioAccountRestoredWalletState get initialState {
    if (commercioAccount.hasWallet &&
        commercioAccount.hasMnemonic &&
        commercioAccount.hasWalletAddress) {
      return CommercioAccountRestoredWalletStateData(
        mnemonic: commercioAccount.mnemonic,
        wallet: commercioAccount.wallet,
        walletAddress: commercioAccount.walletAddress,
      );
    }

    return const CommercioAccountRestoredWalletStateInitial();
  }

  @override
  Stream<CommercioAccountRestoredWalletState> mapEventToState(
    CommercioAccountRestoreWalletEvent event,
  ) async* {
    try {
      yield const CommercioAccountRestoredWalletStateLoading();

      if (event.mnemonic != null) {
        await commercioAccount.generateNewWallet(mnemonic: event.mnemonic);
      } else {
        await commercioAccount.restoreWallet();
      }

      yield CommercioAccountRestoredWalletStateData(
        mnemonic: commercioAccount.mnemonic,
        wallet: commercioAccount.wallet,
        walletAddress: commercioAccount.walletAddress,
      );
    } catch (e) {
      yield CommercioAccountRestoredWalletStateError(e.toString());
    }
  }
}

class CommercioAccountGenerateQrBloc
    extends Bloc<CommercioAccountGenerateQrEvent, CommercioAccountQrState> {
  final StatefulCommercioAccount commercioAccount;

  CommercioAccountGenerateQrBloc({@required this.commercioAccount});

  @override
  CommercioAccountQrState get initialState {
    if (commercioAccount.hasWalletAddress) {
      return CommercioAccountQrStateData(
        walletAddress: commercioAccount.walletAddress,
      );
    }

    return const CommercioAccountQrStateInitial();
  }

  @override
  Stream<CommercioAccountQrState> mapEventToState(
    CommercioAccountGenerateQrEvent event,
  ) async* {
    try {
      yield const CommercioAccountQrStateLoading();

      yield CommercioAccountQrStateData(
        walletAddress: commercioAccount.walletAddress,
      );
    } catch (e) {
      yield CommercioAccountQrStateError(e.toString());
    }
  }
}

class CommercioAccountCheckBalanceBloc extends Bloc<
    CommercioAccountCheckBalanceEvent, CommercioAccountBalanceState> {
  final StatefulCommercioAccount commercioAccount;

  CommercioAccountCheckBalanceBloc({@required this.commercioAccount});

  @override
  CommercioAccountBalanceState get initialState =>
      const CommercioAccountBalanceStateInitial();

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

  CommercioAccountSendTokensBloc({@required this.commercioAccount});

  @override
  CommercioAccountSentTokensState get initialState =>
      const CommercioAccountSentTokensStateInitial();

  @override
  Stream<CommercioAccountSentTokensState> mapEventToState(
    CommercioAccountSendTokensEvent event,
  ) async* {
    try {
      yield const CommercioAccountSentTokensStateLoading();

      final result = await commercioAccount.sendTokens(
        recipientAddress: event.recipientAddress,
        amount: event.amount,
        feeAmount: event.feeAmount,
        gas: event.gas,
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

  CommercioAccountRequestFreeTokensBloc({@required this.commercioAccount});

  @override
  CommercioAccountFreeTokensState get initialState =>
      const CommercioAccountFreeTokensStateInitial();

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

  CommercioAccountGeneratePairwiseWalletBloc({@required this.commercioAccount});

  @override
  CommercioAccountPaiwiseWalletState get initialState =>
      const CommercioAccountPaiwiseWalletStateInitial();

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
