import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pandovie/data/models/movie_model.dart';
import 'package:pandovie/resource/theme.dart';

class AboutInfoElement extends StatelessWidget {
  const AboutInfoElement({
    super.key,
    required this.movie,
    required this.isDetails,
    required this.name,
    required this.value,
    required this.icons,
    this.isFitted = false,
    this.isDate = false,
  });

  final MovieModel movie;
  final String icons;
  final bool isDetails;
  final String name;
  final String value;
  final bool isFitted;
  final bool isDate;

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        child: isDetails
            ? Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  isFitted
                      ? FittedBox(
                          alignment: Alignment.center,
                          child: Text(
                            value,
                            style: AppTheme.textStyle.copyWith(
                              fontSize: 16.sp,
                              color: AppTheme.actionColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        )
                      : Text(
                          value,
                          style: AppTheme.textStyle.copyWith(
                            fontSize: 16.sp,
                            color: AppTheme.actionColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                  isFitted
                      ? FittedBox(
                          alignment: Alignment.center,
                          child: Text(
                            name,
                            style: AppTheme.textStyle.copyWith(
                              fontSize: 10.sp,
                              color: AppTheme.actionColor.withOpacity(.7),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        )
                      : Text(
                          name,
                          style: AppTheme.textStyle.copyWith(
                            fontSize: 10.sp,
                            color: AppTheme.actionColor.withOpacity(.7),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                  10.verticalSpace,
                ],
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  isFitted
                      ? FittedBox(
                          alignment: Alignment.center,
                          child: Text(
                            name,
                            style: AppTheme.textStyle.copyWith(
                              fontSize: 14.sp,
                              color: AppTheme.primaryColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        )
                      : Text(
                          name,
                          style: AppTheme.textStyle.copyWith(
                            fontSize: 16.sp,
                            color: AppTheme.primaryColor,
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
                              color: AppTheme.primaryColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        )
                      : Text(
                          value,
                          style: AppTheme.textStyle.copyWith(
                            fontSize: 22.sp,
                            color: AppTheme.primaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                ],
              ),
      ),
    );
  }
}
