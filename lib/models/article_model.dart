class ArticleModel {
  final String? image;
  final String title;
  final String? subTitle;
  final Source? source;
  ArticleModel( 
      {required this.source,required this.image, required this.subTitle, required this.title});
}

class Source
{
  final String? id;
  final String? name;

  Source({required this.id,required this.name});
}