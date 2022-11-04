import 'package:get/get.dart';
import 'package:task_ola/model/news_model.dart';
import 'package:task_ola/networking/news_api.dart';

class NewsController extends GetxController {
  var newsList = List<Article>.empty(growable: true).obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    fetchNews();
  }

  void fetchNews() async {
    var news = await Api().fetchNews("news");

    try {
      if (news != null) {
        // newsList.addAll(news.articles);
      }
    } finally {
      isLoading(false);
    }
  }

}