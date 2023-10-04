import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:pandovie/module/search/cubit/search_movie/search_movie_cubit.dart';
import 'package:pandovie/resource/app_animations.dart';
import 'package:pandovie/resource/theme.dart';

class SearchInitialState extends StatelessWidget {
  const SearchInitialState({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppTheme.actionColor,
      body: SizedBox(
        height: 1.sh,
        width: 1.sw,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 30,
              ).r,
              child: TextFormField(
                cursorColor: AppTheme.primaryColor,
                cursorWidth: 2.w,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: AppTheme.actionColor,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20).r,
                    borderSide: BorderSide(
                      color: AppTheme.primaryColor,
                      width: 1.r,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20).r,
                    borderSide: BorderSide(
                      color: AppTheme.primaryColor,
                      width: 1.r,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20).r,
                    borderSide: BorderSide(
                      color: AppTheme.primaryColor,
                      width: 1.r,
                    ),
                  ),
                ),
                onFieldSubmitted:
                    context.read<SearchMovieCubit>().searchMoviesByQuery,
              ),
            ),
            Positioned(
              bottom: -70.h,
              left: -250.h,
              right: 0,
              child: Lottie.asset(
                AppAnimations.home,
                height: 380.h,
                fit: BoxFit.fitHeight,
              ),
            ),
            Positioned(
              bottom: 170.h,
              left: 220.h,
              right: 0,
              child: Text(
                '1. Search',
                style: AppTheme.textStyle.copyWith(
                  fontSize: 22.sp,
                  color: AppTheme.primaryColor,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            Positioned(
              bottom: 130.h,
              left: 220.h,
              right: 0,
              child: Text(
                '2. Choose',
                style: AppTheme.textStyle.copyWith(
                  fontSize: 22.sp,
                  color: AppTheme.primaryColor,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            Positioned(
              bottom: 90.h,
              left: 220.h,
              right: 0,
              child: Text(
                '3. Save',
                style: AppTheme.textStyle.copyWith(
                  fontSize: 22.sp,
                  color: AppTheme.primaryColor,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
