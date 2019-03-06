import 'package:flutter/material.dart';

import './data/lordsday.dart';
import './data/questionandanswer.dart';

class LordsDayPage extends StatelessWidget {
  final LordsDay lordsDay;
  LordsDayPage({this.lordsDay});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${lordsDay.header}',
            style: Theme.of(context).textTheme.title),
      ),
      body: _buildQuestionsAndAnswers(context, lordsDay.questionsAndAnswers),
    );
  }

  Widget _buildQuestionsAndAnswers(
      BuildContext context, List<QuestionAndAnswer> qna) {
    return ListView.builder(
      itemCount: qna.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(qna[index].question,
                  style: Theme.of(context).textTheme.body2),
              Text(qna[index].answer),
            ],
          ),
        );
      },
    );
  }
}
