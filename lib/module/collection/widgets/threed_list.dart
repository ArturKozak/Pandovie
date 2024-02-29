import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pandovie/data/models/movie_model.dart';
import 'package:pandovie/kit/scale_transition_container.dart';
import 'package:pandovie/kit/ticket_info/ticket_info_title.dart';
import 'package:pandovie/kit/ticket_info/ticket_painter.dart';
import 'package:pandovie/module/details/details_page.dart';
import 'package:pandovie/resource/theme.dart';

class MatrixList extends StatefulWidget {
  final List<MovieModel> models;
  const MatrixList({
    super.key,
    required this.models,
  });

  @override
  State<MatrixList> createState() => _MatrixListState();
}

class _MatrixListState extends State<MatrixList> {
  double _value = 0.1;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Transform(
          alignment: Alignment.center,
          transform: Matrix4.identity()
            ..setEntry(3, 2, 0.001)
            ..rotateX(_value),
          child: SizedBox(
            height: .7.sh,
            width: constraints.maxWidth * .65,
            child: Stack(
              children: [
                ...List.generate(
                  widget.models.length,
                  (index) => Movie3DCard(
                    height: .5.sh,
                    depth: index,
                    movie: widget.models[index],
                    percent: _value,
                  ),
                ).reversed,
                Positioned(
                  bottom: 0,
                  right: 0,
                  left: 0,
                  child: Slider(
                    value: _value,
                    max: .3,
                    min: .1,
                    onChanged: (value) {
                      _value = value;

                      setState(() {});
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class Movie3DCard extends StatefulWidget {
  final double height;
  final MovieModel movie;
  final double percent;
  final int depth;
  const Movie3DCard({
    super.key,
    required this.height,
    required this.movie,
    required this.percent,
    required this.depth,
  });

  @override
  State<Movie3DCard> createState() => _Movie3DCardState();
}

class _Movie3DCardState extends State<Movie3DCard>
    with TickerProviderStateMixin {
  static final _titleTopPosition = 40.h;

  static final _horizontalPadding = 15.0.w;
  static const _cardTopMargin = 80.0;
  static const _cardMargin = 6.0;

  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      top: widget.height / 2 +
          -widget.depth * widget.height / 2.5 * widget.percent,
      child: PageTransitionButton(
        onStateChanged: (p0) => setState(() {
          isExpanded = p0;
        }),
        vsync: this,
        nextPage: DetailsMoviePage(movie: widget.movie),
        child: Transform(
          alignment: Alignment.center,
          transform: Matrix4.identity()
            ..setEntry(3, 2, 0.001)
            ..translate(0.0, 0.0, widget.depth * 40),
          child: SizedBox(
            height: widget.height,
            width: double.maxFinite,
            child: Stack(
              children: [
                RotatedBox(
                  quarterTurns: 2,
                  child: Container(
                    height: widget.height,
                    margin: EdgeInsets.only(
                      top: 45.h,
                      left: 5.w,
                      right: 5.w,
                    ),
                    width: 1.sw,
                    child: CustomPaint(
                      painter: TicketPainter(
                        borderColor: isExpanded
                            ? AppTheme.actionColor
                            : AppTheme.primaryColor,
                        bgColor: AppTheme.actionColor,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: _horizontalPadding,
                  right: _horizontalPadding,
                  top: _titleTopPosition,
                  child: SizedBox(
                    height: 30.h,
                    child: AnimatedOpacity(
                      duration: const Duration(milliseconds: 150),
                      opacity: isExpanded ? 0 : 1,
                      child: TicketInfoTitle(
                        movie: widget.movie,
                      ),
                    ),
                  ),
                ),
                AnimatedOpacity(
                  duration: const Duration(milliseconds: 150),
                  opacity: isExpanded ? 0 : 1,
                  child: Container(
                    margin: const EdgeInsets.only(
                      left: _cardMargin,
                      right: _cardMargin,
                      top: _cardTopMargin,
                      bottom: _cardTopMargin / 1.7,
                    ).r,
                    height: .55.sh,
                    width: 1.1.sw,
                    child: RotatedBox(
                      quarterTurns: 2,
                      child: ClipPath(
                          clipper: TicketClipper(),
                          child: RotatedBox(
                            quarterTurns: 2,
                            child: Image(
                              image: MemoryImage(widget.movie.posterImage!),
                              fit: BoxFit.cover,
                            ),
                          )),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
