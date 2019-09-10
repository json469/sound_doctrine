import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'blocs/theme_changer.dart';

import './home.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ThemeChanger>(
      builder: (_) => ThemeChanger(true),
      child: MaterialAppWithTheme(),
    );
  }
}

class MaterialAppWithTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeChanger>(context);
    return MaterialApp(
      home: Home(),
      theme: themeProvider.getTheme(),
    );
  }
}
