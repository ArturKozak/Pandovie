// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pandovie/utils/open_cubit/open_cubit_impl.dart';

abstract class OpenCubitWidgetBase<TCubit extends Cubit>
    extends StatelessWidget {
  OpenCubitWidgetBase({super.key});

  TCubit get cubitController => OpenCubit.find<TCubit>();

  TCubit listen(BuildContext context) {
    return OpenCubit.listen<TCubit>(context);
  }

  Widget body(BuildContext context);

  @override
  @nonVirtual
  Widget build(BuildContext context) {
    return body(context);
  }
}
