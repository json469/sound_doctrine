import 'package:flutter/material.dart';
import './data/nicenecreed.dart';

class NiceneCreedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nicene Creed (A.D. 325)"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Text(NiceneCreed.item),
      ),
    );
  }
}
