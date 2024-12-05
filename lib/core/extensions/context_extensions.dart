import 'dart:async';
import 'dart:developer' as developer;

import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  ThemeData get theme => Theme.of(this);
  MediaQueryData get mediaQuery => MediaQuery.of(this);
  Orientation get orientation => MediaQuery.orientationOf(this);
  dynamic get arguments => ModalRoute.of(this)!.settings.arguments;

  Size get size => mediaQuery.size;
  double get height => size.height;
  double get width => size.width;
  Color get primary => theme.colorScheme.primary;
  Color get secondary => theme.colorScheme.secondary;
  Color get backgroundColor => theme.colorScheme.surface;
  Color get tertiary => theme.colorScheme.tertiary;
  Color get inversePrimary => theme.colorScheme.inversePrimary;
  bool get isDarkTheme => theme.brightness == Brightness.dark;
  bool get isLandScape => orientation == Orientation.landscape;
  bool get isKeyboardVisible => MediaQuery.viewInsetsOf(this).bottom != 0;

  void hideKeyboard() => FocusScope.of(this).unfocus();
  void unFocus() => FocusScope.of(this).requestFocus(FocusNode());

  void showSnackBar(String message) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }

  Future showBottomSheet(Widget child,
      {bool isDismissible = true, bool isScrollControlled = false}) =>
      showModalBottomSheet(
        context: this,
        useSafeArea: true,
        isDismissible: isDismissible,
        isScrollControlled: isScrollControlled,
        builder: (context) => child,
      );
}

final _serverErrorController = StreamController<bool>.broadcast();

Stream<bool> get serverErrorStream => _serverErrorController.stream;

void disposeServerErrorStream() {
  _serverErrorController.close();
}

void handleServerError(bool hasError) {
  _serverErrorController.add(hasError);
}

log(dynamic value) {
  developer.log('$value', name: 'Flutter');
}
