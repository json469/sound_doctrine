import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

import './data/london_confession_chapter.dart';

class ChapterPage extends StatelessWidget {
  final LondonConfessionChapter chapter;
  ChapterPage({this.chapter});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AutoSizeText(
          '${chapter.title}',
          style: Theme.of(context).textTheme.headline6,
          maxLines: 2,
          maxFontSize: 20,
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(8.0),
              child: Text(chapter.content),
            ),
          ],
        ),
      ),
    );
  }
}
