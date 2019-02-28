import 'package:flutter/material.dart';
import './data/apostlescreed.dart';

class ApostlesCreedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("The Apostles' Creed"),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Text(ApostlesCreed.item),
      ),
    );
  }
}
