import 'package:flutter/material.dart';
import 'navigation_drawer.dart';
import 'navigation_page.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sound Doctrine',
            style: Theme.of(context).textTheme.title),
      ),
      body: NavigationPage(),
      drawer: NavigationDrawer(),
    );
  }
}
