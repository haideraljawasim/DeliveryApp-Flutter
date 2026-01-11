import 'package:deliveryapp_flutter/domain/entity/Category.dart';
import 'package:deliveryapp_flutter/domain/entity/Meal.dart';

class HomeScreenState {
  final bool isLoading;
  final List<Meal> comboMeals;
  final String? errorMsg;
  final List<Category> categories;
  final List<Meal> categorizedMeals;
  final int selectedCategory;
  final String userName;
  final bool isLoadingByCategory;

  HomeScreenState({
    this.isLoading = false,
    this.comboMeals = const [],
    this.errorMsg,
    this.categories = const [],
    this.categorizedMeals = const [],
    this.selectedCategory = 0,
    this.userName = "Tony",
    this.isLoadingByCategory = false
  });

  HomeScreenState copyWith({
    bool? isLoading,
    List<Meal>? comboMeals,
    String? errorMsg,
    List<Category>? categories,
    List<Meal>? categorizedMeals,
    int? selectedCategory,
    String? userName,
    bool? isLoadingByCategory
}){
    return HomeScreenState(
      isLoading: isLoading ?? this.isLoading,
      comboMeals: comboMeals ?? this.comboMeals,
      errorMsg: errorMsg ?? this.errorMsg,
      categories: categories ?? this.categories,
      categorizedMeals: categorizedMeals ?? this.categorizedMeals,
      selectedCategory: selectedCategory ?? this.selectedCategory,
      userName: userName ?? this.userName,
      isLoadingByCategory: isLoadingByCategory ?? this.isLoadingByCategory
    );
  }
}
