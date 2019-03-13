import 'package:flutter/material.dart';
import 'chapter_page.dart';

import './data/westminster_confession.dart';

class WestminsterConfessionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Westminster Confession (A.D. 1647)',
            style: Theme.of(context).textTheme.title),
      ),
      body: ListView.separated(
        itemCount: WestminsterConfession.items.length ?? 0,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(WestminsterConfession.items[index].title),
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      ChapterPage(chapter: WestminsterConfession.items[index]),
                )),
          );
        },
        separatorBuilder: (BuildContext context, int index) =>
            Divider(height: 0.0),
      ),
    );
  }
}
