import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      this.width,
      this.height,
      required this.child,
      this.color,
      this.boxShadow,
      this.borderRadius,
      this.padding,
      this.onTap});
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? padding;
  final Widget child;
  final Color? color;
  final List<BoxShadow>? boxShadow;
  final BorderRadiusGeometry? borderRadius;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: padding ?? const EdgeInsets.all(16),
        width: width ?? double.infinity,
        height: height,
        decoration: BoxDecoration(
          boxShadow: boxShadow,
          color: color ?? Theme.of(context).primaryColor,
          borderRadius: borderRadius ?? BorderRadius.circular(16),
        ),
        child: child,
      ),
    );
  }
}
