import 'package:deliveryapp_flutter/domain/entity/Meal.dart';
import 'package:deliveryapp_flutter/presentation/screen/home_screen/component/combo_meal_card.dart';
import 'package:flutter/cupertino.dart';

class ComboMealsList extends StatelessWidget {
  final List<Meal> meals;
  final void Function(int) onMealClicked;

  const ComboMealsList({
    super.key,
    required this.meals,
    required this.onMealClicked,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 183,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: meals.length,
        itemBuilder: (context, index) {
          return ComboMealCard(onMealClicked: onMealClicked, meal: meals[index]);
        },
      ),
    );
  }
}
