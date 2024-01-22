import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:news_app_2110020069/model/article_model.dart';

class ApiService {
  final endPointUrl = "newsapi.org";
  final client = http.Client();
  Future<List<Article>> getArticleOtomotive() async {
    final queryParameters = {
      // 'country': 'id',
      'q': 'automotive',
      'apiKey': '7d57b84a04f64b9cb6a5f21f1d34a67a'
    };
    final uri = Uri.https(endPointUrl, '/v2/everything', queryParameters);
    final response = await client.get(uri);
    Map<String, dynamic> json = jsonDecode(response.body);
    List<dynamic> body = json['articles'];
    List<Article> articles =
        body.map((dynamic item) => Article.fromJson(item)).toList();
    return articles;
  }

  Future<List<Article>> getArticleSports() async {
    final queryParameters = {
      'country': 'id',
      'category': 'sports',
      'apiKey': '37dedd6ada4947a1bdbc933d3d7bbe35'
    };
    final uri = Uri.https(endPointUrl, '/v2/top-headlines', queryParameters);
    final response = await client.get(uri);
    Map<String, dynamic> json = jsonDecode(response.body);
    List<dynamic> body = json['articles'];
    List<Article> articles =
        body.map((dynamic item) => Article.fromJson(item)).toList();
    return articles;
  }
}
