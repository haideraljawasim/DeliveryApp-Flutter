import 'package:deliveryapp_flutter/domain/repository/CartRepository.dart';
import 'package:deliveryapp_flutter/domain/repository/MealRepository.dart';
import 'package:deliveryapp_flutter/presentation/screen/details_screen/DetailsScreenState.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/entity/CartItem.dart';

class DetailsScreenCubit extends Cubit<DetailsScreenState> {
  final MealRepository mealRepository;
  final CartRepository cartRepository;

  DetailsScreenCubit(this.mealRepository, this.cartRepository)
    : super(DetailsScreenState());

  loadData(String mealId) async {
    emit(state.copyWith(isLoading: true));
    try {
      final meal = await mealRepository.getMealById(int.parse(mealId));

      emit(state.copyWith(isLoading: false, meal: meal));
    } catch (e) {
      emit(state.copyWith(isLoading: false, errorMsg: 'failed to load data'));
    }
  }

  onPlusClicked() {
    emit(state.copyWith(count: state.count + 1));
  }

  onMinusClicked() {
    if (state.count > 1) emit(state.copyWith(count: state.count - 1));
  }

  onAddToCartClicked() {
    if (state.meal == null) return;
    cartRepository.addToCart(
      CartItem(
        id: state.meal!.id,
        count: state.count,
        imageUrl: state.meal!.imageUrl,
        name: state.meal!.name,
        price: state.meal!.price,
      ),
    );
  }
}
