import 'package:flutter/material.dart';
import 'package:recipe/consent/appbar.dart';
import 'package:recipe/models/search_functions.dart';
import 'package:recipe/models/recipes.dart';
import 'package:recipe/screen/recipe_search.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  List<Dish> results = [];

  void search(String query) {
    setState(() {
      results = dishes
          .where((dish) =>
              dish.name.toLowerCase().contains(query.toLowerCase()) ||
              dish.ingredients
                  .any((ingredient) => ingredient.toLowerCase().contains(query.toLowerCase())))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: Container(
                  width: double.infinity,
                  height: 55,
                  padding: EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 185, 185, 185),
                        offset: Offset(1, 1),
                        blurRadius: 15,
                      ),
                    ],
                  ),
                  child: TextField(
                    onChanged: search,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Search your recipe',
                      icon: Icon(Icons.search),
                    ),
                  ),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return ListTile(
                    title: Text(results[index].name),
                    subtitle: Text(results[index].title),
                    leading: Image.asset(results[index].imagePath),
                    onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RecipeDetailsPage(dish: results[index]),
                          ),
                        );
                    },
                  );
                },
                childCount: results.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
