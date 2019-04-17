import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

import './data/london_confession.dart';
import 'chapter_page.dart';

class LondonConfessionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AutoSizeText(
          'London Baptist Confession (1689)',
          style: Theme.of(context).textTheme.title,
          maxLines: 1,
          maxFontSize: 20,
        ),
      ),
      body: ListView.separated(
        itemCount: LondonConfession.items.length ?? 0,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(LondonConfession.items[index].title),
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      ChapterPage(chapter: LondonConfession.items[index]),
                )),
          );
        },
        separatorBuilder: (BuildContext context, int index) =>
            Divider(height: 0.0),
      ),
    );
  }
}
