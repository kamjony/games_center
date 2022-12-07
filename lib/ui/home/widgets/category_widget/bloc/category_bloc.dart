import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:games_center/repository/game_repository.dart';
import 'package:games_center/ui/home/widgets/category_widget/bloc/category_event.dart';
import 'package:games_center/ui/home/widgets/category_widget/bloc/category_state.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  final GameRepository gameRepository;

  CategoryBloc({
    required this.gameRepository,
  }) : super(const CategoryState()) {
    on<GetCategories>(_mapGetCategoriesEventToState);
    on<SelectCategory>(_mapSelectCategoryEventToState);
  }

  void _mapGetCategoriesEventToState(GetCategories event, Emitter<CategoryState> emit) async {
    try {
      emit(state.copyWith(status: CategoryStatus.loading));
      final genres = await gameRepository.getGenres();
      emit(
        state.copyWith(
          status: CategoryStatus.success,
          categories: genres,
        ),
      );
    } catch (e) {
      emit(state.copyWith(status: CategoryStatus.error));
    }
  }

  void _mapSelectCategoryEventToState(SelectCategory event, Emitter<CategoryState> emit) async {
    emit(
      state.copyWith(
        status: CategoryStatus.selected,
        idSelected: event.idSelected,
      )
    );
  }
}
