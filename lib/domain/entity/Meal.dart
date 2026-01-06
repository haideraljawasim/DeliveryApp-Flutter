class Meal {
  final int id;
  final String name;
  final String description;
  final String imageUrl;
  final double price;
  final List<String> ingredients;

  Meal({
    required this.id,
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.price,
    required this.ingredients,
  });
}
