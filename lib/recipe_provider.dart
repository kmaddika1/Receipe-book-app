import 'package:flutter/material.dart';
import 'package:cw2/recipe.dart';

class RecipeProvider extends ChangeNotifier {
  final List<Recipe> _recipes = [
    Recipe(
      name: 'Chilaquiles',
      description: 'Chilaquiles, a Mexican dish consisting of strips or pieces of corn tortillas that are fried, then sautéed with green or red salsa, and topped with cheese, crema (a sweet, thin cream sauce), and onion. Pulled chicken may also be added during the cooking process, and casserole versions of the dish are popular.',
      imageUrl: "assets/chq.jpeg",
      calories: 250,
    ),
    Recipe(
      name: 'Spaghetti alla Carbonara',
      description: 'Spaghetti alla carbonara is a traditional Italian pasta dish made with spaghetti, eggs, pancetta or bacon, pecorino cheese, and black pepper. The dish is said to have originated in the Lazio region of Italy, specifically in Rome. The name "carbonara" comes from the word "carbonaro" meaning "charcoal burner" as its said that it was a dish that was popular among the charcoal workers.',
      imageUrl: 'assets/tofu.jpg',
      calories: 300,
    ),
    Recipe(
      name: 'Mapo Tofu',
      description: 'Mapo Tofu is the real deal when it comes to spicy and spice lovers alike, establishing itself as one of the most popular dishes in China. The tofu itself is set in hot and spicy sauce before being simmered with bean paste, beef, hot roasted chili oil, and a handful of the infamous tongue-numbing Sichuan peppercorns. If you believe spicy food is king, don’t pass up on any chance to try this peppery delight.',
      imageUrl: 'assets/sp.jpg',
      calories: 300,
    ),
    // Add more recipes as needed
  ];

  List<Recipe> get recipes => _recipes;

  // Method to get only favorite recipes
  List<Recipe> get favoriteRecipes =>
      _recipes.where((recipe) => recipe.isFavorite).toList();

  // Method to toggle favorite status
  void toggleFavorite(Recipe recipe) {
    recipe.isFavorite = !recipe.isFavorite;
    notifyListeners(); // Notify listeners to update UI
  }
}
