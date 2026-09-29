import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

import '../model/ArticleModel.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);

  Future<List<ArticleModel>> getGeneralNews({required String category}) async {
    try {
      final response = await dio.get(
          'https://newsapi.org/v2/top-headlines?apiKey=1391507b129946449dd40906bd103055&country=us&category=$category');

      Map<String, dynamic> jsonData = response.data;

      List<dynamic> articles = jsonData["articles"];

      List<ArticleModel> articlesList = [];

      for (var article in articles) {
        // ArticleModel articleModel = ArticleModel(
        //   image: article["urlToImage"],
        //   title: article["title"],
        //   subTitle: article["description"],
        // );
        ArticleModel articleModel = ArticleModel.fromJson(article);

        articlesList.add(articleModel);
      }

      return articlesList;
    } catch (e) {
      return [];
    }
  }
}
