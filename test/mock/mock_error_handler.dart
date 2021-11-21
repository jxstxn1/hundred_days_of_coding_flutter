import 'package:hundred_days_of_coding/core/error_handler.dart';

class MockErrorHandler implements ErrorHandler {
  List<Object> errors = [];

  @override
  void showErrorSnackbar(String errorMessage, Object error) {
    errors.add(error);
  }
}
