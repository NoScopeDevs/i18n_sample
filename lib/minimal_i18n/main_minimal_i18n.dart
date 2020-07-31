import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'minimal_localizations.dart';

void main() {
  runApp(Demo());
}

class DemoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(MinimalLocalizations.of(context).title),
      ),
      body: Center(
        child: Text(MinimalLocalizations.of(context).title),
      ),
    );
  }
}

class Demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateTitle: (context) => MinimalLocalizations.of(context).title,
      localizationsDelegates: [
        const MinimalLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', ''),
        const Locale('es', ''),
      ],
      // Cuidado: MaterialApp crea un widget Localizations con
      // sus propios delegates. MinimalLocalizations.of()
      // sólo va a encontrar el widget de Localizations si su
      // context es child del app
      home: DemoApp(),
    );
  }
}
