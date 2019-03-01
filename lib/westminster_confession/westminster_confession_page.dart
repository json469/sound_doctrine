import 'package:flutter/material.dart';
import 'package:sticky_headers/sticky_headers.dart';

import './data/westminster_confession.dart';

class WestminsterConfessionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Westminster Confession (A.D. 1647)',
            style: Theme.of(context).textTheme.title),
      ),
      body: ListView.builder(
        itemCount: WestminsterConfession.items.length ?? 0,
        itemBuilder: (BuildContext context, int index) {
          return StickyHeader(
            header:
                _buildHeader(context, WestminsterConfession.items[index].title),
            content: Container(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  Text(WestminsterConfession.items[index].content),
                  Divider(height: 8.0,),
                  ExpansionTile(
                    title: Text('Footnotes'),
                    children: <Widget>[
                      Text(WestminsterConfession.items[index].footnotes)
                    ],
                  )
                ],
              ) ,
            ),
          );
        },
      ),
    );
  }

  Widget _buildHeader(BuildContext context, String title) {
    return Container(
      height: 50.0,
      color: Colors.blueGrey[700],
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      alignment: Alignment.centerLeft,
      child: Text('$title', style: Theme.of(context).textTheme.display1),
    );
  }
}
