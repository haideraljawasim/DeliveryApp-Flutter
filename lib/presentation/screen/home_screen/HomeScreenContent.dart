import 'package:deliveryapp_flutter/presentation/navigation/GoRouter.dart';
import 'package:deliveryapp_flutter/presentation/screen/home_screen/component/CategorizedMealsList.dart';
import 'package:deliveryapp_flutter/presentation/screen/home_screen/component/HomeSearchBar.dart';
import 'package:deliveryapp_flutter/presentation/screen/home_screen/component/HomeTopBar.dart';
import 'package:deliveryapp_flutter/presentation/screen/home_screen/HomeScreenCubit.dart';
import 'package:deliveryapp_flutter/presentation/screen/home_screen/HomeScreenState.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'component/CategoriesTabs.dart';
import 'component/ComboMealsList.dart';

class HomeScreenContent extends StatelessWidget {
  const HomeScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: SafeArea(
        left: false,
        right: false,
        bottom: false,
        child: BlocBuilder<HomeScreenCubit, HomeScreenState>(
          builder: (context, state) {
          if (state.isLoading) {
            return Center(
              child: CircularProgressIndicator(color: Color(0xFFFFA451)),
            );
          }
          if (state.errorMsg != null) {
            return Center(
              child: Text(
                'Error: ${state.errorMsg}',
                style: const TextStyle(color: Colors.red, fontSize: 16),
              ),
            );
          }

          return SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HomeTopBar(),

                Padding(
                  padding: EdgeInsetsGeometry.directional(
                    start: 24,
                    end: 24,
                    bottom: 24,
                  ),
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFF27214D),
                      ),
                      children: [
                        TextSpan(
                          text: "Hello ${state.userName}, ",
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                        TextSpan(
                          text: "What fruit salad combo do you want today?",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                      ],
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
                  meals: state.comboMeals,
                  onMealClicked: (i) {
                    context.read<HomeScreenCubit>().saveComboMealDetails(i);
                    context.go(AppRouts.mealDetails);
                  },
                ),

                CategoriesTabs(
                  categories: state.categories,
                  onCategorySelected: context
                      .read<HomeScreenCubit>()
                      .loadCategorizedMeals,
                  selectedCategoryId: state.selectedCategory,
                ),

                CategorizedMealsList(
                  meals: state.categorizedMeals,
                  onMealClicked: (i) {
                    context.read<HomeScreenCubit>().saveCategorizedMealDetails(i);
                    context.go(AppRouts.mealDetails);
                  },
                ),

                SizedBox(height: 16),
              ],
            ),
          );
        },
      ),
      ),
    );
  }
}
