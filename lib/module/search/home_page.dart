import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pandovie/kit/custom_appbar.dart';
import 'package:pandovie/module/search/cubit/search_movie/search_movie_cubit.dart';
import 'package:pandovie/module/search/cubit/search_page_controller/search_page_controller_cubit.dart';
import 'package:pandovie/module/search/states/search/detected_state.dart';
import 'package:pandovie/module/search/states/search/initial_state.dart';
import 'package:pandovie/module/search/states/search/searching_state.dart';
import 'package:pandovie/resource/theme.dart';
import 'package:pandovie/utils/open_cubit/open_cubit_impl.dart';
import 'package:pandovie/utils/open_cubit/open_cubit_page_base.dart';

@RoutePage()
class HomePage extends OpenCubitPageBase<SearchMovieCubit> {
  static final _appbarHeight = 58.0.h;

  HomePage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => OpenCubit.put(
            SearchPageControllerCubit()..init(),
          ),
        ),
      ],
      child: this,
    );
  }

  @override
  Widget body(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.primaryColor,
      resizeToAvoidBottomInset: false,
      appBar: CustomAppBar(
        height: _appbarHeight,
        onTap: () => cubitController.openDrawerMenu(),
      ),
      body: BlocBuilder<SearchMovieCubit, SearchMovieState>(
        builder: (context, state) {
          return state.when(
            initial: () => const SearchInitialState(),
            searching: () => const SearchingState(),
            detected: (movies) => SearchDetectedState(
              movies: movies,
            ),
          );
        },
      ),
    );
  }
}
