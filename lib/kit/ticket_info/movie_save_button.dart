import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pandovie/data/models/movie_model.dart';
import 'package:pandovie/kit/custom_image_view.dart';
import 'package:pandovie/module/search/cubit/search_movie/search_movie_cubit.dart';
import 'package:pandovie/resource/app_icons.dart';
import 'package:pandovie/resource/theme.dart';
import 'package:pandovie/utils/open_cubit/open_cubit_widget_base.dart';

class MovieSaveButton extends OpenCubitWidgetBase<SearchMovieCubit> {
  final MovieModel movie;

  MovieSaveButton({
    super.key,
    required this.movie,
  });

  @override
  Widget body(BuildContext context) {
    return Column(
      children: [
        CustomImageView(
          svgPath: AppIcons.popcorn,
          height: 44.h,
          width: 44.w,
        ),
        Text(
          'Save',
          style: AppTheme.textStyle.copyWith(
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
            color: AppTheme.actionColor,
          ),
        ),
      ],
    );
  }
}
