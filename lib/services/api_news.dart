import 'dart:convert';
import 'package:http/http.dart';
import 'package:newsapi/model/article_model.dart';

class ApiNews {
  // ignore: non_constant_identifier_names
  final Uri newApiUrl = Uri.parse(
      "https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=9f0ee9a639ce4f55887ce07a9f2ffe44");

  Future<List<Article>> getArticle() async {
    Response responce = await get(newApiUrl);

    if (responce.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(responce.body);

      List<dynamic> body = json['articles'];
      List<Article> articles =
          body.map((dynamic item) => Article.fromJson(item)).toList();
      return articles;
    } else {
      throw ("No hay articulos");
    }
  }
}
