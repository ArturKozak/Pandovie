import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pandovie/enum/drawer_menu_type.dart';

import 'package:pandovie/module/root/widget/drawer_custom_tile.dart';
import 'package:pandovie/module/root/cubit/root_cubit.dart';
import 'package:pandovie/resource/app_icons.dart';
import 'package:pandovie/resource/theme.dart';
import 'package:pandovie/utils/open_cubit/open_cubit_widget_base.dart';

class MenuDrawer extends OpenCubitWidgetBase<RootCubit> {
  static final _padding = const EdgeInsets.only(
    right: 32,
    top: 250,
    left: 16,
  ).r;

  MenuDrawer({super.key});

  @override
  Widget body(BuildContext context) {
    return BlocBuilder<RootCubit, RootState>(
      builder: (context, state) {
        return state.when(
          updateMenuType: (type) => Drawer(
            backgroundColor: AppTheme.primaryColor,
            elevation: 0,
            child: ListView(
              padding: _padding,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                CustomTile(
                  isSelected: type == DrawerMenuType.search,
                  onTap: () {
                    cubitController.navigateToSearchPage();

                    cubitController.updateDrawerState(DrawerMenuType.search);

                    cubitController.closeMenuDrawer();
                  },
                  name: 'Search',
                  svgPath: AppIcons.search,
                ),
                CustomTile(
                  isSelected: type == DrawerMenuType.collection,
                  onTap: () {
                    cubitController.navigateToCollectionPage();

                    cubitController
                        .updateDrawerState(DrawerMenuType.collection);

                    cubitController.closeMenuDrawer();
                  },
                  name: 'Collection',
                  svgPath: AppIcons.collection,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
