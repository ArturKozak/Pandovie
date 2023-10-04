// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pandovie/utils/open_cubit/open_cubit_widget_base.dart';

abstract class OpenCubitPageBase<TCubit extends Cubit>
    extends OpenCubitWidgetBase<TCubit> implements AutoRouteWrapper {
  OpenCubitPageBase({
    super.key,
  });
}
