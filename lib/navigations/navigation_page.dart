import 'package:flutter/material.dart';

import '../apostles_creed/apostlescreed_page.dart';
import '../nicene_creed/nicenecreed_page.dart';
import '../athanasian_creed/athanasiancreed_page.dart';
import '../chalcedonian_creed/chalcedoniancreed_page.dart';
import '../counciloforange_canon/counciloforangecanon_page.dart';
import '../second_council_of_contantionople/second_council_of_contantionople_page.dart';
import '../ninetyfive_theses/ninteyfivethesese_page.dart';
import '../belgic_confession/belgic_page.dart';
import '../heidelberg_catechism/heidelberg_page.dart';
import '../westminster_confession/westminster_confession_page.dart';

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
    NavigationPageItem(
      title: "Chalcedonian Creed (A.D. 451)",
      route: ChalcedonianCreedPage(),
    ),
    NavigationPageItem(
      title: "Canons on the Council of Orange (A.D. 529)",
      route: CouncilOfOrangeCanonPage(),
    ),
    NavigationPageItem(
      title: "Second Council of Constantinople (A.D. 553)",
      route: SecondCouncilOfContantionoplePage(),
    ),
  ];

  List<Widget> buildItems = [_buildHeader(context, 'Early Christian Creeds')];
  _creedPageItems.forEach((navigationPage) {
    buildItems.add(ListTile(
      contentPadding: EdgeInsets.only(left: 8.0),
      title: Text('${navigationPage.title}'),
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => navigationPage.route,
          )),
    ));
    buildItems.add(Divider(
      height: 0.0,
    ));
  });
  return buildItems;
}

List<Widget> _buildConfessionsList(BuildContext context) {
  final List<NavigationPageItem> _confessionsPageItems = [
    NavigationPageItem(
      title: "Ninety-five Theses (A.D. 1517)",
      route: NinetyfiveThesesePage(),
    ),
    NavigationPageItem(
      title: "Belgic Confession (A.D. 1561)",
      route: BelgicPage(),
    ),
    NavigationPageItem(
      title: "Heidelberg Catechism (A.D. 1576)",
      route: HeidelbergPage(),
    ),
    NavigationPageItem(
      title: "Westminster Confession (A.D. 1647)",
      route: WestminsterConfessionPage(),
    ),
  ];

  List<Widget> buildItems = [_buildHeader(context, 'Reformation Confessions')];
  _confessionsPageItems.forEach((navigationPage) {
    buildItems.add(ListTile(
      contentPadding: EdgeInsets.fromLTRB(8.0, -8.0, 8.0, -8.0),
      title: Text(
        '${navigationPage.title}',
      ),
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => navigationPage.route,
          )),
    ));
    buildItems.add(Divider(
      height: 0.0,
    ));
  });
  return buildItems;
}

Widget _buildHeader(BuildContext context, String title) {
  return Container(
    height: 50.0,
    color: Colors.blueGrey[700],
    padding: EdgeInsets.symmetric(horizontal: 8.0),
    alignment: Alignment.centerLeft,
    child: Text('$title', style: Theme.of(context).textTheme.display1),
  );
}

class NavigationPageItem {
  String title;
  Widget route;
  NavigationPageItem({this.title, this.route});
}
