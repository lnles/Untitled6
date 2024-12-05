import 'package:flutter/material.dart';
import 'package:untitled6/core/utils/ui.dart';
import 'package:untitled6/main.dart';

class AlertUtils {
  static void hideSnackBar() {
    App.scaffoldMessengerKey.currentState?.hideCurrentSnackBar();
  }

  static void successSnackBar(String message, {SnackBarAction? action}) {
    (App.scaffoldMessengerKey.currentState!)
      ..removeCurrentSnackBar()
      ..showSnackBar(Ui.successSnack(message, action: action));
  }

  static void errorSnackBar(
    String message, {
    SnackBarAction? action,
    Duration? duration,
  }) {
    (App.scaffoldMessengerKey.currentState!)
      ..removeCurrentSnackBar()
      ..showSnackBar(
        Ui.errorSnack(
          message,
          action: action,
          duration: duration,
        ),
      );
  }

  static void warningSnackBar(
    String message, {
    SnackBarAction? action,
    Duration? duration,
  }) {
    (App.scaffoldMessengerKey.currentState!)
      ..removeCurrentSnackBar()
      ..showSnackBar(
        Ui.warningSnack(
          message,
          action: action,
          duration: duration,
        ),
      );
  }
}
