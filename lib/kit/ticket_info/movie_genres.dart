import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pandovie/data/models/movie_model.dart';
import 'package:pandovie/kit/custom_image_view.dart';
import 'package:pandovie/kit/ticket_info/flex_info_separator.dart';
import 'package:pandovie/resource/app_icons.dart';
import 'package:pandovie/resource/theme.dart';

class MovieGenres extends StatelessWidget {
  const MovieGenres({
    super.key,
    required this.movie,
  });

  final MovieModel movie;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            CustomImageView(
              svgPath: AppIcons.genred,
              color: AppTheme.controlColor,
              height: 18.h,
              width: 18.h,
            ),
            Text(
              'Genres:',
              style: AppTheme.textStyle.copyWith(
                fontSize: 14.sp,
                color: AppTheme.actionColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        const FlexInfoSeparator(),
        ...movie.genres!
            .map(
              (e) => Expanded(
                flex: 3,
                child: Text(
                  e.name,
                  style: AppTheme.textStyle.copyWith(
                    fontSize: 14.sp,
                    color: AppTheme.controlColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            )
            .toList(),
      ],
    );
  }
}
