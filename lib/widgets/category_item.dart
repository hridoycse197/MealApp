import 'package:flutter/material.dart';

class CategoryItems extends StatelessWidget {
  final String title;
  final String id;
  final Color color;

  CategoryItems(this.title, this.color, this.id);

  void selectCategory(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      'category-mean-screen',
      arguments: {
        'id': id,
        'title': title,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () => selectCategory(context),
        child: Container(
          alignment: Alignment.center,
          child: Text(
            title,
            style: TextStyle(fontSize: 25),
          ),
          height: 200,
          width: 150,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [color.withOpacity(0.7), color],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}
