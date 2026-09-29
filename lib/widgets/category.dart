import 'dart:js';

import 'package:flutter/material.dart';

import 'package:news_app_ui_setup/model/category_model.dart';
import 'package:news_app_ui_setup/screens/CategoryPage.dart';

class Category extends StatelessWidget {
  const Category({Key? key, required this.category}) : super(key: key);
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return CategoryPage(
            category: category.categoryName,
          );
        }));
      },
      child: Container(
        margin: EdgeInsets.only(right: 16),
        height: 100,
        width: 160,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(category.image)),
          borderRadius: BorderRadius.circular(22),
        ),
        child: Center(
          child: Text(
            category.categoryName,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
