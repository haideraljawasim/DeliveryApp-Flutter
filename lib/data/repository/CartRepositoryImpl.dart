import 'package:deliveryapp_flutter/domain/entity/CartItem.dart';
import 'package:deliveryapp_flutter/domain/repository/CartRepository.dart';

class CartRepositoryImpl extends CartRepository {
  final List<CartItem> _cartItems = [];

  @override
  Future<void> addToCart(CartItem item) async {
    if (_cartItems.any((cartItem) => cartItem.id == item.id)) {
      final index = _cartItems.indexWhere((cartItem) => cartItem.id == item.id);
      _cartItems[index] = item;
    } else {
      _cartItems.add(item);
    }
  }

  @override
  List<CartItem> getCartItems() {
    return _cartItems;
  }

  @override
  void clearCart() {
    _cartItems.clear();
  }
}
