import 'package:deliveryapp_flutter/domain/entity/Meal.dart';
import 'package:deliveryapp_flutter/presentation/screen/details_screen/component/MealCard.dart';
import 'package:deliveryapp_flutter/presentation/screen/details_screen/component/MealDetailsCard.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFA451),
      body: SafeArea(
        left: false,
        right: false,
        bottom: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MealCard(
              meal: Meal(
                id: 1,
                name: "name1",
                description: "description1",
                imageUrl:
                    "https://media.istockphoto.com/id/1472680285/photo/healthy-meal-with-grilled-chicken-rice-salad-and-vegetables-served-by-woman.jpg?s=612x612&w=0&k=20&c=E4Y94oLIj8lXYk0OovBhsah3s_sC--WF95xPDvbJPlU=",
                price: 200,
                ingredients: [],
              ),
            ),

            Expanded(
              child: MealDetailsCard(
                meal: Meal(
                  id: 1,
                  name: "name1",
                  description: "description1",
                  imageUrl:
                      "https://media.istockphoto.com/id/1472680285/photo/healthy-meal-with-grilled-chicken-rice-salad-and-vegetables-served-by-woman.jpg?s=612x612&w=0&k=20&c=E4Y94oLIj8lXYk0OovBhsah3s_sC--WF95xPDvbJPlU=",
                  price: 200,
                  ingredients: [
                    "Red Quinoa",
                    "Lime",
                    "Honey",
                    "Blueberries",
                    "Strawberries",
                    "Mango",
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
