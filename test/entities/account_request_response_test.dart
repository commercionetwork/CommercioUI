import 'package:commercio_ui/src/entities/account_request_response.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Constructor', () {
    test('Correct', () {
      final accountRequestResponse = AccountRequestResponse(
        isSuccess: true,
        message: 'message',
      );

      expect(accountRequestResponse.isSuccess, isTrue);
      expect(accountRequestResponse.message, 'message');
      expect(
        accountRequestResponse.toString(),
        '{ message: message, isSuccess: true }',
      );

      final accountRequestError = AccountRequestError('error');

      expect(accountRequestError.isSuccess, isFalse);
      expect(accountRequestError.message, 'error');
      expect(
        accountRequestError.toString(),
        '{ message: error, isSuccess: false }',
      );

      final accountRequestSuccess = AccountRequestSuccess('success');

      expect(accountRequestSuccess.isSuccess, isTrue);
      expect(accountRequestSuccess.message, 'success');
      expect(
        accountRequestSuccess.toString(),
        '{ message: success, isSuccess: true }',
      );
    });
  });
}
