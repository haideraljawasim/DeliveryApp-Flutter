import '../entity/Category.dart';
import '../entity/Meal.dart';

abstract class MealRepository {
  Future<List<Category>> getCategories();

  Future<List<Meal>> getMeals();

  Future<List<Meal>> getMealsByCategory(int categoryId);

  Future<List<Meal>> searchMeals(String query);
}
