import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:megd/app/modules/on_boarding/bindings/on_boarding_binding.dart';
import 'package:megd/app/modules/splash_view.dart';
import 'package:megd/app/routes/app_pages.dart';
import 'package:megd/dependences.dart';
import 'package:megd/theme/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  await Dependences.inject();
  runApp(const MeGd());
}

class MeGd extends StatelessWidget {
  const MeGd({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'First Melon Playgrounds Mods',
      defaultTransition: Transition.cupertino,
      getPages: AppPages.pages,
      initialRoute: AppPages.initial,
      theme: DefaultTheme.themeData,
      initialBinding: OnBoardingBinding(),
      builder: (context, widget) {
        if (widget == null) {
          return SplashView();
        }
        return widget;
      },
    );
  }
}
