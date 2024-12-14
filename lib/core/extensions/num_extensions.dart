import 'dart:async';

extension NumUtils on num {

  Future delay([FutureOr Function()? callback]) async => Future.delayed(
    Duration(milliseconds: (this * 1000).round()),
    callback,
  );
}