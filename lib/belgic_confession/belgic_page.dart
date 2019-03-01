import 'package:flutter/material.dart';

import './data/belgic_confession.dart';
import 'article_page.dart';

class BelgicPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Belgic Confession (A.D. 1561)',
            style: Theme.of(context).textTheme.title),
      ),
      body: ListView.separated(
        itemCount: BelgicConfession.item.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(BelgicConfession.item[index].title),
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        ArticlePage(article: BelgicConfession.item[index]))),
          );
        },
        separatorBuilder: (BuildContext context, int index) =>
            Divider(height: 0.0),
      ),
    );
  }
}
