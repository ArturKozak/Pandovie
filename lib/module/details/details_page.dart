import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:overlay_widget/overlay_widget.dart';
import 'package:pandovie/data/models/movie_model.dart';
import 'package:pandovie/data/repositories/collection_repositories.dart';
import 'package:pandovie/kit/custom_image_view.dart';
import 'package:pandovie/kit/scale_transition_container.dart';
import 'package:pandovie/module/details/widgets/details_background.dart';
import 'package:pandovie/module/details/widgets/details_horizontal_info.dart';
import 'package:pandovie/module/details/widgets/expanded_movie_info.dart';
import 'package:pandovie/resource/app_icons.dart';
import 'package:pandovie/resource/theme.dart';

import 'package:pandovie/utils/open_cubit/open_cubit_page_base.dart';
import 'package:slide_to_act/slide_to_act.dart';

@RoutePage()
class DetailsMoviePage extends OpenCubitPageBase {
  static const _buttonSize = 44;

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
        body: FutureBuilder(
          future: Future.delayed(
            Durations.short1,
            () => FloatingWidgetAlert.show(
              context: context,
              offset: Offset(30.w, 1.sh - 100.h),
              widget: Material(
                color: Colors.transparent,
                child: Container(
                  height: 70,
                  width: 1.sw - 60.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100).r,
                      color: Colors.transparent),
                  child: SlideAction(
                    sliderRotate: false,
                    elevation: 1,
                    innerColor: AppTheme.actionColor,
                    outerColor: AppTheme.controlColor,
                    textColor: AppTheme.primaryColor,
                    textStyle: AppTheme.textStyle.copyWith(
                      fontSize: 18.sp,
                      color: AppTheme.primaryColor,
                      fontWeight: FontWeight.w900,
                    ),
                    animationDuration: Durations.long3,
                    submittedIcon: Icon(
                      Icons.done,
                      size: _buttonSize.r,
                      color: AppTheme.primaryColor,
                    ),
                    sliderButtonIconPadding: 4.r,
                    sliderButtonIcon: CustomImageView(
                      svgPath: AppIcons.popcorn,
                      height: _buttonSize.h,
                      width: _buttonSize.w,
                    ),
                    text: GetIt.I<CollectionRepository>().checkIfContains(movie)
                        ? 'Remove from collection'
                        : 'Save to collection',
                    onSubmit:
                        GetIt.I<CollectionRepository>().checkIfContains(movie)
                            ? () {
                                GetIt.I<CollectionRepository>().delete(movie);

                                return null;
                              }
                            : () => GetIt.I<CollectionRepository>().add(movie),
                  ),
                ),
              ),
            ),
          ),
          builder: (context, snapshot) => SingleChildScrollView(
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
      ),
    );
  }
}
