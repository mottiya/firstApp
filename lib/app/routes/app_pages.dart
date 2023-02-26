import 'package:get/get.dart';
import 'package:megd/app/modules/download_view.dart';
import 'package:megd/app/modules/mod_view.dart';
import 'package:megd/app/modules/mods_view.dart';
import 'package:megd/app/modules/no_conection/view/no_connection_view.dart';
import 'package:megd/app/modules/on_boarding/view/on_boarding_1_view.dart';
import 'package:megd/app/modules/on_boarding/view/on_boarding_2_view.dart';
import 'package:megd/app/modules/privacy_polycy_view.dart';
import 'package:megd/app/modules/settings_view.dart';
import 'package:megd/app/modules/splash_view.dart';
import 'package:megd/app/modules/terms_of_use_view.dart';

part "routes.dart";



abstract class AppPages {
  static final List<GetPage> pages = [
    GetPage(name: Routes.initialRoute, page: () => SplashView()),
    GetPage(name: Routes.onBoarding_1, page: () => const OnBoarding1()),
    GetPage(name: Routes.onBoarding_2, page: () => OnBoarding2()),
    GetPage(name: Routes.noConnection, page: () => const NoConection()),
    GetPage(name: Routes.mods, page: () => const Mods()),
    GetPage(name: Routes.mod, page: () => const Mod()),
    GetPage(name: Routes.settings, page: () => const Settings()),
    GetPage(name: Routes.privacyPolicy, page: () => const PrivacyPolicy()),
    GetPage(name: Routes.termsOfUse, page: () => const TermsOfUse()),
    GetPage(name: Routes.download, page: () => const Download()),
  ];
}