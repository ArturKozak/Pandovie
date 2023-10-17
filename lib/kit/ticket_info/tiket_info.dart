import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pandovie/configuration/pandovie_configuration.dart';
import 'package:pandovie/data/models/movie_model.dart';
import 'package:pandovie/extension/date_time_extension.dart';
import 'package:pandovie/kit/ticket_info/movie_budgett.dart';
import 'package:pandovie/kit/ticket_info/movie_genres.dart';
import 'package:pandovie/kit/ticket_info/movie_runtime.dart';
import 'package:pandovie/kit/ticket_info/movie_save_button.dart';
import 'package:pandovie/kit/ticket_info/ticket_info_overview.dart';
import 'package:pandovie/kit/ticket_info/ticket_info_title.dart';
import 'package:pandovie/kit/ticket_info/ticket_painter.dart';
import 'package:pandovie/kit/ticket_info/about_info_element.dart';
import 'package:pandovie/module/search/cubit/search_movie/search_movie_cubit.dart';
import 'package:pandovie/resource/app_icons.dart';
import 'package:pandovie/resource/theme.dart';
import 'package:pandovie/kit/parallax_layout/parallax_widget.dart';

class TicketInfo extends StatefulWidget {
  final MovieModel movie;
  final int index;

  const TicketInfo({
    required this.movie,
    required this.index,
    super.key,
  });

  @override
  State<TicketInfo> createState() => _TicketInfoState();
}

class _TicketInfoState extends State<TicketInfo> {
  static const _margin = 11.0;
  static const _cardMargin = 20.0;
  static const _cardTopMargin = 20.0;
  static const _spreadRadius = 5.0;
  static const _blurRadius = 10.0;
  static const _borderRadius = 25.0;

  static final _titleBottomPosition = 525.h;
  static final _titleExpandedBottomPosition = 460.h;
  static final _titleWidth = 300.0.w;
  static final _titleheight = 30.h;
  static final _overviewBottomPosition = 55.h;
  static final _voteInfoTopPosition = 35.h;
  static final _voteBottomPosition = 200.h;
  static final _infoBottomPosition = 40.h;
  static final _horizontalPadding = 10.0.w;

  double _ticketHeight = 650.h;
  double _tiketTopPosition = 80.h;

  bool _isExpanded = false;
  bool _isInfoVisibled = false;

  Future<void> _expandContainer() async {
    if (_isExpanded) {
      return;
    }

    setState(
      () {
        _isExpanded = true;

        _ticketHeight = 1.05.sh;
        _tiketTopPosition = 0;
      },
    );

    await Future.delayed(
      const Duration(milliseconds: 220),
    ).then(
      (value) => setState(() {
        _isInfoVisibled = true;
      }),
    );
  }

  void _collapseContainer() {
    if (!_isExpanded) {
      return;
    }

    setState(() {
      _isInfoVisibled = false;
      _ticketHeight = 650.h;
      _tiketTopPosition = 80.h;
      _isExpanded = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: const Duration(milliseconds: 300),
      left: 0,
      right: 0,
      top: _tiketTopPosition,
      child: GestureDetector(
        onVerticalDragUpdate: (details) async {
          if (details.primaryDelta! > 0) {
            // Swiped down
            _collapseContainer();
          } else if (details.primaryDelta! < 0) {
            // Swiped up
            await _expandContainer();
          }
        },
        child: Stack(
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              height: _ticketHeight,
              margin: EdgeInsets.all(
                _isExpanded ? 0 : _margin,
              ).r,
              width: 1.sw,
              child: CustomPaint(
                painter: TicketPainter(
                  borderColor: _isExpanded
                      ? AppTheme.primaryColor
                      : AppTheme.actionColor,
                  bgColor: AppTheme.primaryColor,
                  isExpand: _isExpanded,
                ),
              ),
            ),
            //title
            Positioned(
              left: _horizontalPadding * 4,
              right: _horizontalPadding * 4,
              top: _titleBottomPosition,
              bottom: 120.h,
              child: AnimatedOpacity(
                duration: const Duration(
                  milliseconds: 0,
                ),
                opacity: _isExpanded ? 0 : 1,
                child: TicketInfoTitle(
                  movie: widget.movie,
                ),
              ),
            ),
            //overView
            TicketInfoOverView(
              isExpanded: _isExpanded,
              overviewBottomPosition: _overviewBottomPosition,
              movie: widget.movie,
              opacity: _isExpanded ? 0 : 1,
            ),

            //info
            Positioned(
              left: .77.sw,
              right: _horizontalPadding * 2,
              top: _voteInfoTopPosition,
              bottom: _voteBottomPosition,
              child: AnimatedOpacity(
                duration: const Duration(
                  milliseconds: 0,
                ),
                opacity: _isExpanded ? 0 : 1,
                child: Column(
                  children: [
                    AbputInfoElement(
                      movie: widget.movie,
                      isrow: _isExpanded,
                      icons: AppIcons.release,
                      name: 'TMDB',
                      value: widget.movie.voteAverage!.toStringAsFixed(1),
                    ),
                    20.verticalSpace,
                    AbputInfoElement(
                      movie: widget.movie,
                      isrow: _isExpanded,
                      icons: AppIcons.avarage,
                      name: 'Vote count',
                      value: widget.movie.voteCount!.toStringAsFixed(1),
                      isFitted: true,
                    ),
                    20.verticalSpace,
                    AbputInfoElement(
                      movie: widget.movie,
                      isrow: _isExpanded,
                      icons: AppIcons.popular,
                      name: 'Popularity',
                      value: widget.movie.popularity.toStringAsFixed(1),
                      isFitted: true,
                    ),
                    20.verticalSpace,
                    AbputInfoElement(
                      movie: widget.movie,
                      isrow: _isExpanded,
                      isDate: true,
                      icons: AppIcons.release,
                      name: 'Release',
                      value: widget.movie.releaseDate!.formatDate(),
                      isFitted: true,
                    ),
                    20.verticalSpace,
                    AbputInfoElement(
                      movie: widget.movie,
                      isrow: _isExpanded,
                      isDate: true,
                      icons: AppIcons.release,
                      name: 'Runtime',
                      value: '${widget.movie.runtime!.toStringAsFixed(0)} min.',
                      isFitted: true,
                    ),
                    const Spacer(),
                    MovieSaveButton(
                      movie: widget.movie,
                      onTap: () => context
                          .read<SearchMovieCubit>()
                          .addToCollection(widget.movie),
                    ),
                  ],
                ),
              ),
            ),

            //expand
            Positioned(
              left: _horizontalPadding,
              right: _horizontalPadding,
              top: _titleExpandedBottomPosition,
              bottom: _infoBottomPosition,
              child: AnimatedOpacity(
                duration: Duration(
                  milliseconds: _isInfoVisibled ? 300 : 50,
                ),
                opacity: _isInfoVisibled ? 1 : 0,
                child: ShaderMask(
                  shaderCallback: (Rect rect) {
                    return const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        AppTheme.primaryColor,
                        Colors.transparent,
                        Colors.transparent,
                        AppTheme.primaryColor,
                      ],
                      stops: [0.0, 0.1, 0.9, 1.0],
                    ).createShader(rect);
                  },
                  blendMode: BlendMode.dstOut,
                  child: SingleChildScrollView(
                    child: Column(children: [
                      10.verticalSpace,
                      SizedBox(
                        width: _titleWidth,
                        height: _titleheight,
                        child: TicketInfoTitle(
                          movie: widget.movie,
                        ),
                      ),
                      20.verticalSpace,
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                vertical: 16,
                                horizontal: 10,
                              ).r,
                              decoration: BoxDecoration(
                                color: AppTheme.primaryColor,
                                border: Border.all(
                                  color: AppTheme.actionColor,
                                ),
                                borderRadius: BorderRadius.circular(16).r,
                              ),
                              child: Column(
                                children: [
                                  AbputInfoElement(
                                    movie: widget.movie,
                                    isrow: _isExpanded,
                                    icons: AppIcons.release,
                                    name: 'TMDB',
                                    value: widget.movie.voteAverage!
                                        .toStringAsFixed(1),
                                  ),
                                  10.verticalSpace,
                                  AbputInfoElement(
                                    movie: widget.movie,
                                    isrow: _isExpanded,
                                    icons: AppIcons.avarage,
                                    name: 'Vote count',
                                    value: widget.movie.voteCount!
                                        .toStringAsFixed(1),
                                    isFitted: true,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          10.horizontalSpace,
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                vertical: 16,
                                horizontal: 10,
                              ).r,
                              decoration: BoxDecoration(
                                color: AppTheme.primaryColor,
                                border: Border.all(
                                  color: AppTheme.actionColor,
                                ),
                                borderRadius: BorderRadius.circular(16).r,
                              ),
                              child: Column(
                                children: [
                                  AbputInfoElement(
                                    movie: widget.movie,
                                    isrow: _isExpanded,
                                    icons: AppIcons.popular,
                                    name: 'Popularity',
                                    value: widget.movie.popularity
                                        .toStringAsFixed(1),
                                    isFitted: true,
                                  ),
                                  10.verticalSpace,
                                  AbputInfoElement(
                                    movie: widget.movie,
                                    isrow: _isExpanded,
                                    isDate: true,
                                    icons: AppIcons.release,
                                    name: 'Release',
                                    value:
                                        widget.movie.releaseDate!.formatDate(),
                                    isFitted: true,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      10.verticalSpace,
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                vertical: 16,
                                horizontal: 10,
                              ).r,
                              decoration: BoxDecoration(
                                color: AppTheme.primaryColor,
                                border: Border.all(
                                  color: AppTheme.actionColor,
                                ),
                                borderRadius: BorderRadius.circular(16).r,
                              ),
                              child: Column(
                                children: [
                                  if (widget.movie.budget != null)
                                    MovieBudget(movie: widget.movie),
                                  10.verticalSpace,
                                  if (widget.movie.runtime != null)
                                    MovieRuntime(movie: widget.movie),
                                  10.verticalSpace,
                                  if (widget.movie.genres != null)
                                    MovieGenres(movie: widget.movie),
                                ],
                              ),
                            ),
                          ),
                          20.horizontalSpace,
                          MovieSaveButton(
                            movie: widget.movie,
                            onTap: () => context
                                .read<SearchMovieCubit>()
                                .addToCollection(widget.movie),
                          ),
                          10.horizontalSpace,
                        ],
                      ),
                      10.verticalSpace,
                      Text(
                        widget.movie.overview,
                        textAlign: TextAlign.justify,
                        style: AppTheme.textStyle.copyWith(
                          fontSize: 16.sp,
                          color: AppTheme.actionColor.withOpacity(.8),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      30.verticalSpace,
                    ]),
                  ),
                ),
              ),
            ),
            AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              margin: EdgeInsets.only(
                left: _isExpanded ? 0 : _cardMargin,
                right: _isExpanded ? 0 : _cardMargin / 2,
                top: _isExpanded ? 0 : _cardTopMargin,
              ).r,
              height: _isExpanded ? .7.sh : .6.sh,
              width: _isExpanded ? 1.sw : .69.sw,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: _spreadRadius,
                    blurRadius: _blurRadius,
                    offset: const Offset(0, _cardMargin),
                  ),
                ],
              ),
              child: ShaderMask(
                shaderCallback: (Rect rect) => LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: const [
                    Colors.transparent,
                    AppTheme.primaryColor,
                  ],
                  stops: [_isExpanded ? .4 : 1, _isExpanded ? .9 : 1],
                ).createShader(rect),
                blendMode: BlendMode.dstOut,
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(
                      _borderRadius,
                    ),
                  ).r,
                  child: ParallaxImage(
                    image: CachedNetworkImageProvider(
                      '${PandovieConfiguration.imageUrl}${widget.movie.posterImageRaw}',
                    ),
                    extent: 100.0,
                    color: AppTheme.primaryColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
