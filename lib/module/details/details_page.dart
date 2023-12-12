import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pandovie/data/models/movie_model.dart';
import 'package:pandovie/kit/scale_transition_container.dart';
import 'package:pandovie/module/details/widgets/details_background.dart';
import 'package:pandovie/module/details/widgets/details_horizontal_info.dart';
import 'package:pandovie/module/details/widgets/expanded_movie_info.dart';
import 'package:pandovie/resource/theme.dart';

import 'package:pandovie/utils/open_cubit/open_cubit_page_base.dart';

@RoutePage()
class DetailsMoviePage extends OpenCubitPageBase {
  static final _innerDistance = 100.h;

  final MovieModel movie;
  DetailsMoviePage({
    super.key,
    required this.movie,
  });

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }

  @override
  Widget body(BuildContext context) {
    return PageTransitionReceiver(
      scaffold: Scaffold(
        backgroundColor: AppTheme.actionColor,
        body: SingleChildScrollView(
          padding: EdgeInsets.zero,
          physics: const ClampingScrollPhysics(),
          child: Stack(
            children: [
              ColumnSuper(
                innerDistance: -_innerDistance.h,
                children: [
                  DetailsBackgroundImage(
                    movie: movie,
                  ),
                  ExpandedMovieInfo(
                    movie: movie,
                  ),
                ],
              ),
              DetailsHorizontalInfo(movie: movie),
            ],
          ),
        ),
      ),
    );
  }
}
