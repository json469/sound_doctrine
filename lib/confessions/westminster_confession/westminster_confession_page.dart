import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

import './data/westminster_confession.dart';
import 'chapter_page.dart';

class WestminsterConfessionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AutoSizeText(
          'Westminster Confession (1647)',
          style: Theme.of(context).textTheme.headline6,
          maxLines: 1,
          maxFontSize: 20,
        ),
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
