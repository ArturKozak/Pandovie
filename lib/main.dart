// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:pandovie/data/models/movie_model.dart';
import 'package:pandovie/injectable/injectable.dart';
import 'package:pandovie/navigation/auto_route.dart';
import 'package:pandovie/navigation/observer.dart';
import 'package:pandovie/resource/theme.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  configureDependencies();

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
    ),
  );

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  final dir = await getApplicationDocumentsDirectory();
  Hive.defaultDirectory = dir.path;

  Hive.registerAdapter(
    'Movie',
    ((json) => MovieModel.fromHive(json)),
  );

  BlocOverrides.runZoned(
    () => runApp(
      const Pandovie(),
    ),
    blocObserver: PandovieBlocObserver(),
  );
}

class Pandovie extends StatelessWidget {
  const Pandovie({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = GetIt.I<AppRouter>();

    return MaterialApp.router(
      color: AppTheme.primaryColor,
      routerConfig: appRouter.config(),
      builder: (context, child) {
        ScreenUtil.init(
          context,
          designSize: const Size(375, 812),
          minTextAdapt: true,
          splitScreenMode: true,
        );

        return child!;
      },
    );
  }
}
