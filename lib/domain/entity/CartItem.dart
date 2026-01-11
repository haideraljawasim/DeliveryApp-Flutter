class CartItem {
  final int id;
  final String name;
  final int count;
  final double price;
  final String imageUrl;

  const CartItem({
    required this.id,
    required this.name,
    required this.count,
    required this.price,
    required this.imageUrl,
  });
}