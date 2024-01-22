import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pandovie/data/models/movie_model.dart';
import 'package:pandovie/kit/ticket_info/movie_genres.dart';
import 'package:pandovie/kit/ticket_info/ticket_info_title.dart';
import 'package:pandovie/resource/theme.dart';
import 'package:pandovie/utils/open_cubit/open_cubit_widget_base.dart';

class ExpandedMovieInfo extends OpenCubitWidgetBase {
  static const _borderRadius = 25.0;
  static const _itemPadding = 16.0;

  static final _overviewPadding = const EdgeInsets.only(
    bottom: 120,
    top: 15,
  ).r;

  ExpandedMovieInfo({
    super.key,
    required this.movie,
  });

  final MovieModel movie;

  @override
  Widget body(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: AppTheme.actionColor,
        borderRadius: BorderRadius.circular(_borderRadius).r,
        boxShadow: [
          BoxShadow(
            blurRadius: 10,
            spreadRadius: 2,
            offset: const Offset(0, 4),
            color: AppTheme.primaryColor.withOpacity(.2),
          ),
        ],
        border: Border.all(
          color: AppTheme.primaryColor,
          width: 4,
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            65.verticalSpace,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: _itemPadding).r,
              child: SizedBox(
                width: .8.sh,
                height: 30.h,
                child: TicketInfoTitle(
                  movie: movie,
                  isDetails: true,
                ),
              ),
            ),
            20.verticalSpace,
            if (movie.genres != null)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: _itemPadding).r,
                child: Text(
                  'Genres:',
                  textAlign: TextAlign.left,
                  style: AppTheme.textStyle.copyWith(
                    fontSize: 16.sp,
                    color: AppTheme.primaryColor.withOpacity(.7),
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            if (movie.genres != null) MovieGenres(movie: movie),
            if (movie.genres != null) 10.verticalSpace,
            Container(
              padding: _overviewPadding,
              decoration: BoxDecoration(
                color: AppTheme.primaryColor,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(_itemPadding),
                  topLeft: Radius.circular(_itemPadding),
                ).r,
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: _itemPadding, right: _itemPadding, bottom: _itemPadding*5).r,
                child: Text(
                  movie.overview,
                  textAlign: TextAlign.justify,
                  style: AppTheme.textStyle.copyWith(
                    fontSize: 18.sp,
                    color: AppTheme.actionColor,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
