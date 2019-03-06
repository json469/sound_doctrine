import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About', style: Theme.of(context).textTheme.title),
      ),
      body: SingleChildScrollView(
          child: Container(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Text(
                      "Due to the lack of API for creeds and confessional, all contents were retrieved manually from various trusted sources stated below. Although developed with care and love, if there be any typos or mistakes please contact the developer."),
                  Container(
                      width: double.maxFinite,
                      child: RaisedButton(
                        color: Theme.of(context).primaryColor,
                        child: Text('CONTACT',
                            style: Theme.of(context).textTheme.caption),
                        onPressed: () {},
                      )),
                ],
              ))),
    );
  }
}
