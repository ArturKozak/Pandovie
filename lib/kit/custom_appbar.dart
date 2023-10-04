import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pandovie/kit/custom_icon_button.dart';
import 'package:pandovie/kit/custom_image_view.dart';
import 'package:pandovie/module/search/cubit/search_movie/search_movie_cubit.dart';
import 'package:pandovie/resource/app_icons.dart';
import 'package:pandovie/resource/theme.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  static const _iconSize = 44.0;
  static const _padding = 10.0;
  static const _margin = 15.0;

  final double height;
  final VoidCallback onTap;

  const CustomAppBar({
    Key? key,
    required this.height,
    required this.onTap,
  }) : super(
          key: key,
        );

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchMovieCubit, SearchMovieState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () {
            return const SizedBox();
          },
          initial: () => AppBar(
            backgroundColor: AppTheme.actionColor,
            elevation: 0,
            actions: [
              CustomIconButton(
                height: _iconSize.h,
                width: _iconSize.w,
                margin: const EdgeInsets.only(
                  right: _margin,
                ).r,
                padding: const EdgeInsets.all(
                  _padding,
                ).r,
                alignment: Alignment.centerRight,
                child: CustomImageView(
                  svgPath: AppIcons.menu,
                  onTap: onTap,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
