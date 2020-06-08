import 'package:meta/meta.dart';

/// Represents a generic HTTP response.
class AccountRequestResponse {
  final String message;
  final bool isSuccess;

  const AccountRequestResponse({
    @required this.message,
    @required this.isSuccess,
  });

  @override
  String toString() => message;
}

/// Represents an HTTP response with error.
class AccountRequestError extends AccountRequestResponse {
  const AccountRequestError(String error)
      : super(message: error, isSuccess: false);
}

/// Represents an HTTP response with sucess.
class AccountRequestSuccess extends AccountRequestResponse {
  const AccountRequestSuccess(String result)
      : super(message: result, isSuccess: true);
}
