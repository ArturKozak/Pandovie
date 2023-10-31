import 'package:flutter/material.dart';
import 'package:pandovie/data/models/movie_model.dart';
import 'package:pandovie/kit/ticket_info/tiket_info.dart';

class MovieCard extends StatelessWidget {
  final MovieModel movie;

  const MovieCard({
    super.key,
    required this.movie,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        TicketInfo(
          movie: movie,
        ),
      ],
    );
  }
}
