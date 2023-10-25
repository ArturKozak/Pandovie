import 'dart:async';
import 'dart:math';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pandovie/configuration/pandovie_configuration.dart';
import 'package:pandovie/data/models/movie_model.dart';
import 'package:pandovie/resource/theme.dart';

class ImageList extends StatefulWidget {
  const ImageList({
    Key? key,
    this.duration = 30,
    required this.results,
    required this.name,
  }) : super(key: key);

  final List<MovieModel> results;
  final int duration;
  final String name;

  @override
  State<ImageList> createState() => _ImageListState();
}

class _ImageListState extends State<ImageList> {
  static const _leftTextPadding = 60.0;
  static const _leftBottomPadding = 5.0;

  static final _height = 290.h;
  static final _width = 190.w;

  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    _scrollController.addListener(() {
      if (_scrollController.hasClients) {
        autoScrollImage();
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) {
      autoScrollImage();
    });
  }

  void autoScrollImage() {
    final currentScrollPosition = _scrollController.offset;
    final endScrollPosition = _scrollController.position.maxScrollExtent;
    final beginScrollPosition = _scrollController.position.minScrollExtent;
    scheduleMicrotask(() {
      if (currentScrollPosition == endScrollPosition) {
        _scrollController.animateTo(
          beginScrollPosition,
          duration: Duration(seconds: widget.duration),
          curve: Curves.linear,
        );
      }
      if (currentScrollPosition == beginScrollPosition) {
        _scrollController.animateTo(
          endScrollPosition,
          duration: Duration(seconds: widget.duration),
          curve: Curves.linear,
        );
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.removeListener(() {
      autoScrollImage();
    });
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: pi * 1.95,
      child: SizedBox(
        height: _height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: _leftTextPadding,
                bottom: _leftBottomPadding,
              ).r,
              child: Text(
                widget.name,
                style: AppTheme.textStyle.copyWith(
                  fontSize: 24.sp,
                  color: AppTheme.actionColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                padding: const EdgeInsets.symmetric(horizontal: 25).r,
                controller: _scrollController,
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemCount: widget.results.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: _width,
                      margin: const EdgeInsets.all(4).r,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20).r,
                        image: DecorationImage(
                          image: CachedNetworkImageProvider(
                            '${PandovieConfiguration.imageUrl}${widget.results[index].posterImageRaw!}',
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
