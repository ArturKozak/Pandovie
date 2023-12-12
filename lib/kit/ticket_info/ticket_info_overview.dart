import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pandovie/data/models/movie_model.dart';
import 'package:pandovie/resource/theme.dart';

class TicketInfoOverView extends StatelessWidget {
  static const _horizontalPadding = 24.0;
  static final _textHeight = 65.h;
  static final _overviewBottomPosition = 45.h;

  const TicketInfoOverView({
    super.key,
    required this.movie,
    required this.isExpanded,
  });

  final MovieModel movie;
  final bool isExpanded;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: _horizontalPadding.w,
      right: _horizontalPadding.w,
      bottom: _overviewBottomPosition,
      child: AnimatedOpacity(
        duration: const Duration(milliseconds: 150),
        opacity: isExpanded ? 0 : 1,
        child: Center(
          child: SizedBox(
            height: _textHeight,
            child: Text(
              movie.overview,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.justify,
              style: AppTheme.textStyle.copyWith(
                fontSize: 16.sp,
                color: AppTheme.primaryColor.withOpacity(.8),
                fontWeight: FontWeight.w400,
              ),
              maxLines: 3,
            ),
          ),
        ),
      ),
    );
  }
}
