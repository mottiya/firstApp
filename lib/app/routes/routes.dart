part of 'app_pages.dart';

abstract class _Paths {
  static const initialRoute = '/';
  static const onBoarding = '/on_boarding';
  static const noConnection = '/no_conection';
  static const articles = '/articles';
  static const mod = '/articles/mod';
  static const settings = '/articles/settings';
  static const privacyPolicy = '/articles/settings/privacy_policy';
  static const termsOfUse = '/articles/settings/terms_of_use';
  static const download = '/articles/mod/download';
}

abstract class Routes {
  static const initialRoute = _Paths.initialRoute;
  static const onBoarding = _Paths.onBoarding;
  static const noConnection = _Paths.noConnection;
  static const articles = _Paths.articles;
  static const mod = _Paths.mod;
  static const settings = _Paths.settings;
  static const privacyPolicy = _Paths.privacyPolicy;
  static const termsOfUse = _Paths.termsOfUse;
  static const download = _Paths.download;
}