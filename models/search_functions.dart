import 'package:recipe/models/recipes.dart';

class Search {
  static List<Dish> searchByName(String name, List<Dish> dishes) {
    return dishes.where((dish) => dish.name.toLowerCase().contains(name.toLowerCase())).toList();
  }
}
