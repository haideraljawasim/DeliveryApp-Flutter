import 'package:deliveryapp_flutter/data/mapper/MealMapper.dart';
import 'package:deliveryapp_flutter/data/util/database_constants.dart';
import 'package:deliveryapp_flutter/domain/entity/Category.dart';
import 'package:deliveryapp_flutter/domain/entity/Meal.dart';
import 'package:deliveryapp_flutter/domain/repository/MealRepository.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class MealRepositoryImpl extends MealRepository {
  final SupabaseClient _client;

  MealRepositoryImpl(this._client);

  @override
  Future<List<Category>> getCategories() async {
    final data = await _client.from(CATEGORIES_TABLE).select();
    return (data).map((it) => it.toCategory()).toList();
  }

  @override
  Future<List<Meal>> getMeals() async {
    final data = await _client.from(MEALS_TABLE).select();
    return (data).map((it) => it.toMeal()).toList();
  }

  @override
  Future<List<Meal>> getMealsByCategory(int categoryId) async {
    final data = await _client
        .from(MEALS_TABLE)
        .select()
        .eq('category_id', categoryId);

    return data.map((it) => it.toMeal()).toList();
  }

  @override
  Future<List<Meal>> searchMeals(String query) async {
    final data = await _client
        .from(MEALS_TABLE)
        .select()
        .or('title.ilike.%$query%,description.ilike.%$query%');

    return data.map((it) => it.toMeal()).toList();
  }
}
