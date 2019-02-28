import 'package:flutter/material.dart';
import 'package:sticky_headers/sticky_headers.dart';

import './data/heidelberg.dart';
import './data/section.dart';
import './lordsday.dart';

class HeidelbergPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Heidelberg Catechism (A.D. 1576)'),
      ),
      body: ListView.builder(
        itemCount: Heidelberg.items.length ?? 0,
        itemBuilder: (BuildContext context, int index) {
          return StickyHeader(
              header: _buildHeader(Heidelberg.items[index].header),
              content: Column(
                children: _buildChildItems(context, Heidelberg.items[index]),
              ));
        },
      ),
    );
  }

  List<Widget> _buildChildItems(BuildContext context, Section section) {
    List<Widget> childItems = [];
    section.lordsDays.forEach((lordsDay) {
      childItems.add(ListTile(
        title: Text('${lordsDay.header}'),
        onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => LordsDayPage(lordsDay: lordsDay))),
      ));
      childItems.add(Divider(height: 0.0));
    });
    return childItems;
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
            fontSize: 18.0, color: Colors.white, fontWeight: FontWeight.w500),
      ),
    );
  }
}
