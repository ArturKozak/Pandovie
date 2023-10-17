import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pandovie/module/collection/cubit/collection_manager_cubit.dart';
import 'package:pandovie/utils/open_cubit/open_cubit_page_base.dart';

@RoutePage()
class CollectionPage extends OpenCubitPageBase<CollectionManagerCubit> {
  CollectionPage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }

  @override
  Widget body(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<CollectionManagerCubit, CollectionManagerState>(
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox(),
            updatedMovieCollection: (movies) {
              return const Stack(
                children: [],
              );
            },
          );
        },
      ),
    );
  }
}
