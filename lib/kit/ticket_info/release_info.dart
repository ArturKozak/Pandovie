import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pandovie/data/models/movie_model.dart';
import 'package:pandovie/extension/date_time_extension.dart';
import 'package:pandovie/resource/theme.dart';

class ReleaseInfo extends StatelessWidget {
  const ReleaseInfo({
    super.key,
    required this.movie,
  });

  final MovieModel movie;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FittedBox(
          child: Text(
            'Release Date',
            style: AppTheme.textStyle.copyWith(
              fontSize: 14.sp,
              color: AppTheme.actionColor.withOpacity(.5),
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        FittedBox(
          child: Text(
            movie.releaseDate!.formatDate(),
            style: AppTheme.textStyle.copyWith(
              fontSize: 18.sp,
              color: AppTheme.actionColor,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
