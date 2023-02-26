import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:megd/app/routes/app_pages.dart';
import 'package:megd/services/conection_service.dart';
import 'package:megd/theme/theme.dart';

void main() {
  Get.put(ConnectionService());
  runApp(const MeGd());
}

class MeGd extends StatelessWidget {
  const MeGd({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: AppPages.pages,
      initialRoute: Routes.initialRoute,
      theme: DefaultTheme.themeData,

      // initialBinding: OnBoardingBinding(),


      // builder: (context, widget) {       ????????????
      //     if (widget == null) {
      //       return SplashView();
      //     }
      //   },
    );
  }
}