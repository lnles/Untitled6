import 'package:flutter/material.dart';

/// Allows you to add padding to a widget
extension PaddingExtension on Widget {
  Widget padding(EdgeInsetsGeometry padding) =>
      Padding(padding: padding, child: this);
}

/// Allows you to add margin to a widget
extension MarginExtension on Widget {
  Widget margin(EdgeInsetsGeometry margin) =>
      Container(margin: margin, child: this);
}

/// Allows you to insert widgets inside a CustomScrollView
extension WidgetSliverBoxExt on Widget {
  Widget sliverToBox() => SliverToBoxAdapter(child: this);
}

/// Allows you to add a background color to a widget
extension ExpandedExtension on Widget {
  Widget expanded() => Expanded(child: this);
}

/// Allows you to add a flex to a widget
extension FlexExtension on Widget {
  Widget flexible({int flex = 1, FlexFit fit = FlexFit.loose}) =>
      Flexible(flex: flex, fit: fit, child: this);
}

/// Allows you to add a tap callback to a widget
extension TapCallbackExtension on Widget {
  Widget onTap(VoidCallback? onTap) => InkWell(onTap: onTap, child: this);
}

/// Allows you to add an alignment to a widget
extension AlignExtension on Widget {
  Widget align(AlignmentGeometry alignment) =>
      Align(alignment: alignment, child: this);

  Widget center() => Center(child: this);

  Widget left() => Align(alignment: Alignment.centerLeft, child: this);

  Widget right() => Align(alignment: Alignment.centerRight, child: this);
}

/// Allows you to add a size to a widget
extension SizedBoxExt on Widget {
  Widget size({double? width, double? height}) =>
      SizedBox(width: width, height: height, child: this);
}

/// Allows you to add a decoration to a widget
extension DecorationrExtension on Widget {
  Widget decoratedBox(BoxDecoration decoration) =>
      DecoratedBox(decoration: decoration, child: this);
}

extension TextFontWeight on TextStyle {
  TextStyle bold() => copyWith(fontWeight: FontWeight.bold);

  TextStyle semiBold() => copyWith(fontWeight: FontWeight.w600);

  TextStyle medium() => copyWith(fontWeight: FontWeight.w500);

  TextStyle regular() => copyWith(fontWeight: FontWeight.normal);

  TextStyle light() => copyWith(fontWeight: FontWeight.w300);

  TextStyle extraLight() => copyWith(fontWeight: FontWeight.w200);

  TextStyle thin() => copyWith(fontWeight: FontWeight.w100);
}
