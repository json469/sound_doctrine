import 'package:flutter/material.dart';
import './data/chalcedoniancreed.dart';

class ChalcedonianCreedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chalcedonian Creed (A.D. 451)",
            style: Theme.of(context).textTheme.title),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(8.0),
        child: Text(ChalcedonianCreed.item),
      ),
    );
  }
}
