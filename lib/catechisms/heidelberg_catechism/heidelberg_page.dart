import 'package:flutter/material.dart';
import 'package:sticky_headers/sticky_headers.dart';
import 'package:auto_size_text/auto_size_text.dart';

import './data/heidelberg.dart';
import './data/section.dart';
import './lordsday.dart';

class HeidelbergPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AutoSizeText(
          'Heidelberg Catechism (1576)',
          style: Theme.of(context).textTheme.title,
          maxLines: 1,
          maxFontSize: 20,
        ),
      ),
      body: ListView.builder(
        itemCount: Heidelberg.items.length ?? 0,
        itemBuilder: (BuildContext context, int index) {
          return StickyHeader(
              header: _buildHeader(context, Heidelberg.items[index].header),
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
        contentPadding: EdgeInsets.fromLTRB(8.0, -8.0, 8.0, -8.0),
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
