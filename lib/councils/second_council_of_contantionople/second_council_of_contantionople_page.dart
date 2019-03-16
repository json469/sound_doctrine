import 'package:flutter/material.dart';
import './data/second_council_of_contantionople.dart';

class SecondCouncilOfContantionoplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Council of Constantinople (553 AD)",
            style: Theme.of(context).textTheme.title),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(8.0),
        child: Text(SecondCouncilOfContantionople.item),
      ),
    );
  }
}
