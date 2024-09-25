import 'package:flutter/material.dart';




class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      //* APP BAR
      appBar: AppBar(
        title: const Text("Pick your category"),
      ),

      //* GridView
      body: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, 
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: const [
          Text("Dummy"),
          Text("Dummy"),
          Text("Dummy"),
          Text("Dummy")
        ],
      )
    );
  }
}