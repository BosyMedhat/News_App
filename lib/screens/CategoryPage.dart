import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/widgets/news_listview_builder.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key? key, required this.category}) : super(key: key);
  final String category;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        NewsTileListViewBuilder(
          category: category,
        )
      ],
    );
  }
}
