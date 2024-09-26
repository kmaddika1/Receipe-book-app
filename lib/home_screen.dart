import 'package:flutter/material.dart';
import 'recipe_provider.dart';
import 'details_screen.dart';
import 'favorites_screen.dart'; // Add import for FavoritesScreen
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final recipes = Provider.of<RecipeProvider>(context).recipes;

    return Scaffold(
      appBar: AppBar(
        title: Text('My Recipes'),
        actions: [
          IconButton(
            icon: Icon(Icons.favorite),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FavoritesScreen()),
              );
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          final recipe = recipes[index];
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
