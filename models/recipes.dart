
import 'package:meta/meta.dart';

class Dish {
  final String name;
  final String imagePath;
  final String title;
  final List<String> ingredients;
  final String recipe;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;
  final String category;

  const Dish({
    required this.name,
    required this.imagePath,
    required this.title,
    required this.ingredients,
    required this.recipe,
    required this.duration,
    required this.complexity,
    required this.affordability,
    required this.category,
  });
    String get complexityText {
    switch (complexity) {
      case Complexity.Simple:
        return 'Simple';
      case Complexity.Medium:
        return 'Medium';
      case Complexity.Hard:
        return 'Hard';
      default:
        return '';
    }
  }
}

enum Complexity { Simple, Medium, Hard }

enum Affordability { Affordable, Pricey, Luxurious }


List<Dish> dishes = [
  const Dish(
    name: 'Burger',
    imagePath: 'images/lunch3.jpg',
    title: 'Recipe for burger',
    ingredients: [
    '1 lb ground beef',
    '1 egg',
    '1/4 cup breadcrumbs',
    '1/4 cup milk',
    '1 tablespoon Worcestershire sauce',
    '1/2 teaspoon salt',
    '1/4 teaspoon black pepper',
    '4 hamburger buns',
    'Lettuce, tomato, onion, cheese, condiments (optional)',
  ],
    recipe:  '''
          1. In a large mixing bowl, combine the ground beef, egg, breadcrumbs, milk, Worcestershire sauce, salt, and pepper. Mix well.
          2. Divide the mixture into 4 equal portions and shape them into patties.
          3. Heat a non-stick frying pan over Medium-high heat. Add the patties to the pan and cook for 4-5 minutes on each side, or until cooked to your desired level of doneness.
          4. Toast the hamburger buns in a toaster or under the broiler.
          5. Assemble the burger by placing the cooked patty on the bottom bun and topping it with lettuce, tomato, onion, cheese, and condiments if desired. Cover with the top bun and serve.
          ''',
    duration: 30,
    complexity: Complexity.Simple,
    affordability: Affordability.Affordable,
    category: 'Fast Food',
  ),
  const Dish(
    name: 'Pizza',
    imagePath: 'images/lunch0.jpg',
    title: 'Recipe for pizza',
    ingredients: [
    '1 lb pizza dough',
    '1/2 cup pizza sauce',
    '2 cups shredded mozzarella cheese',
    '1/2 cup sliced pepperoni',
    '1/4 cup sliced black olives',
    '1/4 cup diced bell pepper',
    '1/4 cup diced onion',
    '1/4 teaspoon dried oregano',
    '1/4 teaspoon dried basil',
    '1/4 teaspoon garlic powder',
  ],
    recipe: '''
            1. Preheat the oven to 425°F (220°C).
            2. Roll out the pizza dough on a lightly floured surface to the desired size and thickness.
            3. Spread the pizza sauce evenly over the dough, leaving a small border around the edges.
            4. Sprinkle the shredded mozzarella cheese over the sauce.
            5. Top the pizza with the pepperoni, black olives, bell pepper, and onion.
            6. Sprinkle the dried oregano, dried basil, and garlic powder over the toppings.
            7. Bake the pizza in the preheated oven for 12-15 minutes, or until the crust is golden brown and the cheese is melted and bubbly.
            8. Remove the pizza from the oven and let it cool for a few minutes before slicing and serving.
            ''',
    duration: 45,
    complexity: Complexity.Medium,
    affordability: Affordability.Pricey,
    category: 'Italian',
  ),
  const Dish(
    name: 'Pancake',
    imagePath: 'images/fast0.jpg',
    title: 'Recipe for pancake',
    ingredients:  [
    '1 cup all-purpose flour',
    '2 tablespoons sugar',
    '2 teaspoons baking powder',
    '1/4 teaspoon salt',
    '1 large egg, lightly beaten',
    '1 cup milk',
    '2 tablespoons unsalted butter, melted',
  ],
    recipe:  '''
          1. In a large mixing bowl, whisk together the flour, sugar, baking powder, and salt.
          2. In a separate bowl, beat the egg lightly and then add in the milk and melted butter. Mix well.
          3. Add the wet ingredients to the dry ingredients and mix until just combined. Do not overmix the batter.
          4. Heat a non-stick frying pan over Medium heat. Add a small amount of butter or oil to the pan.
          5. Use a 1/4 cup measure to scoop the batter and pour it onto the pan.
          6. Cook the pancake for 2-3 minutes on each side, or until lightly golden brown.
          ''',
    duration: 20,
    complexity: Complexity.Simple,
    affordability: Affordability.Affordable,
    category: 'Dessert',
  ),
  const Dish(
    name: 'Omelette',
    imagePath: 'images/dinner1.jpg',
    title: 'Recipe for omelette',
    ingredients: ['2eggs', '1 tablespoon butter', 'Salt and pepper to taste', 'Optional fillings such as cheese, ham, vegetables', 'Butter'],
    recipe: 'Crack the eggs into a small mixing bowl and whisk until the yolks and whites are fully combined. Add a pinch of salt and pepper to the eggs and mix well. If you are using fillings, chop them into small pieces and set them aside. Heat a non-stick frying pan over Medium-high heat and add the butter. Let it melt and coat the pan evenly. Pour the egg mixture into the pan and swirl it around to make sure it covers the entire surface of the pan. Let the eggs cook for about 30 seconds or until they start to set on the bottom. If using fillings, sprinkle them over half of the omelette. Use a spatula to fold the empty half of the omelette over the fillings. Let the omelette cook for another 30 seconds or until the eggs are fully cooked and the fillings are heated through. Use the spatula to slide the omelette onto a plate and serve immediately.',
    duration: 20,
    complexity: Complexity.Simple,
    affordability: Affordability.Affordable,
    category: 'Healthy',
  ),
    const Dish(
    name: 'Fettuccine Alfredo',
    imagePath: 'images/dinner2.jpg',
    title: 'Recipe for fettuccine alfredo ',
    ingredients:  [
    '1 lb fettuccine pasta',
    '1/2 cup unsalted butter',
    '2 cups heavy cream',
    '1 1/2 cups freshly grated Parmesan cheese',
    '1/4 teaspoon garlic powder',
    '1/4 teaspoon black pepper',
    'Salt to taste',
    'Chopped parsley for garnish (optional)',
  ],
    recipe:  '''
  1. Bring a large pot of salted water to a boil. Add the fettuccine and cook for 8-10 minutes, or until al dente.
  2. While the pasta is cooking, melt the butter in a large saucepan over Medium heat.
  3. Add the heavy cream to the saucepan and bring to a simmer.
  4. Reduce the heat to low and add the grated Parmesan cheese, garlic powder, and black pepper. Stir until the cheese is melted and the sauce is smooth.
  5. Drain the cooked pasta and add it to the saucepan with the Alfredo sauce. Toss to coat the pasta evenly with the sauce.
  6. Season with salt to taste.
  7. Transfer the pasta to serving plates and garnish with chopped parsley if desired.
  ''',
    duration: 25,
    complexity: Complexity.Medium,
    affordability: Affordability.Pricey,
    category: 'Italian',
  ),

      const Dish(
    name: 'Sandwich',
    imagePath: 'images/dinner3.jpg',
    title: 'Recipe for Sandwich ',
    ingredients:  [
    '2 boneless, skinless chicken breasts',
    '1/2 cup all-purpose flour',
    '1/2 teaspoon salt',
    '1/4 teaspoon black pepper',
    '1/4 teaspoon paprika',
    '1/4 teaspoon garlic powder',
    '1/4 teaspoon onion powder',
    '1 egg, beaten',
    '1/4 cup milk',
    '1 cup breadcrumbs',
    '4 hamburger buns',
    '4 slices of cheddar cheese',
    '4 lettuce leaves',
    '4 tomato slices',
    '4 tablespoons mayonnaise',
    '4 tablespoons barbecue sauce',
  ],
    recipe: '''
  1. Preheat the oven to 375°F (190°C).
  2. Butterfly the chicken breasts by slicing them in half lengthwise.
  3. In a shallow bowl, whisk together the flour, salt, black pepper, paprika, garlic powder, and onion powder.
  4. In another shallow bowl, whisk together the beaten egg and milk.
  5. In a third shallow bowl, place the breadcrumbs.
  6. Coat each chicken breast in the seasoned flour mixture, shaking off any excess.
  7. Dip the chicken into the egg mixture, then coat it in breadcrumbs, pressing the breadcrumbs onto the chicken to make sure they stick.
  8. Place the breaded chicken breasts on a baking sheet lined with parchment paper.
  9. Bake the chicken in the preheated oven for 20-25 minutes, or until the internal temperature reaches 165°F (74°C).
  10. While the chicken is baking, prepare the sandwiches. Toast the hamburger buns and spread mayonnaise on one side of each bun.
  11. Place a lettuce leaf and a tomato slice on the bottom half of each bun.
  12. When the chicken is done baking, remove it from the oven and place a slice of cheddar cheese on each chicken breast.
  13. Return the chicken to the oven and bake for an additional 2-3 minutes, or until the cheese is melted and bubbly.
  14. Remove the chicken from the oven and place a chicken breast on top of each sandwich.
  15. Drizzle 1 tablespoon of barbecue sauce over each chicken breast.
  16. Place the top half of the bun on each sandwich and serve.
  ''',
    duration: 45,
    complexity: Complexity.Medium,
    affordability: Affordability.Affordable,
    category: 'Healthy',
  ),
      const Dish(
    name: 'Waffle',
    imagePath: 'images/fast3.jpg',
    title: 'Recipe for waffles',
    ingredients:  [
    '1 3/4 cups all-purpose flour',
    '1 tablespoon baking powder',
    '1/4 teaspoon salt',
    '2 tablespoons sugar',
    '3 large eggs',
    '1 1/2 cups milk',
    '1/2 cup unsalted butter, melted',
    '1 teaspoon vanilla extract',
    'Whipped cream and fresh berries, for serving',
  ],
    recipe: '''
  1. Preheat your waffle maker according to the manufacturer's instructions.
  2. In a large mixing bowl, whisk together the flour, baking powder, salt, and sugar.
  3. In another mixing bowl, whisk together the eggs, milk, melted butter, and vanilla extract.
  4. Pour the wet ingredients into the dry ingredients and stir until just combined. The batter should be lumpy.
  5. Spray the waffle maker with non-stick cooking spray.
  6. Ladle the batter onto the waffle maker, using about 1/2 cup of batter for each waffle.
  7. Cook the waffles until golden brown and crispy, about 3-5 minutes depending on your waffle maker.
  8. Serve the waffles hot with whipped cream and fresh berries.
  ''',
    duration: 30,
    complexity: Complexity.Simple,
    affordability: Affordability.Affordable,
    category: 'Dessert',
  ),
      const Dish(
    name: 'Avocado Toast',
    imagePath: 'images/fast1.jpg',
    title: 'Recipe for avocado toast',
    ingredients:  [
    '2 slices of whole wheat bread',
    '1 ripe avocado, peeled and pitted',
    '1 tablespoon fresh lime juice',
    '1/4 teaspoon garlic powder',
    '1/4 teaspoon salt',
    '1/4 teaspoon black pepper',
    'Red pepper flakes, for serving',
    'Optional toppings: sliced tomatoes, microgreens, crumbled feta cheese',
  ],
    recipe: '''
  1. Toast the bread slices until golden brown.
  2. While the bread is toasting, mash the avocado in a small mixing bowl.
  3. Stir in the lime juice, garlic powder, salt, and black pepper.
  4. Spread the avocado mixture onto the toasted bread slices.
  5. Top with sliced tomatoes, microgreens, crumbled feta cheese, and a sprinkle of red pepper flakes, if desired.
  6. Serve immediately.
  ''',
    duration: 15,
    complexity: Complexity.Simple,
    affordability: Affordability.Affordable,
    category: 'Healthy',
  ),
        const Dish(
    name: 'Banana Bowl',
    imagePath: 'images/fast2.jpg',
    title: 'Recipe for banana bowl',
    ingredients:  [
    '2 ripe bananas',
    '1/2 cup Greek yogurt',
    '1/4 cup granola',
    '1/4 cup blueberries',
    '1 tablespoon honey',
    '1 tablespoon almond butter',
    '1/2 teaspoon vanilla extract',
  ],
    recipe:  '''
  1. Cut the bananas into slices and arrange them in a bowl.
  2. In a separate mixing bowl, whisk together the Greek yogurt, honey, almond butter, and vanilla extract.
  3. Pour the yogurt mixture over the bananas.
  4. Top with granola and blueberries.
  5. Serve immediately.
  ''',
    duration: 10,
    complexity: Complexity.Simple,
    affordability: Affordability.Affordable,
    category: 'Healthy',
  ),
          const Dish(
    name: 'Pasta Pomodoro',
    imagePath: 'images/lunch2.jpg',
    title: 'Recipe for pasta pomodoro',
    ingredients: [
    '12 oz spaghetti',
    '1/4 cup olive oil',
    '4 garlic cloves, thinly sliced',
    '1/4 tsp red pepper flakes (optional)',
    '28 oz can whole peeled tomatoes',
    '1/4 tsp salt',
    '1/4 tsp black pepper',
    '1/4 cup chopped fresh basil leaves',
    '1/4 cup grated Parmesan cheese',
  ],
    recipe: '''
  1. Cook the spaghetti according to the package instructions. Reserve 1 cup of the pasta water, then drain the pasta and set it aside.
  2. In a large saucepan, heat the olive oil over medium heat.
  3. Add the garlic and red pepper flakes (if using) and cook for 1-2 minutes, stirring occasionally, until fragrant.
  4. Add the tomatoes, salt, and black pepper. Bring the sauce to a simmer and cook for 10-15 minutes, stirring occasionally and breaking up the tomatoes with a wooden spoon, until the sauce has thickened.
  5. Add the cooked spaghetti to the saucepan and toss to coat the pasta with the sauce. If the sauce is too thick, add some of the reserved pasta water to thin it out.
  6. Divide the pasta among four plates and top with chopped basil and grated Parmesan cheese.
  7. Serve immediately.
  ''',
    duration: 30,
    complexity: Complexity.Simple,
    affordability: Affordability.Affordable,
    category: 'Italian',
  ),
            const Dish(
    name: '',
    imagePath: 'images/.jpg',
    title: 'Recipe for ',
    ingredients: [''],
    recipe: '',
    duration: 20,
    complexity: Complexity.Simple,
    affordability: Affordability.Affordable,
    category: '',
  ),
];
