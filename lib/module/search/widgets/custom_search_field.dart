import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pandovie/kit/custom_image_view.dart';
import 'package:pandovie/resource/app_icons.dart';
import 'package:pandovie/resource/theme.dart';

class CustomSearchField extends StatelessWidget {
  final void Function(String) onFieldSubmitted;
  const CustomSearchField({
    required this.onFieldSubmitted,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ).r,
      child: TextFormField(
        cursorColor: AppTheme.primaryColor,
        cursorWidth: 2.w,
        decoration: InputDecoration(
          filled: true,
          fillColor: AppTheme.actionColor,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20).r,
            borderSide: BorderSide(
              color: AppTheme.primaryColor,
              width: 1.r,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20).r,
            borderSide: BorderSide(
              color: AppTheme.primaryColor,
              width: 1.r,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20).r,
            borderSide: BorderSide(
              color: AppTheme.primaryColor,
              width: 1.r,
            ),
          ),
          suffixIconConstraints: BoxConstraints(
            maxHeight: 50.h,
            maxWidth: 50.w,
          ),
          suffixIcon: CustomImageView(
            svgPath: AppIcons.search,
            color: AppTheme.primaryColor,
            margin: const EdgeInsets.only(right: 10).r,
          ),
        ),
        onFieldSubmitted: onFieldSubmitted,
      ),
    );
  }
}
