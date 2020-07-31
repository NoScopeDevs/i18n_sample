import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show SynchronousFuture;

class MinimalLocalizations {
  MinimalLocalizations(this.locale);

  final Locale locale;

  static MinimalLocalizations of(BuildContext context) {
    return Localizations.of<MinimalLocalizations>(
      context,
      MinimalLocalizations,
    );
  }

  static Map<String, Map<String, String>> _localizedValues = {
    'en': {'title': 'Minimal i18n'},
    'es': {'title': 'i18n Minimalista'},
  };

  String get title {
    return _localizedValues[locale.languageCode]['title'];
  }
}

class MinimalLocalizationsDelegate
    extends LocalizationsDelegate<MinimalLocalizations> {
  const MinimalLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => ['en', 'es'].contains(locale.languageCode);

  @override
  Future<MinimalLocalizations> load(Locale locale) {
    // Retorna un SynchronousFuture aquí porque una operación de "carga"
    // asíncrona no se necesita para producir una instancia de MinimalLocalizations

    return SynchronousFuture<MinimalLocalizations>(
      MinimalLocalizations(locale),
    );
  }

  @override
  bool shouldReload(MinimalLocalizationsDelegate old) => false;
}
