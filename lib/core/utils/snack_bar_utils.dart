import 'package:flutter/material.dart';
import 'package:untitled6/main.dart';

class SnackBarUtils {
  static void showSnackBar(String message) {
    App.scaffoldMessengerKey.currentState!
        .showSnackBar(SnackBar(content: Text(message)));
  }
}
