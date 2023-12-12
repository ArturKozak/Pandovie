import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pandovie/data/models/movie_model.dart';
import 'package:pandovie/extension/genres_extension.dart';
import 'package:pandovie/resource/theme.dart';

class MovieGenres extends StatelessWidget {
  static const _horizontalPadding = 20.0;

  static final _genresHeight = 90.0.h;

  const MovieGenres({
    super.key,
    required this.movie,
  });

  final MovieModel movie;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _genresHeight,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(
          horizontal: _horizontalPadding,
        ).r,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: movie.genres!.length,
        separatorBuilder: (context, index) => 20.horizontalSpace,
        itemBuilder: (context, index) => FittedBox(
          child: Column(
            children: [
              // Text(
              //     movie.genres![index].name.getEmodji(),
              //     style: AppTheme.textStyle.copyWith(
              //       fontSize: 44.sp,

              //     ),
              //   ),
              Image(
                image: AssetImage(
                  movie.genres![index].name.getGifEmodji(),
                ),
                height: 90.h,
                width: 90.w,
              ),
              Text(
                movie.genres![index].name,
                style: AppTheme.textStyle.copyWith(
                  fontSize: 18.sp,
                  color: AppTheme.primaryColor,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
