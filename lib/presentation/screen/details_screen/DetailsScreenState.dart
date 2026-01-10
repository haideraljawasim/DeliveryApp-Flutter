import 'package:deliveryapp_flutter/domain/entity/Meal.dart';

class DetailsScreenState {
  final bool isLoading;
  final String? errorMsg;
  final Meal? meal;
  final int count;

  DetailsScreenState({
    this.isLoading = false,
    this.errorMsg,
    this.meal,
    this.count = 1,
  });

  DetailsScreenState copyWith({
    bool? isLoading,
    String? errorMsg,
    Meal? meal,
    int? count,
  }) {
    return DetailsScreenState(
      isLoading: isLoading ?? this.isLoading,
      errorMsg: errorMsg ?? this.errorMsg,
      meal: meal ?? this.meal,
      count: count ?? this.count,
    );
  }
}
