import 'package:flutter/material.dart';
import './data/apostlescreed.dart';

class ApostlesCreedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Apostles' Creed",
        style: Theme.of(context).textTheme.title),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Text(ApostlesCreed.item),
      ),
    );
  }
}
