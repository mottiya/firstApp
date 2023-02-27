import 'package:get/get.dart';
import 'package:megd/app/modules/articles/controller/articles_controller.dart';

class ArticlesBinding implements Bindings{
  @override
  void dependencies() {
    Get.put(ArticlesController());
  }
}