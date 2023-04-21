import 'package:flutter/material.dart';
import 'package:recipe/models/recipes.dart';
import 'package:recipe/screen/categor.dart';

class CategoryDetails extends StatelessWidget {
  final String categoryName;
  final List<Dish> dishes;

  const CategoryDetails({super.key, required this.categoryName, required this.dishes});

  @override
  Widget build(BuildContext context) {
    final categoryDishes = dishes
        .where((dish) => dish.category.toLowerCase() == categoryName.toLowerCase())
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryName),
      ),
      body: ListView.builder(
        itemCount: categoryDishes.length,
        itemBuilder: (ctx, index) {
          final dish = categoryDishes[index];

          return ListTile(
            leading: Image.asset(dish.imagePath),
            title: Text(dish.title),
            subtitle: Text(dish.duration.toString() + " min"),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.work),
                SizedBox(height: 6),
                Text(dish.complexityText),
              ],
            ),
            onTap: () => Navigator.of(context).pushNamed('/recipe', arguments: dish),
          );
        },
      ),
    );
  }
}

