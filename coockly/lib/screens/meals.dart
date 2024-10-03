import 'package:coockly/screens/meal_details.dart';
import 'package:coockly/widgets/meals_screen/meal_item.dart';
import 'package:flutter/material.dart';
import 'package:coockly/models/meal.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen({super.key, required this.title, required this.meals});

  final String title;
  final List<Meal> meals;

  void selectMeal(BuildContext context, Meal meal) {
    Navigator.push(context, MaterialPageRoute(builder: (ctx) => MealDetailsScreen(meal: meal)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),

      body: ListView.builder(itemCount: meals.length, itemBuilder: (context, index) {
        return MealItem(
          meal: meals[index], 
          onSelectMeal: (meal) {
            selectMeal(context, meal);
          },
        );
      }),
    );
  }
  
}