import 'package:flutter/material.dart';

import '../creeds/apostles_creed/apostlescreed_page.dart';
import '../creeds/athanasian_creed/athanasiancreed_page.dart';
import '../creeds/chalcedonian_creed/chalcedoniancreed_page.dart';
import '../creeds/nicene_creed/nicenecreed_page.dart';
import '../councils/council_of_orange/counciloforangecanon_page.dart';
import '../councils/second_council_of_contantionople/second_council_of_contantionople_page.dart';
import '../confessions/belgic_confession/belgic_confession_page.dart';
import '../confessions/westminster_confession/westminster_confession_page.dart';
import '../catechisms/heidelberg_catechism/heidelberg_page.dart';
import '../other_documents/ninetyfive_theses/ninteyfivethesese_page.dart';

final List<NavigationPageItem> _creedsPageItems = [
  NavigationPageItem(
    title: "Apostles' Creed",
    route: ApostlesCreedPage(),
  ),
  NavigationPageItem(
    title: "Nicene Creed (325 AD)",
    route: NiceneCreedPage(),
  ),
  NavigationPageItem(
    title: "Athanasian Creed (500 AD)",
    route: AthanasianCreedPage(),
  ),
  NavigationPageItem(
    title: "Chalcedonian Creed (451 AD)",
    route: ChalcedonianCreedPage(),
  ),
];
final List<NavigationPageItem> _councilsPageItems = [
  NavigationPageItem(
    title: "Canons on the Council of Orange (529 AD)",
    route: CouncilOfOrangeCanonPage(),
  ),
  NavigationPageItem(
    title: "Second Council of Constantinople (553 AD)",
    route: SecondCouncilOfContantionoplePage(),
  ),
];
final List<NavigationPageItem> _confessionsPageItems = [
  NavigationPageItem(
    title: "Belgic Confession (1561)",
    route: BelgicPage(),
  ),
  NavigationPageItem(
    title: "Westminster Confession (1647)",
    route: WestminsterConfessionPage(),
  ),
];
final List<NavigationPageItem> _catechismsPageItems = [
  NavigationPageItem(
    title: "Heidelberg Catechism (1576)",
    route: HeidelbergPage(),
  ),
];
final List<NavigationPageItem> _otherDocumentsPageItems = [
  NavigationPageItem(
    title: "Ninety-five Theses (1517s)",
    route: NinetyfiveThesesePage(),
  ),
];

final List<NavigationCategory> _categories = [
  NavigationCategory(
    header: 'Creeds',
    navigations: _creedsPageItems,
  ),
  NavigationCategory(
    header: 'Councils',
    navigations: _councilsPageItems,
  ),
  NavigationCategory(
    header: 'Confessions',
    navigations: _confessionsPageItems,
  ),
  NavigationCategory(
    header: 'Catechisms',
    navigations: _catechismsPageItems,
  ),
  NavigationCategory(
    header: 'Other Documents',
    navigations: _otherDocumentsPageItems,
  ),
];

class NavigationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: _buildCategories(context, _categories),
        ),
      ),
    );
  }
}

List<Widget> _buildCategories(
    BuildContext context, List<NavigationCategory> categories) {
  List<Widget> categoires = [];
  categories.forEach((category) {
    categoires.add(Column(
      children: _buildCategory(context, category.header, category.navigations),
    ));
  });
  return categoires;
}

List<Widget> _buildCategory(
  BuildContext context,
  String header,
  List<NavigationPageItem> navigationPageItems,
) {
  // Create empty list with first element being the header
  List<Widget> buildList = [_buildHeader(context, header)];
  // Populate list with given page items
  navigationPageItems.forEach((navigationPage) {
    // Add list tile that navigates to the given page
    buildList.add(ListTile(
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
    // Add a divider
    buildList.add(Divider(
      height: 0.0,
    ));
  });
  return buildList;
}

Widget _buildHeader(BuildContext context, String header) {
  return Container(
    height: 50.0,
    color: Colors.blueGrey[700],
    padding: EdgeInsets.symmetric(horizontal: 8.0),
    alignment: Alignment.centerLeft,
    child: Text('$header', style: Theme.of(context).textTheme.display1),
  );
}

class NavigationCategory {
  String header;
  List<NavigationPageItem> navigations;
  NavigationCategory({this.header, this.navigations});
}

class NavigationPageItem {
  String title;
  Widget route;
  NavigationPageItem({this.title, this.route});
}
