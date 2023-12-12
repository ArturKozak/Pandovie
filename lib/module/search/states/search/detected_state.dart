import 'package:flutter/material.dart';
import 'package:pandovie/data/models/movie_model.dart';
import 'package:pandovie/kit/parallax_layout/background_switcher.dart';
import 'package:pandovie/module/search/widgets/back_botton.dart';
import 'package:pandovie/module/search/widgets/movie_card.dart';

class SearchDetectedState extends StatefulWidget {
  final List<MovieModel> movies;

  const SearchDetectedState({
    super.key,
    required this.movies,
  });

  @override
  State<SearchDetectedState> createState() => _SearchDetectedStateState();
}

class _SearchDetectedStateState extends State<SearchDetectedState> {
  int currentIndex = 0;
  double pagePercent = 0;
  int visualizedItems = 8;

  late final PageController pageController;

  @override
  void initState() {
    pageController = PageController(
      viewportFraction: 1,
      initialPage: currentIndex,
    );
    pagePercent = 0.0;
    pageController.addListener(_pageListener);
    super.initState();
  }

  void _pageListener() {
    currentIndex = pageController.page!.floor();
    pagePercent = (pageController.page! - currentIndex).abs();

    setState(() {});
  }

  void updatePage(int index) {
    currentIndex = index;

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Stack(
          alignment: Alignment.center,
          children: [
            BackgroundSwitcher(
              movie: widget.movies[currentIndex],
            ),
            PageView.builder(
              controller: pageController,
              itemCount: widget.movies.length,
              scrollDirection: Axis.horizontal,
              onPageChanged: updatePage,
              padEnds: false,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return AnimatedBuilder(
                  animation: pageController,
                  builder: (context, child) {
                    double value = 0.0;
                    if (pageController.position.haveDimensions) {
                      value = index.toDouble() - (pageController.page ?? 0);
                      value = (value * 0.10).clamp(-1, 1);
                    }
                    return MovieCard(
                      movie: widget.movies[index],
                      value: value,
                    );
                  },
                );
              },
            ),
            SearchBackButton(),
          ],
        );
      },
    );
  }
}
