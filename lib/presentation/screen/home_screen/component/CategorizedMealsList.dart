import 'package:deliveryapp_flutter/domain/entity/Meal.dart';
import 'package:deliveryapp_flutter/presentation/screen/home_screen/component/CategorizedMealCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' show CircularProgressIndicator;

class CategorizedMealsList extends StatelessWidget {
  final List<Meal> meals;
  final bool isLoading;
  final void Function(int) onMealClicked;

  const CategorizedMealsList({
    super.key,
    required this.meals,
    required this.isLoading,
    required this.onMealClicked,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
      child: isLoading
          ? Center(child: CircularProgressIndicator(color: Color(0xFFFFA451)))
          : _buildMealsList(),
    );
  }

  Widget _buildMealsList() {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: meals.length,
      itemBuilder: (context, index) {
        return CategorizedMealCard(
          onMealClicked: onMealClicked,
          meal: meals[index],
        );
      },
    );
  }
}
