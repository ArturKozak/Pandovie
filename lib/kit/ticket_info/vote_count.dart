import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pandovie/data/models/movie_model.dart';
import 'package:pandovie/resource/theme.dart';

class VoteCount extends StatelessWidget {
  const VoteCount({
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
            'Vote count',
            style: AppTheme.textStyle.copyWith(
              fontSize: 14.sp,
              color: AppTheme.actionColor.withOpacity(.5),
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        FittedBox(
          child: Text(
            movie.voteCount!.toStringAsFixed(1),
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
