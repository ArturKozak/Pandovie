import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pandovie/data/models/movie_model.dart';
import 'package:pandovie/kit/custom_image_view.dart';
import 'package:pandovie/kit/ticket_info/flex_info_separator.dart';
import 'package:pandovie/resource/theme.dart';

class AbputInfoElement extends StatelessWidget {
  const AbputInfoElement({
    super.key,
    required this.movie,
    required this.isrow,
    required this.name,
    required this.value,
    required this.icons,
    this.isFitted = false,
    this.isDate = false,
  });

  final MovieModel movie;
  final String icons;
  final bool isrow;
  final String name;
  final String value;
  final bool isFitted;
  final bool isDate;

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      child: isrow && isDate
          ? Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CustomImageView(
                  svgPath: icons,
                  color: AppTheme.controlColor,
                  height: 18.h,
                  width: 18.h,
                ),
                4.horizontalSpace,
                Text(
                  name,
                  style: AppTheme.textStyle.copyWith(
                    fontSize: 14.sp,
                    color: AppTheme.actionColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const FlexInfoSeparator(),
                SizedBox(
                  width: 70.w,
                  child: FittedBox(
                    alignment: Alignment.center,
                    child: Text(
                      value,
                      style: AppTheme.textStyle.copyWith(
                        fontSize: 14.sp,
                        color: AppTheme.controlColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            )
          : AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              child: isrow
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        CustomImageView(
                          svgPath: icons,
                          color: AppTheme.controlColor,
                          height: 18.h,
                          width: 18.h,
                        ),
                        4.horizontalSpace,
                        Text(
                          name,
                          style: AppTheme.textStyle.copyWith(
                            fontSize: 14.sp,
                            color: AppTheme.actionColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const FlexInfoSeparator(),
                        Text(
                          value,
                          style: AppTheme.textStyle.copyWith(
                            fontSize: 14.sp,
                            color: AppTheme.controlColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    )
                  : Column(
                      children: [
                        isFitted
                            ? FittedBox(
                                alignment: Alignment.center,
                                child: Text(
                                  name,
                                  style: AppTheme.textStyle.copyWith(
                                    fontSize: 14.sp,
                                    color: AppTheme.actionColor,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              )
                            : Text(
                                name,
                                style: AppTheme.textStyle.copyWith(
                                  fontSize: 14.sp,
                                  color: AppTheme.actionColor,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                        isFitted
                            ? FittedBox(
                                alignment: Alignment.center,
                                child: Text(
                                  value,
                                  style: AppTheme.textStyle.copyWith(
                                    fontSize: 14.sp,
                                    color: AppTheme.controlColor,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              )
                            : Text(
                                value,
                                style: AppTheme.textStyle.copyWith(
                                  fontSize: 14.sp,
                                  color: AppTheme.controlColor,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                      ],
                    ),
            ),
    );
  }
}
