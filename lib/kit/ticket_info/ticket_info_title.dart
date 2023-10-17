import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pandovie/data/models/movie_model.dart';
import 'package:pandovie/resource/theme.dart';

class TicketInfoTitle extends StatelessWidget {
  const TicketInfoTitle({
    super.key,
    required this.movie,
  });

  final MovieModel movie;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Center(
        child: Text(
          movie.title,
          style: AppTheme.textStyle.copyWith(
            fontSize: 22.sp,
            color: AppTheme.actionColor,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
