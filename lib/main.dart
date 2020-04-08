import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import './home.dart';
import './global/globals.dart' as globals;

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  globals.useDarkTheme = (prefs.getBool('Value') ?? true);
  runApp(new App());
//  demo();
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new DynamicTheme(
        defaultBrightness: Brightness.light,
        data: (brightness) => new ThemeData(
              primarySwatch: Colors.blue,
              brightness: brightness,
            ),
        themedWidgetBuilder: (context, theme) {
          return MaterialApp(
            theme: theme,
            debugShowCheckedModeBanner: false,
            home: Home(),
          );
        });
  }
}
