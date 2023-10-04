import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:pandovie/resource/app_animations.dart';
import 'package:pandovie/resource/theme.dart';

class SearchingState extends StatelessWidget {
  const SearchingState({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1.sh,
      width: 1.sw,
      color: AppTheme.actionColor,
      child: Center(
        child: Lottie.asset(
          AppAnimations.searching,
          height: 0.5.sh,
        ),
      ),
    );
  }
}
