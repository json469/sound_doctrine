import 'package:flutter/material.dart';

class ContributePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contribute', style: Theme.of(context).textTheme.title),
      ),
      body: SingleChildScrollView(
        child: Text('Contribute contents...'),
      ),
    );
  }
}
