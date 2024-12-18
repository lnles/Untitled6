import 'dart:developer';
import 'dart:io';

import 'package:flutter/foundation.dart';

class ConsoleColor {
  static const String reset = '\x1B[0m';
  static const String black = '\x1B[30m';
  static const String red = '\x1B[31m';
  static const String green = '\x1B[32m';
  static const String yellow = '\x1B[33m';
  static const String blue = '\x1B[34m';
  static const String magenta = '\x1B[35m';
  static const String cyan = '\x1B[36m';
  static const String white = '\x1B[37m';

  static void printColor(String text, String color) {
    if (stdout.supportsAnsiEscapes) {
      if (kDebugMode) {
        print('$color$text$reset');
      }
    } else {
      if (kDebugMode) {
        print(text);
      }
    }
  }
}

void logColored(String str, {String color = ConsoleColor.reset}) {
  log('$color$str${ConsoleColor.reset}');
}

String strRed(String str) => '${ConsoleColor.red}$str${ConsoleColor.reset}';
String strBlue(String str) => '${ConsoleColor.blue}$str${ConsoleColor.reset}';
String strGreen(String str) => '${ConsoleColor.green}$str${ConsoleColor.reset}';
String strYellow(String str) => '${ConsoleColor.yellow}$str${ConsoleColor.reset}';

class Log {
  static const String _reset = '\x1B[0m';
  static const String _black = '\x1B[30m';
  static const String _red = '\x1B[31m';
  static const String _green = '\x1B[32m';
  static const String _yellow = '\x1B[33m';
  static const String _blue = '\x1B[34m';
  static const String _magenta = '\x1B[35m';
  static const String _cyan = '\x1B[36m';
  static const String _white = '\x1B[37m';

  static void red(String msg) => print('$_red$msg$_reset');
  static void blue(String msg) => print('$_blue$msg$_reset');
  static void green(String msg) => print('$_green$msg$_reset');
  static void yellow(String msg) => print('$_yellow$msg$_reset');
  static void cyan(String msg) => print('$_cyan$msg$_reset');
  static void grey(String msg) => print('$_white$msg$_reset');
  static void magenta(String msg) => print('$_magenta$msg$_reset');
  static void white(String msg) => print(msg);
}

main() {
  Log.red('This is a red message');
  Log.blue('This is a blue message');
  Log.green('This is a green message');
  Log.yellow('This is a yellow message');
  Log.cyan('This is a cyan message');
  Log.grey('This is a grey message');
  Log.magenta('This is a magenta message');
  Log.white('This is a white message');
}