part of 'commercio_mint_bloc.dart';

class CommercioMintError extends CommercioMintState implements CommercioError {
  @override
  final String message;

  const CommercioMintError(this.message);

  @override
  List<Object> get props => [message];
}

class CommercioMintOpenCdpError extends CommercioMintError {
  const CommercioMintOpenCdpError(String message) : super(message);
}

class CommercioMintCloseCdpError extends CommercioMintError {
  const CommercioMintCloseCdpError(String message) : super(message);
}
