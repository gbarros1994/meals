
import 'package:flutter/material.dart';
import '../models/category.dart';
import '../data/dummy_data.dart';

class CategoriesMealsScreen extends StatelessWidget {

final category = ModalRoute.of(context)!.settings.arguments as Category;

final categoryMeals = DUMMY_MEALS.where((meal) {
  return meal.categories.contains(category.id);
}).toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: ListView.builder(
        itemCount: categoryMeals.length,
        itemBuilder: (ctx, index) {
          return Text(categoryMeals[index].title);
        },
      ),
    );
  }
}