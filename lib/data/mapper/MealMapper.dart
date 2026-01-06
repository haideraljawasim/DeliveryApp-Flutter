import '../../domain/entity/Category.dart';
import '../../domain/entity/Meal.dart';

extension MealExtension on Map<String, dynamic> {
  Meal toMeal() {
    return Meal(
      id: this['id'],
      name: this['title'] ?? '',
      description: this['description'] ?? '',
      imageUrl: this['image_url'] ?? '',
      price: double.tryParse(this['price'].toString()) ?? 0,
      ingredients: List<String>.from(this['ingredients'] ?? []),
    );
  }
}

extension CategoryExtension on Map<String, dynamic> {
  Category toCategory() {
    return Category(id: this['id'], name: this['name'] ?? '');
  }
}
