import 'package:flutter/material.dart';

class FeedbackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feedback', style: Theme.of(context).textTheme.title),
      ),
      body: SingleChildScrollView(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'General Feedback',
                    style:
                        TextStyle(fontSize: 22.0, fontWeight: FontWeight.w700),
                  ),
                  Text(
                      "All feedback is valuable! Whether it be simple comments or even a story of thanks giving, please feel free to send me any feedback and I will try my best to get back to you.",
                      style: TextStyle(fontSize: 16.0)),
                  Divider(
                    height: 16.0,
                  ),
                  Text(
                    'Bug Fix',
                    style:
                        TextStyle(fontSize: 22.0, fontWeight: FontWeight.w700),
                  ),
                  Text(
                      "Although developed with care and love, if there be any typos or mistakes please contact me with enough details to help me aid in fixing a bug or typo.",
                      style: TextStyle(fontSize: 16.0)),
                  Divider(
                    height: 16.0,
                  ),
                  Text(
                    'Feature Request',
                    style:
                        TextStyle(fontSize: 22.0, fontWeight: FontWeight.w700),
                  ),
                  Text(
                      "Have an improvement or additional feature that would benfit this app in mind? Please contact me with your thoughts and plans! Please bare in mind that this app was designed, developed, and is currently being maintained by one developer.\n\nThis app is open source and is public to all contributions. The llink is available in the open source page.",
                      style: TextStyle(fontSize: 16.0)),
                ],
              )),
          MaterialButton(
            minWidth: double.maxFinite,
            height: 60,
            color: Theme.of(context).primaryColor,
            child: Text('CONTACT', style: Theme.of(context).textTheme.caption),
            onPressed: () {},
          )
        ],
      )),
    );
  }
}
