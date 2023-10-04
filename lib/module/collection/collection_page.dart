import 'package:auto_route/auto_route.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pandovie/module/collection/cubit/collection_manager_cubit.dart';
import 'package:pandovie/resource/theme.dart';
import 'package:pandovie/utils/open_cubit/open_cubit_page_base.dart';

@RoutePage()
class CollectionPage extends OpenCubitPageBase<CollectionManagerCubit> {
  CollectionPage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    // return MultiBlocProvider(
    //   providers: [
    //     BlocProvider(
    //       create: (_) => OpenCubit.put(CardSwitcherCubit()..init()),
    //     ),
    //     BlocProvider(
    //       create: (_) => OpenCubit.put(MovieParallaxCubit()..init()),
    //     ),
    //   ],
    //   child: this,
    // );

    return this;
  }

  @override
  Widget body(BuildContext context) {
    return BlocBuilder<CollectionManagerCubit, CollectionManagerState>(
      builder: (context, state) {
        return state.when(
          initial: () => const SizedBox(),
          updatedMovieCollection: (movies) {
            return Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          AppTheme.primaryColor.withOpacity(1),
                          AppTheme.primaryColor.withOpacity(1),
                          AppTheme.primaryColor.withOpacity(1),
                          AppTheme.primaryColor.withOpacity(1),
                          AppTheme.primaryColor.withOpacity(0.0),
                          AppTheme.primaryColor.withOpacity(0.0),
                          AppTheme.primaryColor.withOpacity(0.0),
                          AppTheme.primaryColor.withOpacity(0.0),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 50,
                  height: MediaQuery.of(context).size.height * 0.7,
                  width: MediaQuery.of(context).size.width,
                  child:
                      //   BlocBuilder<CollectionManagerCubit, CollectionManagerState>(
                      // buildWhen: (previous, current) => current.when(
                      //   updatedCurrentPage: (_) => true,
                      //   updatedMovieCollection: (_) => false,
                      // ),
                      // builder: (context, state) {
                      //   return state.maybeWhen(
                      //     orElse: () => const SizedBox(),
                      //     updatedCurrentPage: (index) =>
                      CarouselSlider(
                    options: CarouselOptions(
                      height: 500.0,
                      aspectRatio: 16 / 9,
                      viewportFraction: .85,
                      enlargeCenterPage: true,

                      // onPageChanged: (index, _) =>
                      //     cubitController.updatePage(index),
                    ),
                    carouselController: cubitController.carouselController,
                    items: movies.map(
                      (movie) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Container(
                              width: MediaQuery.of(context).size.width,
                              margin: const EdgeInsets.symmetric(
                                horizontal: 5.0,
                              ).r,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Container(
                                      height: 320,
                                      margin: const EdgeInsets.only(
                                        top: 30,
                                      ).r,
                                      clipBehavior: Clip.hardEdge,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        image: DecorationImage(
                                          image: MemoryImage(
                                            movie.posterImage!,
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 20),
                                    Text(
                                      movie.title,
                                      style: const TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    // rating
                                    const SizedBox(height: 20),
                                    Text(
                                      movie.overview,
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        color: Colors.grey.shade600,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    const SizedBox(height: 20),
                                    AnimatedOpacity(
                                      duration: const Duration(
                                        milliseconds: 500,
                                      ),
                                      opacity: 0.0,
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                const Icon(
                                                  Icons.star,
                                                  color: Colors.yellow,
                                                  size: 20,
                                                ),
                                                const SizedBox(width: 5),
                                                Text(
                                                  '4.5',
                                                  style: TextStyle(
                                                      fontSize: 14.0,
                                                      color:
                                                          Colors.grey.shade600),
                                                )
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.access_time,
                                                  color: Colors.grey.shade600,
                                                  size: 20,
                                                ),
                                                const SizedBox(width: 5),
                                                Text(
                                                  '2h',
                                                  style: TextStyle(
                                                      fontSize: 14.0,
                                                      color:
                                                          Colors.grey.shade600),
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.2,
                                              child: Row(
                                                children: [
                                                  Icon(
                                                    Icons.play_circle_filled,
                                                    color: Colors.grey.shade600,
                                                    size: 20,
                                                  ),
                                                  const SizedBox(width: 5),
                                                  Text(
                                                    'Watch',
                                                    style: TextStyle(
                                                        fontSize: 14.0,
                                                        color: Colors
                                                            .grey.shade600),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ).toList(),
                  ),
                ),
              ],
            );
          },
          // ),
          // )
          // ],
        );
      },
    );
    // },
    // ),
    // );
  }
}
