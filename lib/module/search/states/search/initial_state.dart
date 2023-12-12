import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pandovie/kit/animated_list/animated_list.dart';
import 'package:pandovie/module/search/cubit/now_playing/now_playing_cubit.dart';
import 'package:pandovie/module/search/cubit/search_movie/search_movie_cubit.dart';
import 'package:pandovie/module/search/cubit/upcoing_movies/upcoming_movies_cubit.dart';
import 'package:pandovie/module/search/widgets/custom_search_field.dart';
import 'package:pandovie/navigation/auto_route.dart';
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
          color: AppTheme.actionColor,
        ),
        child: Stack(
          children: [
            CustomSearchField(
              onFieldSubmitted:
                  context.read<SearchMovieCubit>().searchMoviesByQuery,
            ),
            Positioned(
              bottom: 290.h,
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
                          onTap: (movie) =>
                              AppRouter.navigateToDetailsPage(movie),
                          bgColor: AppTheme.primaryColor,
                          nameColor: AppTheme.actionColor,
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
                          bgColor: AppTheme.actionColor,
                          nameColor: AppTheme.primaryColor,
                          results: results,
                          onTap: (movie) =>
                              AppRouter.navigateToDetailsPage(movie),
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
