import 'package:deliveryapp_flutter/domain/entity/CartItem.dart';

abstract class CartRepository {
  Future<void> addToCart(CartItem item);
  List<CartItem> getCartItems();
  void clearCart();
}