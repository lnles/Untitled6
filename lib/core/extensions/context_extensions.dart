import 'dart:async';
import 'dart:developer' as dev;

import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';

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

  void showSnackBar(String message) => ScaffoldMessenger.of(this).showSnackBar(
        SnackBar(
          content: Text(message),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10), // 10
              side: BorderSide(color: Colors.black, width: 1)),
          showCloseIcon: true,
          behavior: SnackBarBehavior.floating,
        ),
      );

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

/// A class to log messages in the app.
/// It uses the `dart:developer` package to log messages.
class Log {
  List<String> simpleStackTrace(StackTrace stackTrace) =>
      stackTrace.toString().split('\n').sublist(0, 3);
  String message(dynamic value) => value is StackTrace ? simpleStackTrace(value).join('\n') :
      '[${Jiffy.now().format(pattern: "HH:mm:ss:SSS")}]: $value';

  Future<void> call(dynamic value) async => dev.log(message(value), name: 'L');

  Future<void> i(dynamic value) async => dev.log(message(value), name: 'I');

  Future<void> d(dynamic value) async => dev.log(message(value), name: 'D');

  Future<void> w(dynamic value) async => dev.log(message(value), name: 'W');

  Future<void> e(dynamic error, StackTrace? stackTrace) async =>
      dev.log(message(stackTrace ?? StackTrace.current), name: 'E', error: error);
}

/// A global instance of [Log] class.
final log = Log();
