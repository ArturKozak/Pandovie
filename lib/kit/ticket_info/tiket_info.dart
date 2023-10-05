import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pandovie/data/models/movie_model.dart';
import 'package:pandovie/kit/ticket_info/animated_info_element.dart';
import 'package:pandovie/kit/ticket_info/popularity_info.dart';
import 'package:pandovie/kit/ticket_info/release_info.dart';
import 'package:pandovie/kit/ticket_info/ticket_info_overview.dart';
import 'package:pandovie/kit/ticket_info/ticket_info_title.dart';
import 'package:pandovie/kit/ticket_info/ticket_painter.dart';
import 'package:pandovie/kit/ticket_info/vote_count.dart';
import 'package:pandovie/kit/ticket_info/vote_info.dart';
import 'package:pandovie/module/search/cubit/search_page_controller/search_page_controller_cubit.dart';
import 'package:pandovie/resource/theme.dart';
import 'package:pandovie/utils/open_cubit/open_cubit_impl.dart';
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

  static final _titleBottomPosition = 120.h;
  static final _overviewBottomPosition = 55.h;
  static final _voteInfoTopPosition = 35.h;
  static final _voteCountTopPosition = 95.h;
  static final _popularityTopPosition = 155.h;
  static final _releaseTopPosition = 205.h;

  double _ticketHeight = 650.h;
  double _tiketTopPosition = 80.h;

  bool _isExpanded = false;
  bool _isInfoVisibled = true;

  Future<void> _expandContainer() async {
    if (_isExpanded) {
      return;
    }

    setState(() {
      _isInfoVisibled = false;
      _ticketHeight = 1.05.sh;
      _tiketTopPosition = 0;
      _isExpanded = true;
    });
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

            TicketInfoTitle(
              titleBottomPosition: _isExpanded ? 250.h : _titleBottomPosition,
              movie: widget.movie,
              opacity: OpenCubit.listen<SearchPageControllerCubit>(context)
                          .currentIndex ==
                      widget.index
                  ? 1
                  : 0,
            ),
            TicketInfoOverView(
              isExpanded: _isExpanded,
              overviewBottomPosition:
                  _isExpanded ? 45.h : _overviewBottomPosition,
              movie: widget.movie,
              opacity: OpenCubit.listen<SearchPageControllerCubit>(context)
                          .currentIndex ==
                      widget.index
                  ? 1
                  : 0,
            ),
            AnimatedInfoElement(
              isExpanded: _isExpanded,
              isInfoVisibled: _isInfoVisibled,
              topPosition: _voteInfoTopPosition,
              expandedRightPosition: .82.sw,
              child: VoteInfo(
                movie: widget.movie,
              ),
              onEnd: () {
                setState(() {
                  _isInfoVisibled = true;
                });
              },
            ),
            AnimatedInfoElement(
              isExpanded: _isExpanded,
              isInfoVisibled: _isInfoVisibled,
              topPosition: _voteCountTopPosition,
              expandedRightPosition: .4.sw,
              child: VoteCount(
                movie: widget.movie,
              ),
              onEnd: () {
                setState(() {
                  _isInfoVisibled = true;
                });
              },
            ),
            AnimatedInfoElement(
              isExpanded: _isExpanded,
              isInfoVisibled: _isInfoVisibled,
              topPosition: _popularityTopPosition,
              expandedRightPosition: -.1.sw,
              child: PopularityInfo(
                movie: widget.movie,
              ),
              onEnd: () {
                setState(() {
                  _isInfoVisibled = true;
                });
              },
            ),
            if (widget.movie.releaseDate != null)
              AnimatedInfoElement(
                isExpanded: _isExpanded,
                isInfoVisibled: _isInfoVisibled,
                topPosition: _releaseTopPosition,
                expandedRightPosition: -.65.sw,
                child: ReleaseInfo(
                  movie: widget.movie,
                ),
                onEnd: () {
                  setState(() {
                    _isInfoVisibled = true;
                  });
                },
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
              child: ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(
                    _borderRadius,
                  ),
                ).r,
                child: ParallaxImage(
                  image: MemoryImage(
                    widget.movie.posterImage!,
                  ),
                  extent: 100.0,
                  color: AppTheme.primaryColor,
                ),
              ),
            ),
            //       32.verticalSpace,
            //       MovieSaveButton(
            //         movie: widget.movie,
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
