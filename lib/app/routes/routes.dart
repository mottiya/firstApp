part of 'app_pages.dart';

abstract class _Paths {
  static const initialRoute = '/';
  static const onBoarding_1 = '/on_boarding1';
  static const onBoarding_2 = '/on_boarding2';
  static const noConnection = '/no_conection';
  static const mods = '/mods';
  static const mod = '/mods/mod';
  static const settings = '/mods/settings';
  static const privacyPolicy = '/mods/settings/privacy_policy';
  static const termsOfUse = '/mods/settings/terms_of_use';
  static const download = '/mods/mod/download';
}

abstract class Routes {
  static const initialRoute = _Paths.initialRoute;
  static const onBoarding_1 = _Paths.onBoarding_1;
  static const onBoarding_2 = _Paths.onBoarding_2;
  static const noConnection = _Paths.noConnection;
  static const mods = _Paths.mods;
  static const mod = _Paths.mod;
  static const settings = _Paths.settings;
  static const privacyPolicy = _Paths.privacyPolicy;
  static const termsOfUse = _Paths.termsOfUse;
  static const download = _Paths.download;
}