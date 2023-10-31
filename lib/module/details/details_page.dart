import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pandovie/configuration/pandovie_configuration.dart';
import 'package:pandovie/data/models/movie_model.dart';
import 'package:pandovie/kit/scale_transition_container.dart';
import 'package:pandovie/resource/theme.dart';

import 'package:pandovie/utils/open_cubit/open_cubit_page_base.dart';

@RoutePage()
class DetailsMoviePage extends OpenCubitPageBase {
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
        backgroundColor: AppTheme.primaryColor,
        // body: CachedNetworkImage(
        //   imageUrl: '${PandovieConfiguration.imageUrl}${movie.posterImageRaw!}',
        //   width: double.maxFinite,
        //   height: .7.sh,
        // ),
      ),
    );
  }
}
