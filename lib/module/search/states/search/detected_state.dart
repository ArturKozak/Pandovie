import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:pandovie/data/models/movie_model.dart';
import 'package:pandovie/data/repositories/temporaly_repositories.dart';
import 'package:pandovie/kit/parallax_layout/background_switcher.dart';
import 'package:pandovie/module/search/cubit/search_page_controller/search_page_controller_cubit.dart';
import 'package:pandovie/module/search/widgets/movie_card.dart';
import 'package:pandovie/utils/open_cubit/open_cubit_widget_base.dart';

class SearchDetectedState
    extends OpenCubitWidgetBase<SearchPageControllerCubit> {
  final List<MovieModel> movies;

  SearchDetectedState({
    super.key,
    required this.movies,
  });

  @override
  Widget body(BuildContext context) {
    return StreamBuilder<List<MovieModel>>(
      stream: GetIt.I<TemporalyRepository>().allTempMoviesStream,
      initialData: movies,
      builder: (context, snapshot) {
        final moviesData = snapshot.data;

        if (moviesData == null) {
          return const SizedBox();
        }

        return Stack(
          alignment: Alignment.center,
          children: [
            BlocBuilder<SearchPageControllerCubit, SearchPageControllerState>(
              builder: (context, state) {
                return state.when(
                  switcher: (index) {
                    return BackgroundSwitcher(
                      movie: moviesData[index],
                    );
                  },
                );
              },
            ),
            Center(
              child: PageView.builder(
                controller: listen(context).pageController,
                itemCount: moviesData.length,
                onPageChanged: cubitController.updatePage,
                padEnds: false,
                itemBuilder: (context, index) {
                  return MovieCard(
                    movie: moviesData[index],
                    index: index,
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
