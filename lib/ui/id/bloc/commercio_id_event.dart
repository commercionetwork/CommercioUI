import 'package:commerciosdk/export.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

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
  final BroadcastingMode mode;

  const CommercioIdSetDidDocumentsEvent({
    this.didDocuments,
    this.fee,
    this.mode,
  });

  @override
  List<Object> get props => [didDocuments, fee, mode];
}

class CommercioIdRechargeTumblerEvent extends CommercioIdEvent {
  final List<StdCoin> amount;
  final StdFee fee;
  final BroadcastingMode mode;

  const CommercioIdRechargeTumblerEvent({
    @required this.amount,
    this.fee,
    this.mode,
  });

  @override
  List<Object> get props => [amount, fee, mode];
}

class CommercioIdDeriveDidPowerUpRequestEvent extends CommercioIdEvent {
  final String pairwiseAddress;
  final List<StdCoin> amount;

  const CommercioIdDeriveDidPowerUpRequestEvent({
    @required this.pairwiseAddress,
    @required this.amount,
  });

  @override
  List<Object> get props => [pairwiseAddress, amount];
}

class CommercioIdRequestDidPowerUpsEvent extends CommercioIdEvent {
  final List<RequestDidPowerUp> powerUpRequests;
  final StdFee fee;

  const CommercioIdRequestDidPowerUpsEvent({
    @required this.powerUpRequests,
    this.fee,
  });

  @override
  List<Object> get props => [powerUpRequests, fee];
}
