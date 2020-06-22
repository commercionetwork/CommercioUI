import 'package:commercio_ui/commercio_ui.dart';

class CommercioIdError extends CommercioIdState implements CommercioError {
  @override
  final String message;

  const CommercioIdError(this.message);

  @override
  List<Object> get props => [message];
}

class CommercioIdGeneratingKeysError extends CommercioIdError {
  const CommercioIdGeneratingKeysError(String message) : super(message);
}

class CommercioIdRestoringKeysError extends CommercioIdError {
  const CommercioIdRestoringKeysError(String message) : super(message);
}

class CommercioIdDeletingKeysError extends CommercioIdError {
  const CommercioIdDeletingKeysError(String message) : super(message);
}

class CommercioIdDerivingDidDocumentError extends CommercioIdError {
  const CommercioIdDerivingDidDocumentError(String message) : super(message);
}

class CommercioIdSettingDidDocumentError extends CommercioIdError {
  const CommercioIdSettingDidDocumentError(String message) : super(message);
}

class CommercioIdRechargingGovernmentError extends CommercioIdError {
  const CommercioIdRechargingGovernmentError(String message) : super(message);
}

class CommercioIdRequestingDidPowerUpError extends CommercioIdError {
  const CommercioIdRequestingDidPowerUpError(String message) : super(message);
}
