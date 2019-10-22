import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'navigations/navigation_drawer.dart';
import 'navigations/navigation_page.dart';

class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            CircleAvatar(
              maxRadius: 15,
              backgroundColor: Colors.white,
              child: Image.asset('assets/images/logo/sound_doctrine.png'),
            ),
            SizedBox(
              width: 10,
            ),
            Text('Sound Doctrine'),
          ],
        ),
      ),
      body: NavigationPage(),
      drawer: NavigationDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: changeBrightness,
        child: const Icon(FontAwesomeIcons.palette),
      ),
    );
  }

  void changeBrightness() {
    DynamicTheme.of(context).setBrightness(
        Theme.of(context).brightness == Brightness.dark
            ? Brightness.light
            : Brightness.dark);
  }
}
