import 'package:deliveryapp_flutter/domain/entity/Category.dart';
import 'package:deliveryapp_flutter/domain/entity/Meal.dart';
import 'package:deliveryapp_flutter/presentation/screen/home_screen/component/categorized_meals_list.dart';
import 'package:deliveryapp_flutter/presentation/screen/home_screen/component/home_search_bar.dart';
import 'package:deliveryapp_flutter/presentation/screen/home_screen/component/home_top_bar.dart';
import 'package:flutter/material.dart';

import 'component/categories_tabs.dart';
import 'component/combo_meals_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            HomeTopBar(),

            Padding(
              padding: EdgeInsetsGeometry.directional(
                start: 24,
                end: 90,
                bottom: 24,
              ),
              child: Text(
                "Hello Tony, What fruit salad combo do you want today?",
                style: TextStyle(
                  color: Color(0xFF27214D),
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),

            HomeSearchBar(),

            Padding(
              padding: EdgeInsetsGeometry.directional(
                start: 24,
                end: 90,
                bottom: 24,
              ),
              child: Text(
                "Recommended Combo",
                style: TextStyle(
                  color: Color(0xFF27214D),
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),

            ComboMealsList(
              meals: [
                Meal(
                  id: 1,
                  name: "name1",
                  description: "",
                  imageUrl:
                      "https://media.istockphoto.com/id/1190330112/photo/fried-pork-and-vegetables-on-white-background.jpg?s=612x612&w=0&k=20&c=TzvLLGGvPAmxhKJ6fz91UGek-zLNNCh4iq7MVWLnFwo=",
                  price: 2000,
                  ingredients: [],
                ),
                Meal(
                  id: 2,
                  name: "name2",
                  description: "",
                  imageUrl:
                      "https://media.istockphoto.com/id/1190330112/photo/fried-pork-and-vegetables-on-white-background.jpg?s=612x612&w=0&k=20&c=TzvLLGGvPAmxhKJ6fz91UGek-zLNNCh4iq7MVWLnFwo=",
                  price: 2000,
                  ingredients: [],
                ),
                Meal(
                  id: 3,
                  name: "name3",
                  description: "",
                  imageUrl:
                      "https://media.istockphoto.com/id/1190330112/photo/fried-pork-and-vegetables-on-white-background.jpg?s=612x612&w=0&k=20&c=TzvLLGGvPAmxhKJ6fz91UGek-zLNNCh4iq7MVWLnFwo=",
                  price: 2000,
                  ingredients: [],
                ),
              ],
              onMealClicked: (i) => {},
            ),

            CategoriesTabs(
              categories: [
                Category(id: 1, name: "c1"),
                Category(id: 2, name: "c2"),
                Category(id: 3, name: "c3"),
              ],
              onCategorySelected: (i) => {},
              selectedCategoryId: 1,
            ),

            CategorizedMealsList(
              meals: [
                Meal(
                  id: 1,
                  name: "name1",
                  description: "",
                  imageUrl:
                      "https://media.istockphoto.com/id/1190330112/photo/fried-pork-and-vegetables-on-white-background.jpg?s=612x612&w=0&k=20&c=TzvLLGGvPAmxhKJ6fz91UGek-zLNNCh4iq7MVWLnFwo=",
                  price: 2000,
                  ingredients: [],
                ),
                Meal(
                  id: 2,
                  name: "name2",
                  description: "",
                  imageUrl:
                      "https://media.istockphoto.com/id/1190330112/photo/fried-pork-and-vegetables-on-white-background.jpg?s=612x612&w=0&k=20&c=TzvLLGGvPAmxhKJ6fz91UGek-zLNNCh4iq7MVWLnFwo=",
                  price: 2000,
                  ingredients: [],
                ),
                Meal(
                  id: 3,
                  name: "name3",
                  description: "",
                  imageUrl:
                      "https://media.istockphoto.com/id/1190330112/photo/fried-pork-and-vegetables-on-white-background.jpg?s=612x612&w=0&k=20&c=TzvLLGGvPAmxhKJ6fz91UGek-zLNNCh4iq7MVWLnFwo=",
                  price: 2000,
                  ingredients: [],
                ),
              ],
              onMealClicked: (i) => {},
            ),

            SizedBox(height: 16,)
          ],
        ),
      ),
    );
  }
}
