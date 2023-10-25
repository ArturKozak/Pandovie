import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:pandovie/kit/animated_list/animated_list.dart';
import 'package:pandovie/kit/custom_image_view.dart';
import 'package:pandovie/module/search/cubit/now_playing/now_playing_cubit.dart';
import 'package:pandovie/module/search/cubit/search_movie/search_movie_cubit.dart';
import 'package:pandovie/module/search/cubit/upcoing_movies/upcoming_movies_cubit.dart';
import 'package:pandovie/resource/app_animations.dart';
import 'package:pandovie/resource/app_icons.dart';
import 'package:pandovie/resource/theme.dart';

class SearchInitialState extends StatelessWidget {
  static const _horizontalSpace = -25;
  const SearchInitialState({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppTheme.actionColor,
      body: Container(
        height: 1.sh,
        width: 1.sw,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [.1, .3],
            colors: [
              AppTheme.actionColor,
              AppTheme.primaryColor,
            ],
          ),
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ).r,
              child: TextFormField(
                cursorColor: AppTheme.primaryColor,
                cursorWidth: 2.w,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: AppTheme.actionColor,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20).r,
                    borderSide: BorderSide(
                      color: AppTheme.primaryColor,
                      width: 1.r,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20).r,
                    borderSide: BorderSide(
                      color: AppTheme.primaryColor,
                      width: 1.r,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20).r,
                    borderSide: BorderSide(
                      color: AppTheme.primaryColor,
                      width: 1.r,
                    ),
                  ),
                  suffixIconConstraints: BoxConstraints(
                    maxHeight: 50.h,
                    maxWidth: 50.w,
                  ),
                  suffixIcon: CustomImageView(
                    svgPath: AppIcons.search,
                    color: AppTheme.primaryColor,
                    margin: const EdgeInsets.only(right: 10).r,
                  ),
                ),
                onFieldSubmitted:
                    context.read<SearchMovieCubit>().searchMoviesByQuery,
              ),
            ),
            Positioned(
              bottom: 300.h,
              left: _horizontalSpace.w,
              right: _horizontalSpace.w,
              child: BlocBuilder<UpcomingMoviesCubit, UpcomingMoviesState>(
                builder: (context, state) {
                  return state.when(
                    initial: () {
                      return const SizedBox();
                    },
                    detected: (results) {
                      return SingleChildScrollView(
                        child: ImageList(
                          results: results,
                          duration: 170,
                          name: 'Upcoming movies',
                        ),
                      );
                    },
                  );
                },
              ),
            ),
            Positioned(
              bottom: 0,
              left: _horizontalSpace.w,
              right: _horizontalSpace.w,
              child: BlocBuilder<NowPlayingCubit, NowPlayingState>(
                builder: (context, state) {
                  return state.when(
                    initial: () {
                      return const SizedBox();
                    },
                    detected: (results) {
                      return SingleChildScrollView(
                        child: ImageList(
                          results: results,
                          duration: 170,
                          name: 'Popular in this week',
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
