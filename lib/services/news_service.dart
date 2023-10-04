import 'package:dio/dio.dart';

class NewsService {
  //final dio = Dio();
  final Dio dio;
  NewsService(this.dio);

  void getNews() async {
    Response response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=eg&category=general&apiKey=9c80b0f865784b458b6f6545e07de057');

    Map<String, dynamic> jsonData = response.data;
    List<Map<String, dynamic>> articles =
        jsonData['articles'] as List<Map<String, dynamic>>;
    // == List<dynamic> articles =  jsonData['articles'];
  }
}
