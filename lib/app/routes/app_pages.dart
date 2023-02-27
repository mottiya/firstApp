import 'package:get/get.dart';
import 'package:megd/app/modules/articles/binding/article_binding.dart';
import 'package:megd/app/modules/download_view.dart';
import 'package:megd/app/modules/articles/view/article_view.dart';
import 'package:megd/app/modules/articles/view/articles_view.dart';
import 'package:megd/app/modules/no_conection/view/no_connection_view.dart';
import 'package:megd/app/modules/on_boarding/bindings/on_boarding_binding.dart';
import 'package:megd/app/modules/on_boarding/view/on_boarding_view.dart';
import 'package:megd/app/modules/agreement/agreement_view.dart';
import 'package:megd/app/modules/settings_view.dart';
import 'package:megd/app/modules/splash_view.dart';
import 'package:megd/app/modules/articles/binding/articles_binding.dart';

part "routes.dart";

abstract class AppPages {
  AppPages._();

  static const initial = Routes.splash;

  static final List<GetPage> pages = [
    GetPage(
      name: _Paths.splash,
      page: () => SplashView(),
    ),
    GetPage(
      name: _Paths.onBoarding,
      page: () => OnBoarding(),
      binding: OnBoardingBinding(),
    ),
    GetPage(
      name: _Paths.articles,
      page: () => const Articles(),
      binding: ArticlesBinding(),
      children: [
        GetPage(
          name: _Paths.article,
          page: () => const Article(),
          binding: ArticleBinding(),
        ),
      ],
    ),
    GetPage(
      name: _Paths.settings,
      page: () => const Settings(),
    ),
    GetPage(
      name: _Paths.agreement,
      page: () => Agreement(),
    ),
    GetPage(
      name: _Paths.download,
      page: () => const Download(),
    ),
    GetPage(
      name: _Paths.noConnection,
      page: () => const NoConection(),
    ),
  ];
}
