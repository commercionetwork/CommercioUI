import 'package:equatable/equatable.dart';

abstract class CommercioState extends Equatable {
  const CommercioState();
}

abstract class CommercioLoading extends CommercioState {
  const CommercioLoading();
}

abstract class CommercioError extends CommercioState {
  final String message;

  const CommercioError(this.message);
}
