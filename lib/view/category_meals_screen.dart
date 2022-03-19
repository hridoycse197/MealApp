import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  // final String categoryId;
  // final String categoryTitle;
  // CategoryMealsScreen({required this.categoryId,required this.categoryTitle});

  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['id'];
    final categoryId = routeArgs['title'];
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryId!),
      ),
      body: Center(
        child: Text(
          categoryTitle!,
          style: TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}
