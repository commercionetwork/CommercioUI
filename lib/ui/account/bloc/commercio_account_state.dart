part of 'commercio_account_bloc.dart';

abstract class CommercioAccountState extends CommercioState {
  const CommercioAccountState();
}

class CommercioAccountInitial extends CommercioAccountState {
  @override
  List<Object> get props => [];
}

class CommercioAccountWithWallet extends CommercioAccountState {
  final StatefulCommercioAccount commercioAccount;

  const CommercioAccountWithWallet({@required this.commercioAccount});

  @override
  List<Object> get props => [commercioAccount];
}

class CommercioAccountGeneratedWithWallet extends CommercioAccountWithWallet {
  const CommercioAccountGeneratedWithWallet(
      {@required StatefulCommercioAccount commercioAccount})
      : super(commercioAccount: commercioAccount);
}

class CommercioAccountRestoredWithWallet extends CommercioAccountWithWallet {
  const CommercioAccountRestoredWithWallet(
      {@required StatefulCommercioAccount commercioAccount})
      : super(commercioAccount: commercioAccount);
}

class CommercioAccountQrWithWallet extends CommercioAccountWithWallet {
  const CommercioAccountQrWithWallet(
      {@required StatefulCommercioAccount commercioAccount})
      : super(commercioAccount: commercioAccount);
}

class CommercioAccountWithWalletFreeTokens extends CommercioAccountState {
  final StatefulCommercioAccount commercioAccount;
  final AccountRequestResponse accountRequestResponse;

  const CommercioAccountWithWalletFreeTokens({
    @required this.commercioAccount,
    @required this.accountRequestResponse,
  });

  @override
  List<Object> get props => [commercioAccount, accountRequestResponse];
}

class CommercioAccountBalance extends CommercioAccountState {
  final StatefulCommercioAccount commercioAccount;
  final List<StdCoin> balance;

  const CommercioAccountBalance({
    @required this.commercioAccount,
    @required this.balance,
  });

  @override
  List<Object> get props => [commercioAccount, balance];
}

class CommercioAccountSentTokens extends CommercioAccountState {
  final StatefulCommercioAccount commercioAccount;
  final TransactionResult result;

  const CommercioAccountSentTokens({
    @required this.commercioAccount,
    @required this.result,
  });

  @override
  List<Object> get props => [commercioAccount, result];
}

class CommercioAccountGeneratedPaiwiseWallet extends CommercioAccountState {
  final Wallet wallet;

  const CommercioAccountGeneratedPaiwiseWallet({
    @required this.wallet,
  });

  @override
  List<Object> get props => [wallet];
}
