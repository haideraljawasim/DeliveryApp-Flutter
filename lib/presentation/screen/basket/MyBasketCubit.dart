import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/entity/CartItem.dart';
import '../../../domain/repository/CartRepository.dart';
import 'MyBasketState.dart';

class MyBasketCubit extends Cubit<MyBasketState> {
  final CartRepository cartRepository;

  MyBasketCubit(this.cartRepository) : super(MyBasketState());

  loadData() async {
    emit(state.copyWith(isLoading: true));
    await Future.delayed(Duration(seconds: 1)); // TODO remove this delay
    final List<CartItem> cartItems = cartRepository.getCartItems();
    emit(
      state.copyWith(
        cartItems: cartItems,
        isLoading: false,
        totalCartPrice: _calculateTotalCartPrice(cartItems),
      ),
    );
  }

  cleanCart() {
    cartRepository.clearCart();
    emit(state.copyWith(cartItems: []));
  }

  double _calculateTotalCartPrice(List<CartItem> cartItems) {
    final total = cartItems.fold(
      0.0,
      (sum, item) => sum + item.price * item.count,
    );

    return double.parse(total.toStringAsFixed(2));
  }
}
