import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pandovie/configuration/pandovie_configuration.dart';
import 'package:pandovie/data/models/movie_model.dart';
import 'package:pandovie/extension/date_time_extension.dart';
import 'package:pandovie/kit/scale_transition_container.dart';
import 'package:pandovie/kit/ticket_info/movie_budgett.dart';
import 'package:pandovie/kit/ticket_info/movie_genres.dart';
import 'package:pandovie/kit/ticket_info/movie_runtime.dart';
import 'package:pandovie/kit/ticket_info/movie_save_button.dart';
import 'package:pandovie/kit/ticket_info/ticket_info_overview.dart';
import 'package:pandovie/kit/ticket_info/ticket_info_title.dart';
import 'package:pandovie/kit/ticket_info/ticket_painter.dart';
import 'package:pandovie/kit/ticket_info/about_info_element.dart';
import 'package:pandovie/module/details/details_page.dart';
import 'package:pandovie/module/search/cubit/search_movie/search_movie_cubit.dart';
import 'package:pandovie/navigation/auto_route.dart';
import 'package:pandovie/resource/app_icons.dart';
import 'package:pandovie/resource/theme.dart';

class TicketInfo extends StatefulWidget {
  final MovieModel movie;

  const TicketInfo({
    required this.movie,
    super.key,
  });

  static const _margin = 11.0;
  static const _cardMargin = 20.0;
  static const _cardTopMargin = 20.0;
  static const _spreadRadius = 5.0;
  static const _blurRadius = 10.0;
  static const _borderRadius = 25.0;

  static final _titleBottomPosition = 525.h;
  static final _overviewBottomPosition = 55.h;
  static final _voteInfoTopPosition = 35.h;
  static final _voteBottomPosition = 200.h;
  static final _horizontalPadding = 10.0.w;
  static final _ticketHeight = 650.h;
  static final _tiketTopPosition = 80.h;

  @override
  State<TicketInfo> createState() => _TicketInfoState();
}

class _TicketInfoState extends State<TicketInfo>
    with SingleTickerProviderStateMixin {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      top: TicketInfo._tiketTopPosition,
      child: PageTransitionButton(
        onStateChanged: (p0) => setState(() {
          isExpanded = p0;
        }),
        vsync: this,
        nextPage: DetailsMoviePage(movie: widget.movie),
        child: Stack(
          children: [
            Container(
              height: TicketInfo._ticketHeight,
              margin: const EdgeInsets.all(
                TicketInfo._margin,
              ).r,
              width: 1.sw,
              child: CustomPaint(
                painter: TicketPainter(
                  borderColor: AppTheme.actionColor,
                  bgColor: AppTheme.primaryColor,
                ),
              ),
            ),

            Positioned(
              left: TicketInfo._horizontalPadding * 4,
              right: TicketInfo._horizontalPadding * 4,
              top: TicketInfo._titleBottomPosition,
              bottom: 120.h,
              child: TicketInfoTitle(
                movie: widget.movie,
              ),
            ),
            TicketInfoOverView(
              overviewBottomPosition: TicketInfo._overviewBottomPosition,
              movie: widget.movie,
            ),
            Positioned(
              left: .77.sw,
              right: TicketInfo._horizontalPadding * 2,
              top: TicketInfo._voteInfoTopPosition,
              bottom: TicketInfo._voteBottomPosition,
              child: Column(
                children: [
                  AbputInfoElement(
                    movie: widget.movie,
                    isrow: false,
                    icons: AppIcons.release,
                    name: 'TMDB',
                    value: widget.movie.voteAverage!.toStringAsFixed(1),
                  ),
                  20.verticalSpace,
                  AbputInfoElement(
                    movie: widget.movie,
                    isrow: false,
                    icons: AppIcons.avarage,
                    name: 'Vote count',
                    value: widget.movie.voteCount!.toStringAsFixed(1),
                    isFitted: true,
                  ),
                  20.verticalSpace,
                  AbputInfoElement(
                    movie: widget.movie,
                    isrow: false,
                    icons: AppIcons.popular,
                    name: 'Popularity',
                    value: widget.movie.popularity.toStringAsFixed(1),
                    isFitted: true,
                  ),
                  20.verticalSpace,
                  AbputInfoElement(
                    movie: widget.movie,
                    isrow: false,
                    isDate: true,
                    icons: AppIcons.release,
                    name: 'Release',
                    value: widget.movie.releaseDate!.formatDate(),
                    isFitted: true,
                  ),
                  20.verticalSpace,
                  AbputInfoElement(
                    movie: widget.movie,
                    isrow: false,
                    isDate: true,
                    icons: AppIcons.release,
                    name: 'Runtime',
                    value: '${widget.movie.runtime!.toStringAsFixed(0)} min.',
                    isFitted: true,
                  ),
                  const Spacer(),
                  MovieSaveButton(
                    movie: widget.movie,
                    onTap: () => AppRouter.navigateToDetailsPage(widget.movie),
                  ),
                ],
              ),
            ),

            //expand
            //  ExpandedMovieInfo(titleWidth: _titleWidth, titleheight: _titleheight, movie: movie),

            AnimatedOpacity(
              duration: Duration(milliseconds: 150),
              opacity: isExpanded ? 0 : 1,
              child: Container(
                margin: const EdgeInsets.only(
                  left: TicketInfo._cardMargin,
                  right: TicketInfo._cardMargin / 2,
                  top: TicketInfo._cardTopMargin,
                ).r,
                height: .6.sh,
                width: .69.sw,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: TicketInfo._spreadRadius,
                      blurRadius: TicketInfo._blurRadius,
                      offset: const Offset(0, TicketInfo._cardMargin),
                    ),
                  ],
                ),
                child: ShaderMask(
                  shaderCallback: (Rect rect) => const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      AppTheme.primaryColor,
                    ],
                    stops: [1, 1],
                  ).createShader(rect),
                  blendMode: BlendMode.dstOut,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(
                        TicketInfo._borderRadius,
                      ),
                    ).r,
                    child:
                        // ParallaxImage(
                        //   image:
                        CachedNetworkImage(
                      imageUrl:
                          '${PandovieConfiguration.imageUrl}${widget.movie.posterImageRaw!}',
                    ),
                  ),
                  //   extent: 100.0,
                  //   color: AppTheme.primaryColor,
                  // ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ExpandedMovieInfo extends StatelessWidget {
  const ExpandedMovieInfo({
    super.key,
    required double titleWidth,
    required double titleheight,
    required this.movie,
  })  : _titleWidth = titleWidth,
        _titleheight = titleheight;

  final double _titleWidth;
  final double _titleheight;
  final MovieModel movie;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        20.verticalSpace,
        SizedBox(
          width: _titleWidth,
          height: _titleheight,
          child: TicketInfoTitle(
            movie: movie,
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
                      movie: movie,
                      isrow: true,
                      icons: AppIcons.release,
                      name: 'TMDB',
                      value: movie.voteAverage!.toStringAsFixed(1),
                    ),
                    10.verticalSpace,
                    AbputInfoElement(
                      movie: movie,
                      isrow: true,
                      icons: AppIcons.avarage,
                      name: 'Vote count',
                      value: movie.voteCount!.toStringAsFixed(1),
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
                      movie: movie,
                      isrow: true,
                      icons: AppIcons.popular,
                      name: 'Popularity',
                      value: movie.popularity.toStringAsFixed(1),
                      isFitted: true,
                    ),
                    10.verticalSpace,
                    AbputInfoElement(
                      movie: movie,
                      isrow: true,
                      isDate: true,
                      icons: AppIcons.release,
                      name: 'Release',
                      value: movie.releaseDate!.formatDate(),
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
                    if (movie.budget != null) MovieBudget(movie: movie),
                    10.verticalSpace,
                    if (movie.runtime != null) MovieRuntime(movie: movie),
                    10.verticalSpace,
                    if (movie.genres != null) MovieGenres(movie: movie),
                  ],
                ),
              ),
            ),
            20.horizontalSpace,
            MovieSaveButton(
              movie: movie,
              onTap: () =>
                  context.read<SearchMovieCubit>().addToCollection(movie),
            ),
            10.horizontalSpace,
          ],
        ),
        10.verticalSpace,
        Text(
          movie.overview,
          textAlign: TextAlign.justify,
          style: AppTheme.textStyle.copyWith(
            fontSize: 16.sp,
            color: AppTheme.actionColor.withOpacity(.8),
            fontWeight: FontWeight.w400,
          ),
        ),
        30.verticalSpace,
      ]),
    );
  }
}
