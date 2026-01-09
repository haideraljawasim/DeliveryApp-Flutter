import 'package:deliveryapp_flutter/domain/entity/Meal.dart';
import 'package:deliveryapp_flutter/presentation/screen/home_screen/component/CategorizedMealCard.dart';
import 'package:flutter/cupertino.dart';

class CategorizedMealsList extends StatelessWidget {
  final List<Meal> meals;
  final void Function(int) onMealClicked;

  const CategorizedMealsList({
    super.key,
    required this.meals,
    required this.onMealClicked,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: meals.length,
        itemBuilder: (context, index) {
          return CategorizedMealCard(
            onMealClicked: onMealClicked,
            meal: meals[index],
          );
        },
      ),
    );
  }
}
