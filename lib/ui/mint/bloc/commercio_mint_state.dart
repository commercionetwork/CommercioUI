part of 'commercio_mint_bloc.dart';

abstract class CommercioMintState extends CommercioState {
  const CommercioMintState();
}

class CommercioMintInitial extends CommercioMintState {
  const CommercioMintInitial();

  @override
  List<Object> get props => [];
}

class CommercioMintOpenedCdp extends CommercioMintState {
  final StatefulCommercioMint commercioMint;
  final TransactionResult transactionResult;

  const CommercioMintOpenedCdp(
      {@required this.commercioMint, @required this.transactionResult});

  @override
  List<Object> get props => [commercioMint, transactionResult];
}

class CommercioMintClosedCdp extends CommercioMintState {
  final StatefulCommercioMint commercioMint;
  final TransactionResult transactionResult;

  const CommercioMintClosedCdp(
      {@required this.commercioMint, @required this.transactionResult});

  @override
  List<Object> get props => [commercioMint, transactionResult];
}
