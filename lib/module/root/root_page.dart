import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:pandovie/module/collection/cubit/collection_manager_cubit.dart';
import 'package:pandovie/module/search/cubit/search_movie/search_movie_cubit.dart';
import 'package:pandovie/module/root/widget/drawer.dart';
import 'package:pandovie/module/root/cubit/root_cubit.dart';
import 'package:pandovie/resource/theme.dart';
import 'package:pandovie/utils/open_cubit/open_cubit_impl.dart';
import 'package:pandovie/utils/open_cubit/open_cubit_page_base.dart';

@RoutePage()
class RootPage extends OpenCubitPageBase<RootCubit> {
  RootPage({
    super.key,
  });

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => OpenCubit.put(
            RootCubit(),
          ),
          lazy: false,
        ),
        BlocProvider(
          create: (_) => OpenCubit.put(
            SearchMovieCubit(),
          ),
          lazy: false,
        ),
        BlocProvider(
          create: (_) => OpenCubit.put(
            CollectionManagerCubit()..init(),
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
      body: ZoomDrawer(
        controller: cubitController.zoomDrawerController,
        menuScreen: MenuDrawer(),
        mainScreen: const AutoRouter(),
        borderRadius: 24.0,
        showShadow: true,
        angle: -8.0,
        drawerShadowsBackgroundColor: AppTheme.actionColor,
        openCurve: Curves.fastOutSlowIn,
        menuBackgroundColor: AppTheme.primaryColor,
        mainScreenScale: 0.15,
        slideWidth: MediaQuery.of(context).size.width * 0.65,
      ),
    );
  }
}
