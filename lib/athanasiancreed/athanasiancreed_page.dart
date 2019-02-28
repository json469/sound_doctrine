import 'package:flutter/material.dart';
import './data/athanasiancreed.dart';

class AthanasianCreedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Athanasian Creed (A.D. 500)"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Text(AthanasianCreed.item),
      ),
    );
  }
}
