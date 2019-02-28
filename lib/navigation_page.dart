import 'package:flutter/material.dart';
import 'apostlescreed/apostlescreed_page.dart';
import 'nicenecreed/nicenecreed_page.dart';
import 'athanasiancreed/athanasiancreed_page.dart';
import 'heidelberg/heidelberg_page.dart';

class NavigationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: <Widget>[
          Column(children: _buildCreedsList(context)),
          Column(children: _buildConfessionsList(context)),
        ],
      )),
    );
  }
}

List<Widget> _buildCreedsList(BuildContext context) {
  final List<NavigationPageItem> _creedPageItems = [
    NavigationPageItem(
      title: "Apostles' Creed",
      route: ApostlesCreedPage(),
    ),
    NavigationPageItem(
      title: "Nicene Creed (A.D. 325)",
      route: NiceneCreedPage(),
    ),
    NavigationPageItem(
      title: "Athanasian Creed (A.D. 500)",
      route: AthanasianCreedPage(),
    ),
  ];

  List<Widget> buildItems = [_buildHeader('Early Christian Creeds')];
  _creedPageItems.forEach((navigationPage) {
    buildItems.add(ListTile(
      title: Text('${navigationPage.title}'),
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => navigationPage.route,
          )),
    ));
  });
  return buildItems;
}

List<Widget> _buildConfessionsList(BuildContext context) {
  final List<NavigationPageItem> _confessionsPageItems = [
    NavigationPageItem(
      title: "Heidelberg Catechism (A.D. 1576)",
      route: HeidelbergPage(),
    ),
  ];

  List<Widget> buildItems = [_buildHeader('Reformation Confessions')];
  _confessionsPageItems.forEach((navigationPage) {
    buildItems.add(ListTile(
      title: Text('${navigationPage.title}'),
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => navigationPage.route,
          )),
    ));
  });
  return buildItems;
}

Widget _buildHeader(String title) {
  return Container(
    height: 60.0,
    color: Colors.blueGrey[700],
    padding: EdgeInsets.symmetric(horizontal: 16.0),
    alignment: Alignment.centerLeft,
    child: Text(
      '$title',
      style: TextStyle(
          fontSize: 18.0, color: Colors.white, fontWeight: FontWeight.bold),
    ),
  );
}

class NavigationPageItem {
  String title;
  Widget route;
  NavigationPageItem({this.title, this.route});
}
