import 'package:flutter/material.dart';

import './dummy_data.dart';

class CategoryMealScreen extends StatelessWidget {
  static const routeName = '/category-meal';

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
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
          return Text(
            categoryMeal[index].title,
          );
        },
      ),
    );
  }
}
