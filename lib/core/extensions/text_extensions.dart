import 'package:flutter/material.dart';

extension TextFontWeight on TextStyle {
  TextStyle bold() => copyWith(fontWeight: FontWeight.bold);

  TextStyle semiBold() => copyWith(fontWeight: FontWeight.w600);

  TextStyle medium() => copyWith(fontWeight: FontWeight.w500);

  TextStyle regular() => copyWith(fontWeight: FontWeight.normal);

  TextStyle light() => copyWith(fontWeight: FontWeight.w300);

  TextStyle extraLight() => copyWith(fontWeight: FontWeight.w200);

  TextStyle thin() => copyWith(fontWeight: FontWeight.w100);
}
