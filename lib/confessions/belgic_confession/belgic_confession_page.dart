import 'package:flutter/material.dart';
import 'article_page.dart';

import './data/belgic_confession.dart';

class BelgicPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Belgic Confession (1561)',
            style: Theme.of(context).textTheme.title),
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
