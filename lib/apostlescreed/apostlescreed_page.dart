import 'package:flutter/material.dart';
import './data/apostlescreed.dart';

class ApostlesCreedPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("The Apostles' Creed"),
      ),
      body: Text(ApostlesCreed.item)
    );
  }
}
