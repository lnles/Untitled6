import 'package:flutter/material.dart';

/// Allows you to add padding to a widget
extension PaddingExtension on Widget {
  Widget padding(
      {double? top, double? bottom, double? left, double? right, double? all}) {
    return Padding(
      padding:
      EdgeInsets.fromLTRB(left ?? 0, top ?? 0, right ?? 0, bottom ?? 0),
      child: this,
    );
  }
}

/// Allows you to add margin to a widget
extension MarginExtension on Widget {
  Widget margin(
      {double? top, double? bottom, double? left, double? right, double? all}) {
    return Container(
      margin:
      EdgeInsets.fromLTRB(left ?? 0, top ?? 0, right ?? 0, bottom ?? 0),
      child: this,
    );
  }
}

/// Allows you to insert widgets inside a CustomScrollView
extension WidgetSliverBoxExt on Widget {
  Widget get sliverBox => SliverToBoxAdapter(child: this);
}

/// Allows you to add a tap callback to a widget
extension TapCallbackExtension on Widget {
  Widget onTap(VoidCallback? onTap) {
    return InkWell(
      onTap: onTap,
      child: this,
    );
  }
}

/// Allows you to add a hover effect to a widget
extension AlignExtension on Widget {
  Widget align(AlignmentGeometry alignment) {
    return Align(
      alignment: alignment,
      child: this,
    );
  }
}

/// Allows you to add a background color to a widget
extension ExpandedExtension on Widget {
  Widget expanded({int flex = 1}) {
    return Expanded(
      flex: flex,
      child: this,
    );
  }
}

/// Allows you to add a size to a widget
extension SizedBoxExt on Widget {
  Widget size(double width, double height) {
    return SizedBox(
      width: width,
      height: height,
      child: this,
    );
  }
}

/// Allows you to add a decoration to a widget
extension DecorationrExtension on Widget {
  Widget decoration(
      {Color? color,
        DecorationImage? image,
        Border? border,
        BorderRadius? borderRadius,
        List<BoxShadow>? boxShadow,
        Gradient? gradient,
        BlendMode? backgroundBlendMode,
        BoxShape shape = BoxShape.rectangle}) {
    return DecoratedBox(
      decoration: BoxDecoration(
          color: color,
          image: image,
          border: border,
          borderRadius: borderRadius,
          boxShadow: boxShadow,
          gradient: gradient,
          backgroundBlendMode: backgroundBlendMode,
          shape: shape),
      child: this,
    );
  }
}
