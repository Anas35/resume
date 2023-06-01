import 'package:flutter/material.dart';

/// A Common Container with set of default of property 
/// that can be resue
class CommonContainer extends StatelessWidget {
  const CommonContainer({
    super.key,
    this.color = const Color(0xFF1c1a1e),
    this.size,
    this.child, 
    this.padding = const EdgeInsets.all(8.0),
  });

  final Color? color;
  final Size? size;
  final Widget? child;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size?.width,
      height: size?.height,
      padding: padding,
      alignment: Alignment.center,
      margin: const EdgeInsets.all(4.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(Radius.circular(16.0)),
      ),
      child: child,
    );
  }
}
