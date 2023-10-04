import 'package:flutter/material.dart';
import 'package:pandovie/data/models/movie_model.dart';
import 'package:pandovie/kit/ticket_info/tiket_info.dart';
import 'package:pandovie/module/search/cubit/search_movie/search_movie_cubit.dart';
import 'package:pandovie/utils/open_cubit/open_cubit_widget_base.dart';

class MovieCard extends OpenCubitWidgetBase<SearchMovieCubit> {
  final MovieModel movie;
  final int index;

  MovieCard({
    super.key,
    required this.movie,
    required this.index,
  });

  @override
  Widget body(BuildContext context) {
    return Stack(
      children: [
        TicketInfo(
          movie: movie,
          index: index,
        ),
      ],
    );
  }
}
