import 'dart:async';

import 'package:untitled6/core/utils/utils.dart';

extension GetNumUtils on num {
  bool isLowerThan(num b) => Utils.isLowerThan(this, b);

  bool isGreaterThan(num b) => Utils.isGreaterThan(this, b);

  bool isEqual(num b) => Utils.isEqual(this, b);

  /// Utility to delay some callback (or code execution).
  /// to stop it.
  ///
  /// Sample:
  /// ```
  /// void main() async {
  ///   print('+ wait for 2 seconds');
  ///   await 2.delay();
  ///   print('- 2 seconds completed');
  ///   print('+ callback in 1.2sec');
  ///   1.delay(() => print('- 1.2sec callback called'));
  ///   print('currently running callback 1.2sec');
  /// }
  ///```
  Future delay([FutureOr Function()? callback]) async => Future.delayed(
    Duration(milliseconds: (this * 1000).round()),
    callback,
  );
}