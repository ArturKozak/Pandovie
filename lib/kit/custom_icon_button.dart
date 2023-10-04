import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pandovie/resource/theme.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
    this.alignment,
    this.margin,
    this.width,
    this.height,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  });

  final Alignment? alignment;

  final EdgeInsetsGeometry? margin;

  final double? width;

  final double? height;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  Widget iconButtonWidget() => Padding(
        padding: margin ?? EdgeInsets.zero,
        child: IconButton(
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          iconSize: (height ?? 0).r,
          padding: const EdgeInsets.all(0).r,
          icon: Container(
            alignment: Alignment.center,
            width: (width ?? 0).w,
            height: (height ?? 0).h,
            padding: padding ?? EdgeInsets.zero,
            decoration: decoration ??
                BoxDecoration(
                  color: AppTheme.primaryColor,
                  borderRadius: BorderRadius.circular(
                    12.0,
                  ).r,
                ),
            child: child,
          ),
          onPressed: onTap,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget(),
          )
        : iconButtonWidget();
  }
}
