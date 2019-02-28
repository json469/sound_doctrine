import 'package:flutter/material.dart';
import 'navigation_drawer.dart';
import 'heidelberg/heidelberg_page.dart';
import 'apostlescreed/apostlescreed_page.dart';
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Project Heidelberg'),
      ),
      body: ApostlesCreedPage(),
      drawer: NavigationDrawer(),
    );
  }
}
