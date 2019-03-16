import 'package:flutter/material.dart';

import './data/westminster_confession_chapter.dart';

class ChapterPage extends StatelessWidget {
  final WestminsterConfessionChapter chapter;
  ChapterPage({this.chapter});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text('${chapter.title}', style: Theme.of(context).textTheme.title),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(8.0),
              child: Text(chapter.content),
            ),
            Divider(
              height: 8.0,
            ),
            ExpansionTile(
              title: Text('Footnotes'),
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(8.0),
                  child: Text(chapter.footnotes),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
