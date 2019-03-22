import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

import './data/belgic_confession.dart';
import 'article_page.dart';

class BelgicPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AutoSizeText(
          'Belgic Confession (1561)',
          style: Theme.of(context).textTheme.title,
          maxLines: 1,
          maxFontSize: 20,
        ),
      ),
      body: ListView.separated(
        itemCount: BelgicConfession.items.length ?? 0,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(BelgicConfession.items[index].title),
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      ArticlePage(article: BelgicConfession.items[index]),
                )),
          );
        },
        separatorBuilder: (BuildContext context, int index) =>
            Divider(height: 0.0),
      ),
    );
  }
}
