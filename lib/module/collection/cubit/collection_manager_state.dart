part of 'collection_manager_cubit.dart';

@freezed
class CollectionManagerState with _$CollectionManagerState {
  const factory CollectionManagerState.initial() =
      _Initial;

  const factory CollectionManagerState.updatedMovieCollection(
      List<MovieModel> movies) = _UpdatedMovieCollection;
}
