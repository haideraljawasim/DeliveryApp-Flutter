import 'package:deliveryapp_flutter/domain/repository/MealRepository.dart';
import 'package:deliveryapp_flutter/presentation/screen/details_screen/DetailsScreenState.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailsScreenCubit extends Cubit<DetailsScreenState>{
  final MealRepository mealRepository;

  DetailsScreenCubit(this.mealRepository) : super(DetailsScreenState());

  loadData(String mealId) async {
    emit(state.copyWith(isLoading: true));
    try{
      final meal = await mealRepository.getMealById(int.parse(mealId));

      emit(state.copyWith(isLoading: false, meal: meal));
    }catch (e){
      emit(state.copyWith(isLoading: false, errorMsg: 'failed to load data'));
    }
  }

  onPlusClicked(){
    emit(state.copyWith(count: state.count + 1 ));
  }

  onMinusClicked(){
    if(state.count > 1) emit(state.copyWith(count: state.count - 1 ));
  }
}