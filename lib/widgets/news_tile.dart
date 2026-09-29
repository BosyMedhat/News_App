import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/model/ArticleModel.dart';

class NewsTile extends StatelessWidget {
  const NewsTile(this.articleModel, {Key? key}) : super(key: key);
  final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius:
              BorderRadius.circular(8), // إضافة حواف منحنية لطيفة للصورة
          child: Image.network(
            articleModel
                .image!, // يفضل استخدام رابط صورة عادي بدلاً من Base64 كبير جداً
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          height: 10,
        ),
        Text(
          articleModel.title,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        Container(
          height: 10,
        ),
        Text(
          articleModel.subTitle ?? "",
          style: TextStyle(
              fontSize: 9, fontWeight: FontWeight.bold, color: Colors.grey),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
