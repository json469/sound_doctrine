import 'package:flutter/material.dart';
import 'data/article.dart';

class ArticlePage extends StatelessWidget {
  final Article article;
  ArticlePage({this.article});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${article.title}'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Text(article.content),
      ),
    );
  }
}
