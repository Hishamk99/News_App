import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/services/news_service.dart';

import 'news_list_view.dart';

class NewsListViewBuilder extends StatelessWidget {
  const NewsListViewBuilder({super.key});

  //List<ArticleModel> articles = [];
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: NewsService(Dio()).getNews(),
      builder: (context, snapshot) {
      return NewsListView(
        articleList: snapshot.data ?? []
      );
    });
    // return isLoading
    //     ? const SliverToBoxAdapter(child: Center(child: CircularProgressIndicator()))
    //     :articles.isNotEmpty ? NewsListView(
    //         articleList: articles,
    //       ) : const SliverToBoxAdapter(child: Center(child: Text('There was an error')));
  }
}
