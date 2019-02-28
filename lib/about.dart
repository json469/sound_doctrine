import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About', style: Theme.of(context).textTheme.title),
      ),
      body: Text('About contents...'),
    );
  }
}
