import 'package:commerciosdk/export.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

abstract class CommercioIdEvent extends Equatable {
  const CommercioIdEvent();
}

class CommercioIdGenerateKeysEvent extends CommercioIdEvent {
  const CommercioIdGenerateKeysEvent();

  @override
  List<Object> get props => [];
}

class CommercioIdRestoreKeysEvent extends CommercioIdEvent {
  const CommercioIdRestoreKeysEvent();

  @override
  List<Object> get props => [];
}

class CommercioIdDeleteKeysEvent extends CommercioIdEvent {
  const CommercioIdDeleteKeysEvent();

  @override
  List<Object> get props => [];
}

class CommercioIdDeriveDidDocumentEvent extends CommercioIdEvent {
  const CommercioIdDeriveDidDocumentEvent();

  @override
  List<Object> get props => [];
}

class CommercioIdSetDidDocumentsEvent extends CommercioIdEvent {
  final List<DidDocument> didDocuments;
  final StdFee fee;

  const CommercioIdSetDidDocumentsEvent({this.didDocuments, this.fee});

  @override
  List<Object> get props => [didDocuments, fee];
}

class CommercioIdRechargeTumblerEvent extends CommercioIdEvent {
  final List<StdCoin> rechargeAmount;
  final List<StdCoin> rechargeFee;
  final String rechargeGas;

  const CommercioIdRechargeTumblerEvent({
    @required this.rechargeAmount,
    this.rechargeFee,
    this.rechargeGas,
  });

  @override
  List<Object> get props => [rechargeAmount, rechargeFee, rechargeGas];
}

class CommercioIdRequestDidPowerUpEvent extends CommercioIdEvent {
  final String pairwiseAddress;
  final List<StdCoin> amount;
  final RSAPrivateKey rsaSignaturePrivateKey;

  const CommercioIdRequestDidPowerUpEvent({
    @required this.pairwiseAddress,
    @required this.amount,
    this.rsaSignaturePrivateKey,
  });

  @override
  List<Object> get props => [pairwiseAddress, amount, rsaSignaturePrivateKey];
}
