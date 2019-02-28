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
    LordsDay(
      index: 2,
      header: "Lord's Day 2",
      questionsAndAnswers: [
        QuestionAndAnswer.getItem(3),
        QuestionAndAnswer.getItem(4),
        QuestionAndAnswer.getItem(5),
      ],
    ),
    LordsDay(
      index: 3,
      header: "Lord's Day 3",
      questionsAndAnswers: [
        QuestionAndAnswer.getItem(6),
        QuestionAndAnswer.getItem(7),
        QuestionAndAnswer.getItem(8),
      ],
    ),
    LordsDay(
      index: 3,
      header: "Lord's Day 3",
      questionsAndAnswers: [
        QuestionAndAnswer.getItem(9),
        QuestionAndAnswer.getItem(10),
        QuestionAndAnswer.getItem(11),
      ],
    ),
  ];
}
