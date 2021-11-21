import 'package:flutter/material.dart';

class ErrorHandler {
  ErrorHandler({ScaffoldMessengerState? scaffoldMessengerState}) : _scaffoldMessengerState = scaffoldMessengerState;

  final ScaffoldMessengerState? _scaffoldMessengerState;
  void showErrorSnackbar(String errorMessage, Object error) {
    debugPrint(error.toString());
    _scaffoldMessengerState?.clearSnackBars();
    _scaffoldMessengerState?.showSnackBar(
      SnackBar(
        content: Text(errorMessage),
      ),
    );
  }
}
