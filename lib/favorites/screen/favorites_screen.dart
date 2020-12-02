import 'package:flutter/material.dart';

import '../../meals/widget/meal_item.dart';
import '../../meals/model/meal.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Meal> _favoritedMeals;

  FavoritesScreen(this._favoritedMeals);

  @override
  Widget build(BuildContext context) {
    if (_favoritedMeals.isEmpty) {
      return Center(
        child: Text('You have no favorites yet - start adding some!'),
      );
    } else {
      return ListView.builder(
        itemBuilder: (context, index) {
          return MealItem(
            id: _favoritedMeals[index].id,
            title: _favoritedMeals[index].title,
            imageUrl: _favoritedMeals[index].imageUrl,
            duration: _favoritedMeals[index].duration,
            complexity: _favoritedMeals[index].complexity,
            affordability: _favoritedMeals[index].affordability,
          );
        },
        itemCount: _favoritedMeals.length,
      );
    }
  }
}
