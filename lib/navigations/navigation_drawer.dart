import 'package:flutter/material.dart';
import 'about.dart';

const APP_LOGO = FlutterLogo(size: 32.0);
const APP_VERSION = 'v1.0';
const APP_NAME = 'Sound Doctrine';
const APP_DESCRIPTION =
    'An offline library app of the creeds, confessions and catechisms of the protestant reformed churches.';
const APP_DEVLOPER = 'Developed by Jesse Son.';

class NavigationDrawer extends StatelessWidget {
  final List<DrawerItem> _drawerItems = [
    DrawerItem('About', Icons.info, About()),
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: _renderDrawerList(context),
    );
  }

  ListView _renderDrawerList(BuildContext context) {
    List<Widget> _drawerList = [
      _renderDrawerHeader(context),
      _renderDrawerSubHeader(context),
    ];

    _drawerItems.forEach((_drawerItem) {
      _drawerList.add(ListTile(
          title: Text(_drawerItem.title),
          leading: Icon(_drawerItem.icon, color: Colors.black,),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => _drawerItem.route),
            );
          }));
    });

    return ListView(
      padding: EdgeInsets.all(0.0),
      children: _drawerList,
    );
  }

  Widget _renderDrawerHeader(BuildContext context) {
    return DrawerHeader(
      decoration: BoxDecoration(color: Theme.of(context).primaryColor),
      margin: EdgeInsets.all(0.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          CircleAvatar(
            backgroundColor: Colors.white,
            child: APP_LOGO,
          ),
          Text(
            APP_NAME,
            style: Theme.of(context).textTheme.title,
          ),
          Text(
            APP_VERSION,
            style: Theme.of(context).textTheme.caption,
          ),
        ],
      ),
    );
  }

  Widget _renderDrawerSubHeader(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(color: Colors.blueGrey[700]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            APP_DESCRIPTION,
            style: TextStyle(fontSize: 14.0, color: Colors.white),
          ),
          Divider(height: 8.0),
          Text(
            APP_DEVLOPER,
            style: TextStyle(fontSize: 14.0, color: Colors.white),
          ),
        ],
      ),
    );
  }
}

class DrawerItem {
  String title;
  IconData icon;
  Widget route;
  DrawerItem(this.title, this.icon, this.route);
}
