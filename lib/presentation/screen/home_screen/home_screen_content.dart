import 'package:deliveryapp_flutter/presentation/screen/home_screen/component/categorized_meals_list.dart';
import 'package:deliveryapp_flutter/presentation/screen/home_screen/component/home_search_bar.dart';
import 'package:deliveryapp_flutter/presentation/screen/home_screen/component/home_top_bar.dart';
import 'package:deliveryapp_flutter/presentation/screen/home_screen/home_screen_cubit.dart';
import 'package:deliveryapp_flutter/presentation/screen/home_screen/home_screen_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'component/categories_tabs.dart';
import 'component/combo_meals_list.dart';

class HomeScreenContent extends StatelessWidget {
  const HomeScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: BlocBuilder<HomeScreenCubit, HomeScreenState>(
        builder: (context, state) => SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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

              ComboMealsList(meals: state.comboMeals, onMealClicked: (i) => {}),

              CategoriesTabs(
                categories: state.categories,
                onCategorySelected: context.read<HomeScreenCubit>().loadCategorizedMeals,
                selectedCategoryId: state.selectedCategory,
              ),

              CategorizedMealsList(
                meals: state.categorizedMeals,
                onMealClicked: (i) => {},
              ),

              SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
