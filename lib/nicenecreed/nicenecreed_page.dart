import 'package:flutter/material.dart';
import './data/nicenecreed.dart';

class NiceneCreedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("The Apostles' Creed"),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Text(NiceneCreed.item),
      ),
    );
  }
}
