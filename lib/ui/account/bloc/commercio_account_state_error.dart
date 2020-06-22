import 'package:commercio_ui/commercio_ui.dart';

class CommercioAccountError extends CommercioAccountState
    implements CommercioError {
  @override
  final String message;

  const CommercioAccountError(this.message);

  @override
  List<Object> get props => [message];
}

class CommercioAccountGenerateWalletError extends CommercioAccountError {
  const CommercioAccountGenerateWalletError(String message) : super(message);
}

class CommercioAccountRestoreWalletError extends CommercioAccountError {
  const CommercioAccountRestoreWalletError(String message) : super(message);
}

class CommercioAccountRequestFreeTokensError extends CommercioAccountError {
  const CommercioAccountRequestFreeTokensError(String message) : super(message);
}

class CommercioAccountCheckBalanceError extends CommercioAccountError {
  const CommercioAccountCheckBalanceError(String message) : super(message);
}

class CommercioAccountSendTokensError extends CommercioAccountError {
  const CommercioAccountSendTokensError(String message) : super(message);
}

class CommercioAccountGenerateQrError extends CommercioAccountError {
  const CommercioAccountGenerateQrError(String message) : super(message);
}

class CommercioAccountGeneratePairwiseWalletError
    extends CommercioAccountError {
  const CommercioAccountGeneratePairwiseWalletError(String message)
      : super(message);
}
