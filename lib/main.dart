import 'package:flutter/material.dart';

import 'view/category_meals_screen.dart';
import 'view/category_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      theme: ThemeData(primarySwatch: Colors.pink),
      home: SafeArea(
        child: CategoryScreen(),
      ),
      routes: {
        'category-mean-screen': (context)=> CategoryMealsScreen()
      },
    );
  }
}
