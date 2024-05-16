import 'package:newsapi/model/source_model.dart';

class Article {
  Source source;
  String author;
  String title;
  String description;
  String publishedAt;

  Article({required this.source, required this.author, required this.title,required this.description, required this.publishedAt});

  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
      source: Source.fromJson(json['source']),
      author: json['author'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      publishedAt: json['publishedAt'] as String,
    );
  }

}