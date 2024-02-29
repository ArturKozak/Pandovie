import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pandovie/kit/custom_image_view.dart';
import 'package:pandovie/module/collection/cubit/collection_manager_cubit.dart';
import 'package:pandovie/module/collection/widgets/threed_list.dart';
import 'package:pandovie/resource/app_icons.dart';
import 'package:pandovie/resource/theme.dart';
import 'package:pandovie/utils/open_cubit/open_cubit_page_base.dart';

@RoutePage()
class CollectionPage extends OpenCubitPageBase<CollectionManagerCubit> {
  static final _topButtonBackPosition = 50.h;
  static final _leftButtonBackPosition = 8.w;
  static final _iconHeight = 40.h;

  CollectionPage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }

  @override
  Widget body(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.actionColor,
      body: BlocBuilder<CollectionManagerCubit, CollectionManagerState>(
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox(),
            updatedMovieCollection: (movies) {
              return Stack(
                children: [
                  Center(
                    child: MatrixList(models: movies),
                  ),
                  Positioned(
                    top: _topButtonBackPosition.h,
                    left: _leftButtonBackPosition.w,
                    child: RotatedBox(
                      quarterTurns: 2,
                      child: CustomImageView(
                        svgPath: AppIcons.chevronRight,
                        height: _iconHeight.h,
                        onTap: () => cubitController.openDrawerMenu(),
                      ),
                    ),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
