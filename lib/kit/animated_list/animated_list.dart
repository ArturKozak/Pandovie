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
    required this.nameColor,
    required this.bgColor,
    required this.onTap,
  }) : super(key: key);

  final List<MovieModel> results;
  final int duration;
  final String name;
  final Color bgColor;
  final Color nameColor;
  final void Function(MovieModel) onTap;

  @override
  State<ImageList> createState() => _ImageListState();
}

class _ImageListState extends State<ImageList> {
  static const _leftTextPadding = 60.0;
  static const _leftBottomPadding = 5.0;
  static const _borderRadius = 20.0;

  static final _height = 310.h;
    static final _smallDisplayHeight = 280.h;
  static final _width = 160.w;
    static final _smallDisplayWidth = 140.h;

  static final _listPaddings = const EdgeInsets.only(
    left: 25,
    right: 25,
    bottom: 30,
  ).r;

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
    final size = MediaQuery.of(context).size;

    return Transform.rotate(
      angle: pi * 1.95,
      child: Container(
        decoration: BoxDecoration(
          color: widget.bgColor,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ).r,
        ),
        height:size.height < 700 ? _smallDisplayHeight: _height,
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
                  color: widget.nameColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                padding: _listPaddings,
                controller: _scrollController,
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemCount: widget.results.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      final currentScrollPosition = _scrollController.offset;
                      final endScrollPosition =
                          _scrollController.position.maxScrollExtent;
                      final beginScrollPosition =
                          _scrollController.position.minScrollExtent;

                      if (currentScrollPosition < endScrollPosition / 2) {
                        _scrollController.animateTo(
                          endScrollPosition,
                          duration: Duration(seconds: widget.duration),
                          curve: Curves.linear,
                        );
                      }
                      if (currentScrollPosition > endScrollPosition / 2) {
                        _scrollController.animateTo(
                          beginScrollPosition,
                          duration: Duration(seconds: widget.duration),
                          curve: Curves.linear,
                        );
                      }

                      widget.onTap.call(widget.results[index]);
                    },
                    child: Container(
                      width: size.height < 700 ? _smallDisplayWidth: _width,
                      margin: const EdgeInsets.all(4).r,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(_borderRadius).r,
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
