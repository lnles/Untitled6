import 'package:flutter/material.dart';

extension TextFontWeight on TextStyle {
  TextStyle get bold => copyWith(fontWeight: FontWeight.bold);

  TextStyle get semiBold => copyWith(fontWeight: FontWeight.w600);

  TextStyle get medium => copyWith(fontWeight: FontWeight.w500);

  TextStyle get regular => copyWith(fontWeight: FontWeight.normal);

  TextStyle get light => copyWith(fontWeight: FontWeight.w300);

  TextStyle get extraLight => copyWith(fontWeight: FontWeight.w200);

  TextStyle get thin => copyWith(fontWeight: FontWeight.w100);
}
