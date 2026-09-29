import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/model/ArticleModel.dart';
import 'package:news_app_ui_setup/services/newServices.dart';
import 'package:news_app_ui_setup/widgets/news_tile.dart';

class NewsTileListView extends StatelessWidget {
  const NewsTileListView({Key? key, required this.articles}) : super(key: key);

  final List<ArticleModel> articles;

  // void initState() async {
  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: articles.length,
            (context, index) {
      return NewsTile(articles[index]);

      // ListView.builder(
      //     physics: NeverScrollableScrollPhysics(),
      //     shrinkWrap: true,
      //     itemCount: 10,
      //     itemBuilder: (context, index) {
      //       return NewsTile();
      //     });
    }));
  }
}
