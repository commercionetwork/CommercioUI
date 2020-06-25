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

class CommercioIdSetDidDocumentEvent extends CommercioIdEvent {
  final DidDocument didDocument;

  const CommercioIdSetDidDocumentEvent({this.didDocument});

  @override
  List<Object> get props => [];
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
