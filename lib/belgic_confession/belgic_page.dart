import 'package:flutter/material.dart';
import 'package:sticky_headers/sticky_headers.dart';

import './data/belgic_confession.dart';

class BelgicPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Belgic Confession (A.D. 1561)',
            style: Theme.of(context).textTheme.title),
      ),
      body: ListView.builder(
        itemCount: BelgicConfession.item.length,
        itemBuilder: (BuildContext context, int index) {
          return StickyHeader(
            header: _buildHeader(context, BelgicConfession.item[index].title),
            content: Container(
              padding: EdgeInsets.all(8.0),
              child: Text(BelgicConfession.item[index].content),
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
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      alignment: Alignment.centerLeft,
      child: Text('$title', style: Theme.of(context).textTheme.display1),
    );
  }
}
