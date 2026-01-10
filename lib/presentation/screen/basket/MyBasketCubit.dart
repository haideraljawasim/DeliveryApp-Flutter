import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/entity/CartItem.dart';
import '../../util/AppStrings.dart';
import 'MyBasketState.dart';

class MyBasketCubit extends Cubit<MyBasketState> {
  MyBasketCubit() : super(MyBasketState());

  loadData() async {
    emit(state.copyWith(isLoading: true));
    await Future.delayed(Duration(seconds: 1)); // TODO remove this delay
    final List<CartItem> cartItems = [
      CartItem(imageUrl: Assets.bikeImage, price: 100, name: 'Apple', count: 2),
      // TODO get from server
      CartItem(imageUrl: Assets.bikeImage, price: 10, name: 'Apple', count: 6),
    ];
    emit(
      state.copyWith(
        cartItems: cartItems,
        isLoading: false,
        totalCartPrice: _calculateTotalCartPrice(cartItems),
      ),
    );
  }

  double _calculateTotalCartPrice(List<CartItem> cartItems) {
    return cartItems.fold(0.0, (sum, item) => sum + (item.price * item.count));
  }
}
