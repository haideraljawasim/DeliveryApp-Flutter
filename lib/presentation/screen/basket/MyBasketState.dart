import '../../../domain/entity/CartItem.dart';

class MyBasketState {
  final bool isLoading;
  final List<CartItem> cartItems;
  final double totalCartPrice;

  const MyBasketState({
    this.isLoading = false,
    this.cartItems = const [],
    this.totalCartPrice = 0,
  });

  MyBasketState copyWith({
    bool? isLoading,
    List<CartItem>? cartItems,
    double? totalCartPrice,
  }) {
    return MyBasketState(
      isLoading: isLoading ?? this.isLoading,
      cartItems: cartItems ?? this.cartItems,
      totalCartPrice: totalCartPrice ?? this.totalCartPrice,
    );
  }
}
