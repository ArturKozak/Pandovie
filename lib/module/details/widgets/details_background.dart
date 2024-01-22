import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pandovie/configuration/pandovie_configuration.dart';
import 'package:pandovie/data/models/movie_model.dart';
import 'package:pandovie/kit/custom_image_view.dart';
import 'package:pandovie/resource/app_icons.dart';

class DetailsBackgroundImage extends StatelessWidget {
  static final _topButtonBackPosition = 50.h;
  static final _leftButtonBackPosition = 8.w;
  static final _iconHeight = 40.h;

  const DetailsBackgroundImage({
    super.key,
    required this.movie,
  });

  final MovieModel movie;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CachedNetworkImage(
          height: 0.8.sh,
          imageUrl: '${PandovieConfiguration.imageUrl}${movie.posterImageRaw!}',
          fit: BoxFit.cover,
        ),
        Positioned(
          top: _topButtonBackPosition.h,
          left: _leftButtonBackPosition.w,
          child: RotatedBox(
            quarterTurns: 2,
            child: CustomImageView(
              svgPath: AppIcons.chevronRight,
              height: _iconHeight.h,
              onTap: () {
                Navigator.of(context).pop();
                context.router.pop();
              },
            ),
          ),
        ),
      ],
    );
  }
}
