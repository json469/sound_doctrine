import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'about_page.dart';
import 'feedback_page.dart';

const APP_VERSION = 'v1.1';
const APP_NAME = 'Sound Doctrine';
const APP_DESCRIPTION =
    'An offline library app of the creeds, confessions and catechisms of the protestant reformed churches.';
const APP_DEVLOPER = 'Developed by Jesse for the glory of God alone.';

class NavigationDrawer extends StatelessWidget {
  final List<DrawerItem> _drawerItems = [
    DrawerItem('About', Icons.info, AboutPage()),
    DrawerItem('Feedback', Icons.feedback, FeedbackPage()),
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
          title:
              Text(_drawerItem.title),
          leading: Icon(
            _drawerItem.icon,
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => _drawerItem.route),
            );
          }));
      _drawerList.add(Divider(
        height: 0.0,
      ));
    });

    _drawerList.add(ListTile(
      title: Text('Open Source'),
      leading: Icon(
        Icons.code,
        color: Theme.of(context).iconTheme.color,
      ),
      onTap: () => _launchURL('https://github.com/json469/sound_doctrine'),
    ));

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
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          CircleAvatar(
            maxRadius: 35,
            backgroundColor: Colors.white,
            child: Image.asset('assets/images/logo/sound_doctrine.png'),
          ),
          Text(
            APP_NAME,
            style: TextStyle(fontSize: 23, color: Colors.white),
          ),
          Text(
            APP_VERSION,
            style: TextStyle(fontSize: 14, color: Colors.white),
          ),
        ],
      ),
    );
  }

  Widget _renderDrawerSubHeader(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(color: Colors.blueGrey[700]),
      child: Column(
        children: <Widget>[
          Text(
            APP_DESCRIPTION,
            style: TextStyle(fontSize: 14.0, color: Colors.white),
            textAlign: TextAlign.center,
          ),
          Divider(height: 8.0),
          Text(
            APP_DEVLOPER,
            style: TextStyle(fontSize: 10.0, color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}

class DrawerItem {
  String title;
  IconData icon;
  Widget route;
  DrawerItem(this.title, this.icon, this.route);
}
