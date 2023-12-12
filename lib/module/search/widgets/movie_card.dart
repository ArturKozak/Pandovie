import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pandovie/data/models/movie_model.dart';
import 'package:pandovie/kit/ticket_info/tiket_info.dart';

class MovieCard extends StatelessWidget {
  final MovieModel movie;
  final double value;

  const MovieCard({
    super.key,
    required this.movie,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: pi * value,
      child: Transform.translate(
        offset: Offset(
          140 * (value * 10),
          190 * (value * 10),
        ),
        child: Transform.scale(
          scale: 1 - .2 * value,
          child: Container(
            height: 1.sh,
            margin: EdgeInsets.only(
              bottom: 40.h,
              top: 100.h,
            ),
            width: double.maxFinite,
            child: TicketInfo(
              movie: movie,
            ),
          ),
        ),
      ),
    );
  }
}
