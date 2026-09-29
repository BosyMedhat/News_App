import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/model/category_model.dart';
import 'package:news_app_ui_setup/widgets/category.dart';

class CtegoriesListView extends StatelessWidget {
  const CtegoriesListView({
    super.key,
  });
  final List<CategoryModel> categories = const [
    CategoryModel(image: "assets/technology.jpeg", categoryName: "Technology"),
    CategoryModel(
        image: "assets/entertaiment.avif", categoryName: "entertaiment"),
    CategoryModel(image: "assets/health.avif", categoryName: "health"),
    CategoryModel(image: "assets/science.avif", categoryName: "science"),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return Category(category: categories[index]);
          }),
    );
  }
}
