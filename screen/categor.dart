import 'package:flutter/material.dart';
import 'package:recipe/consent/appbar.dart';
import 'package:recipe/models/recipes.dart';
import 'package:recipe/screen/category_details.dart';
class Category extends StatelessWidget {
   Category({super.key});
  
  final List<String> categories = [ 'Italian', 'Fast Food','Healthy', 'Cakes', 'Desserts', 'Shakes' ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: 270,
            ),
            itemCount: categories.length,
            itemBuilder: ((context, index) {
              final categoryName = categories[index];
              
              return GestureDetector(
                // Navigate to CategoryDetails
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) {
                      final categoryDishes = dishes
                          .where((dish) => dish.category.toLowerCase() == categoryName.toLowerCase())
                          .toList();
                      return CategoryDetails(categoryName: categoryName, dishes: categoryDishes,);
                    })
                  );
                },

                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(25),
                      image: DecorationImage(
                        image: AssetImage('images/${index + 1}c.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
