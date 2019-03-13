import 'package:flutter/material.dart';
import './data/ninetyfivethesese.dart';

class NinetyfiveThesesePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ninety-five Theses (A.D. 1517)",
            style: Theme.of(context).textTheme.title),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(8.0),
        child: Text(NinetyfiveThesese.item),
      ),
    );
  }
}
