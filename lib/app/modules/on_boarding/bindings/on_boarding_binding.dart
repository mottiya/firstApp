import 'package:get/get.dart';
import 'package:megd/app/modules/on_boarding/controller/on_boarding_controller.dart';

class OnBoardingBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(OnBoardingController());
  }
}
