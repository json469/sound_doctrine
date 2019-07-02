import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

import 'data/article.dart';

class ArticlePage extends StatelessWidget {
  final Article article;
  ArticlePage({this.article});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AutoSizeText(
          '${article.title}',
          style: Theme.of(context).textTheme.title,
          maxLines: 2,
          maxFontSize: 20,
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(8.0),
        child: Text(article.content),
      ),
    );
  }
}
