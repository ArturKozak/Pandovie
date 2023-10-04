import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:pandovie/data/models/movie_model.dart';

class BackgroundSwitcher extends StatelessWidget {
  final MovieModel movie;

  const BackgroundSwitcher({
    super.key,
    required this.movie,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      switchInCurve: Curves.bounceInOut,
      switchOutCurve: Curves.easeOutCirc,
      transitionBuilder: (Widget child, Animation<double> animation) {
        return FadeTransition(
          opacity: animation,
          child: child,
        );
      },
      duration: const Duration(milliseconds: 500),
      child: Container(
        key: ValueKey<String>(movie.title),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: MemoryImage(
              movie.posterImage!,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 15,
            sigmaY: 15,
          ),
          child: Container(
            color: Colors.black.withOpacity(0.2),
          ),
        ),
      ),
    );
  }
}
