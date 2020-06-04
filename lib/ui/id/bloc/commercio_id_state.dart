part of 'commercio_id_bloc.dart';

abstract class CommercioIdState extends CommercioState {
  const CommercioIdState();

  @override
  List<Object> get props => [];
}

class CommercioIdInitial extends CommercioIdState {
  const CommercioIdInitial();
}

class CommercioIdWithAccount extends CommercioIdState {
  final StatefulCommercioAccount commercioAccount;

  const CommercioIdWithAccount({@required this.commercioAccount});
}

class CommercioIdWithGeneratedKeys extends CommercioIdState {
  final StatefulCommercioId commercioId;

  const CommercioIdWithGeneratedKeys({@required this.commercioId});

  @override
  List<Object> get props => [commercioId];
}

class CommercioIdWithRestoredKeys extends CommercioIdState {
  final StatefulCommercioId commercioId;

  const CommercioIdWithRestoredKeys({@required this.commercioId});

  @override
  List<Object> get props => [commercioId];
}

class CommercioIdWithDeletedKeys extends CommercioIdState {
  final StatefulCommercioId commercioId;

  const CommercioIdWithDeletedKeys({@required this.commercioId});

  @override
  List<Object> get props => [commercioId];
}

class CommercioIdWithDerivedDidDocument extends CommercioIdState {
  final StatefulCommercioId commercioId;
  final DidDocument didDocument;

  const CommercioIdWithDerivedDidDocument({
    @required this.commercioId,
    @required this.didDocument,
  });

  @override
  List<Object> get props => [commercioId, didDocument];
}

class CommercioIdSetDidDocument extends CommercioIdState {
  final StatefulCommercioId commercioId;
  final TransactionResult transactionResult;

  const CommercioIdSetDidDocument({
    @required this.commercioId,
    @required this.transactionResult,
  });

  @override
  List<Object> get props => [commercioId, transactionResult];
}

class CommercioIdRechargedGovernment extends CommercioIdState {
  final StatefulCommercioId commercioId;
  final TransactionResult transactionResult;

  const CommercioIdRechargedGovernment({
    @required this.commercioId,
    @required this.transactionResult,
  });

  @override
  List<Object> get props => [commercioId, transactionResult];
}

class CommercioIdRequestedDidPowerUp extends CommercioIdState {
  final StatefulCommercioId commercioId;
  final TransactionResult transactionResult;

  const CommercioIdRequestedDidPowerUp({
    @required this.commercioId,
    @required this.transactionResult,
  });

  @override
  List<Object> get props => [commercioId, transactionResult];
}
