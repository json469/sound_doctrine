import 'package:flutter/material.dart';
import 'navigations/navigation_drawer.dart';
import 'navigations/navigation_page.dart';

class Home extends StatelessWidget {
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
            Text('Sound Doctrine', style: Theme.of(context).textTheme.title),
          ],
        ),
      ),
      body: NavigationPage(),
      drawer: NavigationDrawer(),
    );
  }
}
