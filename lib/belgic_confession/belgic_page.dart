import 'package:flutter/material.dart';
import 'package:sticky_headers/sticky_headers.dart';

import './data/belgic_confession.dart';

class BelgicPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Heidelberg Catechism (A.D. 1576)'),
      ),
      body: ListView.builder(
        itemCount: BelgicConfession.item.length,
        itemBuilder: (BuildContext context, int index) {
          return StickyHeader(
              header: _buildHeader(BelgicConfession.item[index].title),
              content: Container(
                padding: EdgeInsets.all(16.0),
                child: Text(BelgicConfession.item[index].content),
              ));
        },
      ),
    );
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
}
