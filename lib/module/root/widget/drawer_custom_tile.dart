import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pandovie/kit/custom_image_view.dart';
import 'package:pandovie/resource/theme.dart';

class CustomTile extends StatelessWidget {
  static const _contentPadding = 5.0;
  static const _visualDensity = -4.0;
  static const _borderRadius = 12.0;
  static const _topPadding = 16.0;

  final bool isSelected;
  final String svgPath;
  final String name;
  final VoidCallback onTap;
  const CustomTile({
    required this.isSelected,
    required this.onTap,
    required this.svgPath,
    required this.name,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: _topPadding,
      ).r,
      child: ListTile(
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            color: AppTheme.actionColor,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(
            _borderRadius,
          ).r,
        ),
        minLeadingWidth: 0.w,
        selectedTileColor: AppTheme.actionColor,
        selectedColor: AppTheme.primaryColor,
        textColor: AppTheme.actionColor,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: _contentPadding,
        ).r,
        visualDensity: const VisualDensity(vertical: _visualDensity),
        leading: CustomImageView(
          svgPath: svgPath,
          color: isSelected ? AppTheme.primaryColor : AppTheme.actionColor,
        ),
        title: Text(
          name,
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
        selected: isSelected,
        onTap: onTap,
      ),
    );
  }
}
