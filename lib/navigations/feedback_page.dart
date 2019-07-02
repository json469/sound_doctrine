import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class FeedbackPage extends StatelessWidget {
  final List<TileItem> tileItems = [
    TileItem(
      title: 'Rating and Comments',
      description:
          'This app will never bother you with pop-ups asking to rate or review the the app. But if you have any feedback, please feel free to either email the developer directly or leave a rating and comment on the app store.',
    ),
    TileItem(
      title: 'Typos and Bugs',
      description:
          'Although developed with care and love, if you find any typos or bugs please contact the developer with concise details to help fix it.',
    ),
    TileItem(
      title: 'Feature Request',
      description:
          'This app is open source and is public for anyone to contribute.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feedback', style: Theme.of(context).textTheme.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
              child: ListView.builder(
            itemCount: tileItems.length,
            itemBuilder: (BuildContext context, int index) {
              return (_buildTile(context, tileItems[index]));
            },
          )),
          MaterialButton(
            minWidth: double.maxFinite,
            height: 60,
            color: Theme.of(context).primaryColor,
            child: Text('CONTACT', style: Theme.of(context).textTheme.button),
            onPressed: () => sendEmail('jessethetentdeveloper@gmail.com'),
          )
        ],
      ),
    );
  }

  Widget _buildTile(BuildContext context, TileItem tile) {
    return Column(
      children: <Widget>[
        _buildHeader(context, tile.title),
        _buildBody(context, tile.description),
      ],
    );
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

  Widget _buildBody(BuildContext context, String description) {
    return Container(
      padding: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 24.0),
      child: Text(description, style: TextStyle(fontSize: 16.0)),
    );
  }

  sendEmail(String address) async {
    if (await canLaunch('mailto:$address')) {
      await launch('mailto:$address');
    } else {
      throw 'Could not launch mailto:$address';
    }
  }
}

class TileItem {
  String title;
  String description;
  TileItem({this.title, this.description});
}
