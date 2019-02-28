import 'package:flutter/material.dart';
import 'about.dart';

const APP_LOGO = FlutterLogo(size: 32.0);
const APP_VERSION = 'v1.0';
const APP_NAME = 'Sound Doctrine';
const APP_DEVLOPER = 'by Jesse Son';

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
    ];

    _drawerItems.forEach((_drawerItem) {
      _drawerList.add(ListTile(
          title: Text(_drawerItem.title),
          leading: Icon(_drawerItem.icon),
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
          Text(
            APP_DEVLOPER,
            style: Theme.of(context).textTheme.caption,
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
