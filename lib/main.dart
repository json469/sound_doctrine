import 'package:flutter/material.dart';
import './home.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Project Heidelberg',
      theme: ThemeData(
        fontFamily: 'Open Sans',
      ),
      home: Home(),
    );
  }
}
