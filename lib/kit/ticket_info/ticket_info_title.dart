import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pandovie/data/models/movie_model.dart';
import 'package:pandovie/resource/theme.dart';

class TicketInfoTitle extends StatelessWidget {
  const TicketInfoTitle({
    super.key,
    required this.movie,
    this.isDetails = false,
  });

  final MovieModel movie;
  final bool isDetails;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      alignment: isDetails ? Alignment.centerLeft : Alignment.center,
      child: Text(
        movie.title,
        style: AppTheme.textStyle.copyWith(
          fontSize: 22.sp,
          color: AppTheme.primaryColor,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
