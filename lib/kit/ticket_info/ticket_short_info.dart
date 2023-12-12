import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pandovie/kit/ticket_info/about_info_element.dart';
import 'package:pandovie/kit/ticket_info/movie_save_button.dart';
import 'package:pandovie/kit/ticket_info/tiket_info.dart';
import 'package:pandovie/navigation/auto_route.dart';
import 'package:pandovie/resource/app_icons.dart';
import 'package:pandovie/resource/theme.dart';

class TicketShortInfo extends StatelessWidget {
  const TicketShortInfo({
    super.key,
    required this.isExpanded,
    required this.widget,
  });

  final bool isExpanded;
  final TicketInfo widget;

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: const Duration(milliseconds: 150),
      opacity: isExpanded ? 0 : 1,
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 10,
        ).r,
        decoration: BoxDecoration(
          color: AppTheme.actionColor,
          border: Border.all(
            color: AppTheme.primaryColor,
          ),
          borderRadius: BorderRadius.circular(16).r,
        ),
        child: Column(
          children: [
            AboutInfoElement(
              movie: widget.movie,
              isDetails: false,
              icons: AppIcons.release,
              name: 'TMDB',
              value: widget.movie.voteAverage!.toStringAsFixed(1),
            ),
            10.verticalSpace,
            AboutInfoElement(
              movie: widget.movie,
              isDetails: false,
              isDate: true,
              icons: AppIcons.release,
              name: 'Runtime',
              value: '${widget.movie.runtime!.toStringAsFixed(0)} min.',
              isFitted: true,
            ),
            20.verticalSpace,
            MovieSaveButton(
              movie: widget.movie,
              onTap: () => AppRouter.navigateToDetailsPage(widget.movie),
            ),
          ],
        ),
      ),
    );
  }
}
