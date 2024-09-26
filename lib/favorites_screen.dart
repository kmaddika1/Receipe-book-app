import 'package:flutter/material.dart';
import 'recipe_provider.dart';
import 'details_screen.dart';
import 'package:provider/provider.dart';

class FavoritesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final favoriteRecipes = Provider.of<RecipeProvider>(context).favoriteRecipes;

    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite Recipes'),
      ),
      body: ListView.builder(
        itemCount: favoriteRecipes.length,
        itemBuilder: (context, index) {
          final recipe = favoriteRecipes[index];
          return ListTile(
            title: Text(recipe.name),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(recipe: recipe),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
