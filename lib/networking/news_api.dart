import 'package:http/http.dart' as http;

import '../model/news_model.dart';

class Api {

   Future<http.Response> fetchNews(String news) async {
    var url = Uri.parse("https://newsapi.org/v2/top-headlines?country=$news&category=business&apiKey=30f42eb1e32c429eba2b34d9a37deb0c");
    var response = await http.get(url);
    return response;
  }
}
