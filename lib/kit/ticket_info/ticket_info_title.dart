import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pandovie/data/models/movie_model.dart';
import 'package:pandovie/resource/theme.dart';

class TicketInfoTitle extends StatelessWidget {
  static const _opacityDuration = 350;
  static const _horizontalPadding = 30.0;

  const TicketInfoTitle({
    super.key,
    required this.titleBottomPosition,
    required this.movie,
    required this.opacity,
  });

  final double titleBottomPosition;
  final double opacity;
  final MovieModel movie;

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: const Duration(
        milliseconds: 300,
      ),
      left: _horizontalPadding.w,
      right: _horizontalPadding.w,
      bottom: titleBottomPosition,
      child: Center(
        child: AnimatedOpacity(
          duration: const Duration(
            milliseconds: _opacityDuration,
          ),
          opacity: opacity,
          child: FittedBox(
            child: Text(
              movie.title,
              style: AppTheme.textStyle.copyWith(
                fontSize: 22.sp,
                color: AppTheme.actionColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
