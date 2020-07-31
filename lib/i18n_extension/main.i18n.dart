import 'package:i18n_extension/i18n_extension.dart';

extension Localization on String {
  static var _t = Translations('en_us') +
      {
        'en_us': 'Hello World',
        'pt_br': 'Olá mundo',
        'es_es': 'Hola mundo',
      } +
      {
        'en_us': 'Welcome',
        'pt_br': 'Bem vindo',
        'es_es': 'Bienvenido',
      };

  String get i18n => localize(this, _t);

  String fill(List<Object> params) => localizeFill(this, params);

  String plural(int value) => localizePlural(value, this, _t);

  String version(Object modifier) => localizeVersion(modifier, this, _t);

  Map<String, String> allVersions() => localizeAllVersions(this, _t);
}
