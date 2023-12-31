import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsService {
  //final dio = Dio();
  final Dio dio;
  NewsService(this.dio);

  Future<List<ArticleModel>> getNews({required String category}) async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=9c80b0f865784b458b6f6545e07de057&category=$category');

      Map<String, dynamic> jsonData = response.data;
      List<Map<String, dynamic>> articles =
          jsonData['articles'] as List<Map<String, dynamic>>;
      // == List<dynamic> articles =  jsonData['articles'];

      List<ArticleModel> articlesList = [];
      for (var article in articles) {
        ArticleModel articleModel = ArticleModel(
          image: article['urlToImage'],
          subTitle: article['description'],
          title: article['title'],
        );
        articlesList.add(articleModel);
      }
      return articlesList;
    } catch (e) {
      return [];
    }
  }
}
