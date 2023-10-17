import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:pandovie/data/models/movie_model.dart';
import 'package:pandovie/kit/custom_image_view.dart';
import 'package:pandovie/kit/ticket_info/flex_info_separator.dart';
import 'package:pandovie/resource/app_icons.dart';
import 'package:pandovie/resource/theme.dart';

class MovieBudget extends StatelessWidget {
  const MovieBudget({
    super.key,
    required this.movie,
  });

  final MovieModel movie;

  @override
  Widget build(BuildContext context) {
    final convector = NumberFormat.simpleCurrency();

    return Row(
      children: [
        Row(
          children: [
            CustomImageView(
              svgPath: AppIcons.dollar,
              color: AppTheme.controlColor,
              height: 18.h,
              width: 18.h,
            ),
            Text(
              'Budget',
              style: AppTheme.textStyle.copyWith(
                fontSize: 14.sp,
                color: AppTheme.actionColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        const FlexInfoSeparator(),
        FittedBox(
          child: Text(
            convector.format(movie.budget),
            style: AppTheme.textStyle.copyWith(
              fontSize: 14.sp,
              color: AppTheme.controlColor,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
