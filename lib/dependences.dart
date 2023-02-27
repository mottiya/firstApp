import 'package:get/get.dart';
import 'package:megd/services/conection_service.dart';

class Dependences {
  static Future<void> inject() async {
    Get.put(ConnectionService());
  }
}