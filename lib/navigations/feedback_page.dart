import 'package:flutter/material.dart';

class FeedbackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feedback', style: Theme.of(context).textTheme.title),
      ),
      body: SingleChildScrollView(
          child: Container(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Text("Feedback contents..."),
                ],
              ))),
    );
  }
}
