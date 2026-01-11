import 'package:deliveryapp_flutter/domain/entity/Meal.dart';
import 'package:deliveryapp_flutter/presentation/screen/details_screen/component/MealFavouriteRow.dart';
import 'package:deliveryapp_flutter/presentation/screen/details_screen/component/MealPriceRow.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MealDetailsCard extends StatelessWidget {
  final Meal meal;
  final int count;

  const MealDetailsCard({super.key, required this.meal, required this.count});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      padding: EdgeInsetsGeometry.directional(top: 40, start: 24, end: 24),
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              meal.name,
              style: TextStyle(
                color: Color(0xFF27214D),
                fontSize: 32,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 32),
            MealPriceRow(count: count, price: meal.price),
            SizedBox(height: 32),
            Divider(thickness: 1, color: Color(0xFFF3F3F3), height: 1),
            SizedBox(height: 32),

            Text(
              "One Pack Contains:",
              style: TextStyle(
                color: Color(0xFF27214D),
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 2),
            Container(
              height: 2,
              width: 153,
              decoration: const BoxDecoration(color: Color(0xFFFFA451)),
            ),

            SizedBox(height: 18),
            Text(
              "${meal.ingredients.join(", ")}",
              style: TextStyle(
                color: Color(0xFF27214D),
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 20),
            Divider(thickness: 1, color: Color(0xFFF3F3F3), height: 1),
            SizedBox(height: 24),
            Text(
              "${meal.description}",
              style: TextStyle(
                color: Color(0xFF27214D),
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 39),
            MealFavouriteRow(),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
