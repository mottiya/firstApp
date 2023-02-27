import 'package:get/get.dart';
import 'package:megd/app/modules/articles/controller/article_controller.dart';

class ArticleBinding implements Bindings{
  @override
  void dependencies() {
    Get.put(ArticleController());
  }
}