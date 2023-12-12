import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pandovie/data/models/movie_model.dart';
import 'package:pandovie/extension/date_time_extension.dart';
import 'package:pandovie/extension/num_extension.dart';
import 'package:pandovie/kit/ticket_info/about_info_element.dart';
import 'package:pandovie/resource/app_icons.dart';
import 'package:pandovie/resource/theme.dart';

class DetailsHorizontalInfo extends StatelessWidget {
  static const _menuContainerBorderRadius = 20.0;

  static final _topPosition = 490.h;
  static final _leftPosition = 20.w;
  static final _rightPosition = 20.w;
  static final _menuContainerHeight = 100.h;
  static final _menuContainerPadding =
      const EdgeInsets.symmetric(horizontal: 10, vertical: 20).r;

  const DetailsHorizontalInfo({
    super.key,
    required this.movie,
  });

  final MovieModel movie;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: _topPosition,
      left: _leftPosition,
      right: _rightPosition,
      child: Container(
        width: double.maxFinite,
        height: _menuContainerHeight,
        padding: _menuContainerPadding,
        decoration: BoxDecoration(
          color: AppTheme.primaryColor,
          borderRadius: BorderRadius.circular(_menuContainerBorderRadius).r,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8).r,
                child: AboutInfoElement(
                  movie: movie,
                  isDetails: true,
                  icons: AppIcons.release,
                  name: 'TMDB',
                  value: movie.voteAverage!.toStringAsFixed(1),
                ),
              ),
            ),
            _buildWhiteLine(),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8).r,
                child: AboutInfoElement(
                  movie: movie,
                  isDetails: true,
                  icons: AppIcons.release,
                  name: 'Budget',
                  value: movie.budget!.formatCurrency(),
                ),
              ),
            ),
            _buildWhiteLine(),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8).r,
                child: AboutInfoElement(
                  movie: movie,
                  isDetails: true,
                  icons: AppIcons.release,
                  name: 'Runtime',
                  value: '${movie.runtime!.toStringAsFixed(0)} min.',
                ),
              ),
            ),
            if (movie.releaseDate != null) _buildWhiteLine(),
            if (movie.releaseDate != null)
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8).r,
                  child: AboutInfoElement(
                    movie: movie,
                    isDetails: true,
                    icons: AppIcons.release,
                    name: 'Release',
                    value: movie.releaseDate!.formatDate(),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  Container _buildWhiteLine() {
    return Container(
      width: 2.w,
      height: 80.h,
      color: AppTheme.actionColor,
    );
  }
}
