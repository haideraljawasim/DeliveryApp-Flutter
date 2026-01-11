import 'package:deliveryapp_flutter/domain/repository/MealRepository.dart';
import 'package:deliveryapp_flutter/domain/repository/UserRepository.dart';
import 'package:deliveryapp_flutter/presentation/screen/home_screen/HomeScreenState.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreenCubit extends Cubit<HomeScreenState> {
  final MealRepository mealRepository;
  final UserRepository userRepository;

  HomeScreenCubit(this.mealRepository, this.userRepository)
    : super(HomeScreenState());

  loadData() async {
    emit(state.copyWith(isLoading: true));
    try {
      final categories = await mealRepository.getCategories();
      final comboMeals = await mealRepository.getMealsByCategory(3);
      final userName = userRepository.getUser()?.firstName;
      final categorizedMeal = await mealRepository.getMealsByCategory(
        categories[0].id,
      );

      emit(
        state.copyWith(
          categories: categories,
          userName: userName,
          selectedCategory: categories[0].id,
          comboMeals: comboMeals,
          categorizedMeals: categorizedMeal,
          isLoading: false,
        ),
      );
    } catch (e) {
      emit(state.copyWith(isLoading: false, errorMsg: 'failed to load data'));
    }
  }

  loadCategorizedMeals(int categoryId) async {
    if (state.selectedCategory == categoryId) return;

    emit(state.copyWith(selectedCategory: categoryId));
    emit(state.copyWith(isLoadingByCategory: true));
    try {
      final meals = await mealRepository.getMealsByCategory(categoryId);

      emit(
        state.copyWith(
          isLoading: false,
          categorizedMeals: meals,
          isLoadingByCategory: false,
        ),
      );
    } catch (e) {
      emit(state.copyWith(isLoading: false, errorMsg: 'Failed to load data'));
    }
  }
}
