import 'package:flutter/material.dart';
import 'package:meals_app/category_item.dart';
import 'package:meals_app/models/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("MealsApp"),),
      body: GridView(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        children: DUMMY_CATEGORY.map((category) {
          return CategoryItem(category.title, category.color);
        }).toList(),
      ),
    );
  }
}
