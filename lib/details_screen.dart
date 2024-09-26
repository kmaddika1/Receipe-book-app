import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'recipe.dart';
import 'recipe_provider.dart';

class DetailsScreen extends StatelessWidget {
  final Recipe recipe;

  DetailsScreen({required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(recipe.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(recipe.description),
            SizedBox(height: 10),
            Image.asset(recipe.imageUrl),
            SizedBox(height: 10),
            Text('Calories: ${recipe.calories}'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final provider = Provider.of<RecipeProvider>(context, listen: false);
                provider.toggleFavorite(recipe); // Toggle favorite status
              },
              child: Text(recipe.isFavorite ? 'Unfavorite' : 'Favorite'), // Dynamic button label
            ),
          ],
        ),
      ),
    );
  }
}
