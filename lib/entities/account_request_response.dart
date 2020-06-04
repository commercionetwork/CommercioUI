import 'package:meta/meta.dart';

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

class AccountRequestError extends AccountRequestResponse {
  const AccountRequestError(String error)
      : super(message: error, isSuccess: false);
}

class AccountRequestSuccess extends AccountRequestResponse {
  const AccountRequestSuccess(String result)
      : super(message: result, isSuccess: true);
}
