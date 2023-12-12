import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pandovie/enum/drawer_menu_type.dart';
import 'package:pandovie/navigation/auto_route.dart';
import 'package:pandovie/utils/open_cubit/open_cubit_impl.dart';

part 'root_state.dart';
part 'root_cubit.freezed.dart';

class RootCubit extends Cubit<RootState> {
  RootCubit()
      : super(
          const RootState.updateMenuType(
            DrawerMenuType.search,
          ),
        );

  final zoomDrawerController = ZoomDrawerController();

  void openMenuDrawer() {
    zoomDrawerController.toggle?.call();
  }

  void closeMenuDrawer() {
    zoomDrawerController.close?.call();
  }

  void updateDrawerState(DrawerMenuType type) {
    emit(
      RootState.updateMenuType(type),
    );
  }

  Future<void> navigateToSearchPage() {
    return AppRouter.navigateToHomePage();
  }

  Future<void> navigateToCollectionPage() {
    return AppRouter.navigateToCollectionPage();
  }

  @override
  Future<void> close() {
    OpenCubit.delete<RootCubit>();

    return super.close();
  }
}
