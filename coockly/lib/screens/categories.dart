import 'package:coockly/data/dumy_data.dart';
import 'package:coockly/models/category.dart';
import 'package:coockly/screens/meals.dart';
import 'package:coockly/widgets/category_grid_item.dart';
import 'package:flutter/material.dart';




class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  //* Category selection function
  void _selectCategory(BuildContext context, Category category) {
    final filteredMeals = dummyMeals.where((meal) => meal.categories.contains(category.id)).toList();
    Navigator.push(context, MaterialPageRoute(builder: (ctx) => MealsScreen(title: category.title, meals: filteredMeals)));
  }


  //* Widget Builder
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      //* APP BAR
      appBar: AppBar(
        title: const Text("Pick your category"),
      ),

      //* GridView
      body: GridView(
          padding: const EdgeInsets.all(24),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, 
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),

        children: [
          for (final cat in availableCategories)
            CategoryGridItem(
              category: cat, 
              onSelectCategory: () {
                _selectCategory(context, cat);
              },
            )
        ],
      )
    );
  }
}