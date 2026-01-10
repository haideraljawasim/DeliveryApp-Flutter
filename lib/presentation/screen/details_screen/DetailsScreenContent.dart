import 'package:deliveryapp_flutter/presentation/screen/details_screen/DetailsScreenCubit.dart';
import 'package:deliveryapp_flutter/presentation/screen/details_screen/DetailsScreenState.dart';
import 'package:deliveryapp_flutter/presentation/screen/details_screen/component/MealCard.dart';
import 'package:deliveryapp_flutter/presentation/screen/details_screen/component/MealDetailsCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailsScreenContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFA451),
      body: SafeArea(
        left: false,
        right: false,
        bottom: false,
        child: BlocBuilder<DetailsScreenCubit, DetailsScreenState>(
          builder: (context, state) {
            if (state.isLoading) {
              return Center(
                child: CircularProgressIndicator(color: Color(0xFFFFA451)),
              );
            }
            final meal = state.meal;

            if (meal != null) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MealCard(meal: meal),

                  Expanded(
                    child: MealDetailsCard(meal: meal, count: state.count),
                  ),
                ],
              );
            }
            return Center(
              child: Text(
                'Error: ${state.errorMsg}',
                style: const TextStyle(color: Colors.red, fontSize: 16),
              ),
            );
          },
        ),
      ),
    );
  }
}
