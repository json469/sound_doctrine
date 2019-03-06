import 'package:flutter/material.dart';

class About extends StatelessWidget {
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
                      'Due to the lack of API for creeds and confessional, all contents were retrieved manually from various trusted sources. Although replicated with care, if there are any mistakes or typos please contact the developer below :)'),
                  Container(
                      width: double.maxFinite,
                      child: RaisedButton(
                        color: Theme.of(context).primaryColor,
                        child: Text('CONTACT', style: Theme.of(context).textTheme.caption),
                        onPressed: () {},
                      )),
                ],
              ))),
    );
  }
}
