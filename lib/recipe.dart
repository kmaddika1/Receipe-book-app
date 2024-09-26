class Recipe {
  final String name;
  final String description;
  final String imageUrl;
  final int calories;
  bool isFavorite; // To track if the recipe is a favorite

  Recipe({
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.calories,
    this.isFavorite = false, // Default to not favorite
  });
}
