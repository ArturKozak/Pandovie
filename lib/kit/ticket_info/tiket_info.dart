import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pandovie/configuration/pandovie_configuration.dart';
import 'package:pandovie/data/models/movie_model.dart';
import 'package:pandovie/kit/parallax_layout/parallax_widget.dart';
import 'package:pandovie/kit/scale_transition_container.dart';
import 'package:pandovie/kit/ticket_info/ticket_info_overview.dart';
import 'package:pandovie/kit/ticket_info/ticket_info_title.dart';
import 'package:pandovie/kit/ticket_info/ticket_painter.dart';
import 'package:pandovie/kit/ticket_info/ticket_short_info.dart';
import 'package:pandovie/module/details/details_page.dart';
import 'package:pandovie/resource/theme.dart';

class TicketInfo extends StatefulWidget {
  final MovieModel movie;

  const TicketInfo({
    required this.movie,
    super.key,
  });

  @override
  State<TicketInfo> createState() => _TicketInfoState();
}

class _TicketInfoState extends State<TicketInfo>
    with SingleTickerProviderStateMixin {
  static final _titleBottomPosition = 115.h;
  static const _margin = 11.0;
  static const _cardMargin = 12.0;
  static const _cardTopMargin = 12.0;

  static final _titleTopPosition = 530.h;

  static final _voteInfoTopPosition = 35.h;
  static final _horizontalPadding = 10.0.w;
  static final _ticketHeight = 850.h;

  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return PageTransitionButton(
      onStateChanged: (p0) => setState(() {
        isExpanded = p0;
      }),
      vsync: this,
      nextPage: DetailsMoviePage(movie: widget.movie),
      child: Stack(
        children: [
          Container(
            height: _ticketHeight,
            margin: const EdgeInsets.all(
              _margin,
            ).r,
            width: 1.sw,
            child: CustomPaint(
              painter: TicketPainter(
                borderColor:
                    isExpanded ? AppTheme.actionColor : AppTheme.primaryColor,
                bgColor: AppTheme.actionColor,
              ),
            ),
          ),
          Positioned(
            left: _horizontalPadding * 4,
            right: _horizontalPadding * 4,
            top: _titleTopPosition,
            bottom: _titleBottomPosition,
            child: AnimatedOpacity(
              duration: const Duration(milliseconds: 150),
              opacity: isExpanded ? 0 : 1,
              child: TicketInfoTitle(
                movie: widget.movie,
              ),
            ),
          ),
          TicketInfoOverView(
            movie: widget.movie,
            isExpanded: isExpanded,
          ),
          AnimatedOpacity(
            duration: const Duration(milliseconds: 150),
            opacity: isExpanded ? 0 : 1,
            child: Container(
              margin: const EdgeInsets.only(
                left: _cardMargin,
                right: _cardMargin,
                top: _cardTopMargin,
              ).r,
              height: .633.sh,
              width: 1.1.sw,
              child: ClipPath(
                clipper: TicketClipper(),
                child: ParallaxImage(
                  image: CachedNetworkImageProvider(
                    '${PandovieConfiguration.imageUrl}${widget.movie.posterImageRaw!}',
                  ),
                  extent: 120.0,
                  color: AppTheme.actionColor,
                ),
              ),
            ),
          ),
          Positioned(
            left: .77.sw,
            right: _horizontalPadding * 2,
            top: _voteInfoTopPosition,
            child: TicketShortInfo(
              isExpanded: isExpanded,
              widget: widget,
            ),
          ),
        ],
      ),
    );
  }
}
