import 'package:flutter/material.dart';
import 'navigation_drawer.dart';
import 'heidelberg/heidelberg_page.dart';
import 'apostlescreed/apostlescreed_page.dart';

class NavigationPage extends StatelessWidget {
  final List<NavigationPageItem> _navigationPageItems = [
    NavigationPageItem(
      title: "Apostles' Creed",
      route: ApostlesCreedPage(),
    ),
    NavigationPageItem(
      title: "Heidelberg Catechism",
      route: HeidelbergPage(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Project Reformation'),
      ),
      body: _buildNavigations(),
      drawer: NavigationDrawer(),
    );
  }

  Widget _buildNavigations() {
    ListView.builder(
      itemCount: _navigationPageItems.length,
      itemBuilder: (BuildContext context, int index) {
        ListTile(
          title: Text('${_navigationPageItems[index].title}'),
          onTap: () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => _navigationPageItems[index].route)),
        );
      },
    );
  }
}

class NavigationPageItem {
  String title;
  Widget route;
  NavigationPageItem({this.title, this.route});
}
