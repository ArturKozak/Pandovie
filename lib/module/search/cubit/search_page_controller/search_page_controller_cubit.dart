import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pandovie/utils/open_cubit/open_cubit_impl.dart';

part 'search_page_controller_state.dart';
part 'search_page_controller_cubit.freezed.dart';

class SearchPageControllerCubit extends Cubit<SearchPageControllerState> {
  SearchPageControllerCubit({
    this.tag,
  }) : super(
          const SearchPageControllerState.switcher(0),
        );

  final String? tag;

  int currentIndex = 0;

  late final PageController pageController;

  void init() {
    pageController = PageController(viewportFraction: 1);
  }

  void updatePage(int index) {
    currentIndex = index;

    emit(
      SearchPageControllerState.switcher(index),
    );
  }

  @override
  Future<void> close() {
    OpenCubit.delete<SearchPageControllerCubit>();

    return super.close();
  }
}
