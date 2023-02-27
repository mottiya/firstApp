part of 'app_pages.dart';

abstract class _Paths {
  static const splash = '/';

  static const onBoarding = '/on_boarding';

  static const articles = '/articles';
  static const article = '/article';

  static const settings = '/settings';

  static const agreement = '/agreement_:agreementType';

  static const download = '/download';

  static const noConnection = '/no_conection';
}

abstract class Routes {
  static const splash = _Paths.splash;

  static const onBoarding = _Paths.onBoarding;

  static const articles = _Paths.articles;
  static const article = '$articles${_Paths.article}';

  static const settings = _Paths.settings;

  static final privacy = _agreement('privacy');
  static final terms = _agreement('terms');
  static String _agreement(String agreementType) => '/agreement_$agreementType';

  static const download = _Paths.download;

  static const noConnection = _Paths.noConnection;
}
