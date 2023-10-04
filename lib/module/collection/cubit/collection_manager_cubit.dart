import 'dart:async';

import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:pandovie/data/models/movie_model.dart';
import 'package:pandovie/data/repositories/collection_repositories.dart';
import 'package:pandovie/utils/open_cubit/open_cubit_impl.dart';

part 'collection_manager_state.dart';
part 'collection_manager_cubit.freezed.dart';

class CollectionManagerCubit extends Cubit<CollectionManagerState> {
  CollectionManagerCubit() : super(const CollectionManagerState.initial());

  final _collectionRepo = GetIt.I<CollectionRepository>();

  late final CarouselController _carouselController;
  late final StreamSubscription _onCollectionsUpdateSubscription;

  CarouselController get carouselController => _carouselController;

  void _updateCollection(List<MovieModel> movies) {
    emit(
      CollectionManagerState.updatedMovieCollection(movies),
    );
  }

  void init() {
    _carouselController = CarouselController();

    _updateCollection(_collectionRepo.allMovies);

    _onCollectionsUpdateSubscription =
        _collectionRepo.allMoviesStream.listen(_updateCollection);
  }

  @override
  Future<void> close() {
    _onCollectionsUpdateSubscription.cancel();

    OpenCubit.delete<CollectionManagerCubit>();

    return super.close();
  }
}
