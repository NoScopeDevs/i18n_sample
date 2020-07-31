import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import '../generated/l10n.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalWidgetsLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        NoScopeDevsLocalizations.delegate,
      ],
      supportedLocales: NoScopeDevsLocalizations.delegate.supportedLocales,
      title: 'Material App',
      home: _Home(),
    );
  }
}

class _Home extends StatelessWidget {
  const _Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    NoScopeDevsLocalizations.load(Localizations.localeOf(context));

    return Scaffold(
      appBar: AppBar(
        title: Text(NoScopeDevsLocalizations.of(context).pageHomeListTitle),
      ),
      body: Center(
        child: Container(
          child: Text(
            NoScopeDevsLocalizations.of(context).pageHomeSamplePlaceholder(
              'Marcos',
            ),
          ),
        ),
      ),
    );
  }
}
