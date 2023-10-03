import 'package:dio/dio.dart';
class NewsService
{
  //final dio = Dio();
  final Dio dio;
  NewsService(this.dio);

  void getHttp() async {
    final response = await dio.get('https://newsapi.org/v2/top-headlines?country=us&apiKey=9c80b0f865784b458b6f6545e07de057');
    print(response);
}
}