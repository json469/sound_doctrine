import 'package:flutter/material.dart';
import 'heidelberg/heidelberg_page.dart';
import 'apostlescreed/apostlescreed_page.dart';
import 'nicenecreed/nicenecreed_page.dart';

class NavigationPage extends StatelessWidget {
  final List<NavigationPageItem> _navigationPageItems = [
    NavigationPageItem(
      title: "Apostles' Creed",
      route: ApostlesCreedPage(),
    ),
    NavigationPageItem(
      title: "Nicene Creed",
      route: NiceneCreedPage(),
    ),
    NavigationPageItem(
      title: "Heidelberg Catechism",
      route: HeidelbergPage(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildNavigations(),
    );
  }

  Widget _buildNavigations() {
    return ListView.builder(
      itemCount: _navigationPageItems.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text('${_navigationPageItems[index].title}'),
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => _navigationPageItems[index].route)),
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
