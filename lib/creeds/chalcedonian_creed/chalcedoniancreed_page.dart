import 'package:flutter/material.dart';
import './data/chalcedoniancreed.dart';

class ChalcedonianCreedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chalcedonian Creed (451 AD)",
            style: Theme.of(context).textTheme.title),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(8.0),
        child: Text(ChalcedonianCreed.item),
      ),
    );
  }
}
