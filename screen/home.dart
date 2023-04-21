import 'package:flutter/material.dart';
import 'package:recipe/consent/appbar.dart';
import 'package:recipe/consent/colors.dart';
import 'package:recipe/models/recipes.dart';
import 'package:recipe/screen/recipe_home.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int indexx = 0;
  List category = ['All', 'Lunch', 'Dinner', 'Breakfast'];
  List categoryname = ['dinner', 'lunch', 'dinner', 'fast'];
  List dish = [
    ['Burger', 'Omelette', 'Fettuccine Alfredo', 'Sandwich'],
    ['Pizza', 'Steak', 'Pasta Pomodoro', 'Burger'],
    ['Burger', 'Omelette', 'Fettuccine Alfredo', 'Sandwich'],
    ['Pancake', 'Avocado Toast', 'Banana Bowl', 'Waffle'],
  ];

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
      backgroundColor: background,
      appBar: appbar(),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15), //Popular category abstand zum Rand
              child: Text(
                'Popular category',
                style: TextStyle(
                  fontSize: 20,
                  color: font,
                  fontFamily: 'ro',
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 15), // Abstand der Kategorien
            sliver: SliverToBoxAdapter(
              child: Column(
                children: [
                  SizedBox(
                    height: 60,
                    child: ListView.builder(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal, // Kategorien Horizontal auflisten
                      itemBuilder: ((context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: GestureDetector( // Auf die Kategorien tippen und jeweilige Gerichte angezeigt bekommen
                            onTap: () {
                              setState(() {
                                indexx = index;
                              });
                            },
                            child: Container(
                              margin: EdgeInsets.only(
                                top: 5,
                                bottom: 5,
                                left: index == 0 ? 4 : 0,
                              ),
                              decoration: BoxDecoration( //Runde Box mit Blur/Shadow. Tippt man auf jeweilige Kategorie, bekommt sie die Box 
                                borderRadius: BorderRadius.circular(20),
                                color:
                                    indexx == index ? maincolor : Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: indexx == index
                                        ? maincolor
                                        : Colors.transparent,
                                    offset: indexx == index
                                        ? const Offset(1, 1)
                                        : const Offset(0, 0),
                                    blurRadius: indexx == index ? 7 : 0,
                                  )
                                ],
                              ),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 17),
                                  child: Text(
                                    category[index],
                                    style: TextStyle(
                                      fontSize: 16,
                                      color:
                                          indexx == index ? Colors.white : font,
                                      fontFamily: 'ro',
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      }),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      Text(
                        'Popular',
                        style: TextStyle(
                          fontSize: 20,
                          color: font,
                          fontFamily: 'ro',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            sliver: SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) => Recipe(
                            title: dish[index].title,
                            imagePath: dish[index].imagePath,
                            ingredients: dish[index].ingredients,
                            recipe: dish[index].recipe,
                          ),
                        ),
                      );
                    },

                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromARGB(255, 185, 185, 185),
                            offset: Offset(1, 1),
                            blurRadius: 15,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          const SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.only(right: 14),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: const [Icon(Icons.favorite_border)], // favorite icon
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 15,
                            ),
                            child: Container(
                              height: 120,
                              width: 120,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      'images/${categoryname[indexx]}$index.jpg'),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            dish[indexx][index],
                            style: TextStyle(
                              fontSize: 18,
                              color: font,
                              fontFamily: 'ro',
                            ),
                          ),
                          const SizedBox(height: 10),
                        ],
                      ),
                    ),
                  );
                },
                childCount: 4,
              ),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: 270,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
            ),
          ),
        ],
      ),
    );
  }
}