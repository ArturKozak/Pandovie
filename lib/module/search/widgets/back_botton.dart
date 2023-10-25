import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pandovie/kit/custom_image_view.dart';
import 'package:pandovie/module/search/cubit/search_movie/search_movie_cubit.dart';
import 'package:pandovie/resource/app_icons.dart';
import 'package:pandovie/utils/open_cubit/open_cubit_widget_base.dart';

class SearchBackButton extends OpenCubitWidgetBase<SearchMovieCubit> {
  SearchBackButton({
    super.key,
  });

  @override
  Widget body(BuildContext context) {
    return Positioned(
      top: 40.h,
      left: 8.w,
      child: RotatedBox(
        quarterTurns: 2,
        child: CustomImageView(
          svgPath: AppIcons.chevronRight,
          height: 40.h,
          onTap: () => cubitController.backToMain(),
        ),
      ),
    );
  }
}
