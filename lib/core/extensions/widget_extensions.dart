import 'package:flutter/material.dart';

/// Allows you to add padding to a widget
extension PaddingExtension on Widget {
  Widget padding(
      {double? top, double? bottom, double? left, double? right, double? all}) {
    final edge = all != null
        ? EdgeInsets.all(all)
        : EdgeInsets.only(left: left ?? 0, top: top ?? 0,
      right: right ?? 0,
      bottom: bottom ?? 0,
    );
    return Padding(
      padding: edge,
      child: this,
    );
  }
}

extension MarginExtension on Widget {
  Widget margin(
      {double? top, double? bottom, double? left, double? right, double? all}) {
    final edge = all != null
        ? EdgeInsets.all(all)
        : EdgeInsets.only(left: left ?? 0, top: top ?? 0,
      right: right ?? 0,
      bottom: bottom ?? 0,
    );
    return Container(
      margin: edge,
      child: this,
    );
  }
}

extension WidgetSliverBoxExt on Widget {
  /// 将当前Widget包装在SliverToBoxAdapter中，以便在CustomScrollView中使用
  Widget get sliverBox => SliverToBoxAdapter(child: this);
}

extension ExpandedExtension on Widget {
  /// 将当前Widget包装在Expanded中，使其在Flex布局中可以扩展以填充可用空间
  Widget get expanded => Expanded(child: this);
}

extension TapCallbackExtension on Widget {
  Widget onTap(VoidCallback? onTap) {
    return InkWell(
      onTap: onTap,
      child: this,
    );
  }
}

extension AlignExtension on Widget {
  Widget align(AlignmentGeometry alignment) {
    return Align(
      alignment: alignment,
      child: this,
    );
  }
}

extension SizedBoxExt on Widget {
  Widget size({double? width, double? height}) {
    return SizedBox(
      width: width,
      height: height,
      child: this,
    );
  }
}

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
