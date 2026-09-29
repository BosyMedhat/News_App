// import 'package:flutter/material.dart';
// import 'package:news_app_ui_setup/widgets/categories_list_view.dart';
// import '../widgets/category_List_View.dart';
// import '../widgets/news_list_view.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           centerTitle: true,
//           title: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(
//                 "News",
//                 style: TextStyle(color: Colors.black),
//               ),
//               Text(
//                 "Cloud",
//                 style: TextStyle(color: Colors.orange),
//               ),
//             ],
//           ),
//           backgroundColor: Colors.transparent,
//           elevation: 0,
//         ),
//         // body: CtegoriesListView(),
//         body: const Column(
//           children: [CategoriesListView(), Expanded(child: NewsTileListView())],
//         ));
//   }
// }
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/widgets/news_tile.dart';
import '../model/ArticleModel.dart';
import '../services/newServices.dart';
import '../widgets/category_List_View.dart';
import '../widgets/news_list_view.dart';
import '../widgets/news_listview_builder.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              "News",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            Text(
              "Cloud",
              style:
                  TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(physics: BouncingScrollPhysics(), slivers: [
          SliverToBoxAdapter(
            child: CtegoriesListView(),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 16)),
          NewsTileListViewBuilder(category: "general"),
          // SliverToBoxAdapter(
          //   child: NewsTileListView(),
          // ),
        ]),
        // child: Column(
        //   children: const [
        //     CtegoriesListView(),
        //     SizedBox(height: 16),
        //     Expanded(
        //       child: NewsTileListView(),
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
