import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/widgets/category.dart';

import '../model/ArticleModel.dart';
import '../services/newServices.dart';
import 'news_list_view.dart';

class NewsTileListViewBuilder extends StatefulWidget {
  const NewsTileListViewBuilder({
    super.key,
    required this.category,
  });

  final String category;

  @override
  State<NewsTileListViewBuilder> createState() =>
      _NewsTileListViewBuilderState();
}

class _NewsTileListViewBuilderState extends State<NewsTileListViewBuilder> {
  // List<ArticleModel> articles = [];
  // bool isLoading = true;
  // @override
  // void initState() async {
  //   // TODO: implement initState
  //   super.initState();
  //   articles = await NewsService(Dio()).getGeneralNews();
  // }

  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   getNews();
  // }

  // Future<void> getNews() async {
  //   articles = await NewsService(Dio()).getGeneralNews();
  //   isLoading = false;
  //   setState(() {});
  // }
  var future;
  @override
  void initState() {
    // TODO: implement initState
    future = NewsService(Dio()).getGeneralNews(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsTileListView(
            articles: snapshot.data!,
          );
        } else if (snapshot.hasError) {
          return const SliverToBoxAdapter(
            child: Center(
              child: Text('oops there was an error, try again later'),
            ),
          );
        } else {
          return const SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
    // return isLoading
    //     ? SliverToBoxAdapter(child: Center(child: CircularProgressIndicator()))
    //     : NewsTileListView(
    //         articles: articles,
    //       );
  }
}
