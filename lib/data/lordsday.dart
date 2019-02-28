import './questionandanswer.dart';

class LordsDay {
  final int index;
  final String header;
  final List<QuestionAndAnswer> questionsAndAnswers;
  LordsDay({this.index, this.header, this.questionsAndAnswers});

  static LordsDay getItem(int index) {
    return _items[index - 1];
  }

  static List<LordsDay> _items = [
    LordsDay(
      index: 1,
      header: "Lord's Day 1",
      questionsAndAnswers: [
        QuestionAndAnswer.getItem(1),
        QuestionAndAnswer.getItem(2),
      ],
    ),
  ];
}