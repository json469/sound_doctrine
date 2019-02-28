import 'package:flutter/material.dart';
import '../data/heidelberg/lordsday.dart';
import '../data/heidelberg/questionandanswer.dart';

class LordsDayPage extends StatelessWidget {
  final LordsDay lordsDay;
  LordsDayPage({this.lordsDay});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${lordsDay.header}'),
      ),
      body: _buildQuestionsAndAnswers(lordsDay.questionsAndAnswers),
    );
  }

  Widget _buildQuestionsAndAnswers(List<QuestionAndAnswer> qna) {
    return ListView.builder(
      itemCount: qna.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                qna[index].question,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
              Text(qna[index].answer),
            ],
          ),
        );
      },
    );
  }
}
