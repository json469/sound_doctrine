import 'package:flutter/material.dart';
import './heidelberg.dart';

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
        return Column(
          children: <Widget>[
            Text(qna[index].question),
            Text(qna[index].answer),
          ],
        );
      },
    );
  }
}
