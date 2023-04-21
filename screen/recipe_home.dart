import 'package:flutter/material.dart';
import 'package:recipe/models/recipes.dart';
import 'package:flutter/material.dart';

class Recipe extends StatelessWidget {
  final String title;
  final String imagePath;
  final List<String> ingredients;
  final String recipe;

  const Recipe({super.key, 
    required this.title,
    required this.imagePath,
    required this.ingredients,
    required this.recipe,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              imagePath,
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              child: Text(
                'Ingredients',
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: ingredients.map((ingredient) {
                  return Text('- $ingredient');
                }).toList(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              child: Text(
                'Recipe',
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(recipe),
            ),
          ],
        ),
      ),
    );
  }
}
