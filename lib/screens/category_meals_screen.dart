import 'package:flutter/material.dart';

import '../dummy_data.dart';
import '../widgets/meal_item.dart';

class CategoryMealScreen extends StatelessWidget {
  static const routeName = '/category-meal';

  @override
  Widget build(BuildContext context) {
    final modelRoute = ModalRoute.of(context).settings.arguments;
    final routeArgs = modelRoute as Map<String, String>;

    final categoryTitle = routeArgs['title'];
    final categoryID = routeArgs['id'];

    final categoryMeal = DUMMY_MEALS.where(
      (meal) {
        return meal.categories.contains(categoryID);
      },
    ).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          categoryTitle,
        ),
      ),
      body: ListView.builder(
        itemCount: categoryMeal.length,
        itemBuilder: (ctx, index) {
          return MealItem(
            id: categoryMeal[index].id,
            title: categoryMeal[index].title,
            imageUrl: categoryMeal[index].imageUrl,
            duration: categoryMeal[index].duration,
            affordability: categoryMeal[index].affordability,
            complexity: categoryMeal[index].complexity,
          );
        },
      ),
    );
  }
}
