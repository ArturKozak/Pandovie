import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pandovie/data/models/movie_model.dart';
import 'package:pandovie/resource/theme.dart';

class TicketInfoOverView extends StatelessWidget {
  static const _opacityDuration = 350;
  static const _horizontalPadding = 24.0;
  static final _textHeight = 60.h;

  const TicketInfoOverView({
    super.key,
    required this.overviewBottomPosition,
    required this.movie,
    required this.opacity,
    required this.isExpanded,
  });

  final double overviewBottomPosition;
  final double opacity;
  final MovieModel movie;
  final bool isExpanded;

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      curve: Curves.elasticInOut,
      duration: const Duration(
        milliseconds: _opacityDuration,
      ),
      left: _horizontalPadding.w,
      right: _horizontalPadding.w,
      bottom: overviewBottomPosition,
      child: Center(
        child: AnimatedOpacity(
          duration: const Duration(
            milliseconds: _opacityDuration,
          ),
          opacity: opacity,
          child: AnimatedContainer(
            duration: const Duration(
              milliseconds: _opacityDuration,
            ),
            height: isExpanded ? 120.h : _textHeight,
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Text(
                movie.overview,
                textAlign: TextAlign.justify,
                style: AppTheme.textStyle.copyWith(
                  fontSize: 16.sp,
                  color: AppTheme.actionColor.withOpacity(.8),
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
