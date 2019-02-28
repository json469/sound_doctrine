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
      index: 4,
      header: "Lord's Day 4",
      questionsAndAnswers: [
        QuestionAndAnswer.getItem(9),
        QuestionAndAnswer.getItem(10),
        QuestionAndAnswer.getItem(11),
      ],
    ),
    LordsDay(
      index: 5,
      header: "Lord's Day 5",
      questionsAndAnswers: [
        QuestionAndAnswer.getItem(12),
        QuestionAndAnswer.getItem(13),
        QuestionAndAnswer.getItem(14),
        QuestionAndAnswer.getItem(15),
      ],
    ),
    LordsDay(
      index: 6,
      header: "Lord's Day 6",
      questionsAndAnswers: [
        QuestionAndAnswer.getItem(16),
        QuestionAndAnswer.getItem(17),
        QuestionAndAnswer.getItem(18),
        QuestionAndAnswer.getItem(19),
      ],
    ),
    LordsDay(
      index: 7,
      header: "Lord's Day 7",
      questionsAndAnswers: [
        QuestionAndAnswer.getItem(20),
        QuestionAndAnswer.getItem(21),
        QuestionAndAnswer.getItem(22),
        QuestionAndAnswer.getItem(23),
      ],
    ),
    LordsDay(
      index: 8,
      header: "Lord's Day 8",
      questionsAndAnswers: [
        QuestionAndAnswer.getItem(24),
        QuestionAndAnswer.getItem(25),
      ],
    ),
    LordsDay(
      index: 9,
      header: "Lord's Day 9",
      questionsAndAnswers: [
        QuestionAndAnswer.getItem(26),
      ],
    ),
    LordsDay(
      index: 10,
      header: "Lord's Day 10",
      questionsAndAnswers: [
        QuestionAndAnswer.getItem(27),
        QuestionAndAnswer.getItem(28),
      ],
    ),
    LordsDay(
      index: 11,
      header: "Lord's Day 11",
      questionsAndAnswers: [
        QuestionAndAnswer.getItem(29),
        QuestionAndAnswer.getItem(30),
      ],
    ),
    LordsDay(
      index: 12,
      header: "Lord's Day 12",
      questionsAndAnswers: [
        QuestionAndAnswer.getItem(31),
        QuestionAndAnswer.getItem(32),
      ],
    ),
    LordsDay(
      index: 13,
      header: "Lord's Day 13",
      questionsAndAnswers: [
        QuestionAndAnswer.getItem(33),
        QuestionAndAnswer.getItem(34),
      ],
    ),
    LordsDay(
      index: 14,
      header: "Lord's Day 14",
      questionsAndAnswers: [
        QuestionAndAnswer.getItem(35),
        QuestionAndAnswer.getItem(36),
      ],
    ),
    LordsDay(
      index: 15,
      header: "Lord's Day 15",
      questionsAndAnswers: [
        QuestionAndAnswer.getItem(37),
        QuestionAndAnswer.getItem(38),
        QuestionAndAnswer.getItem(39),
      ],
    ),
    LordsDay(
      index: 16,
      header: "Lord's Day 16",
      questionsAndAnswers: [
        QuestionAndAnswer.getItem(40),
        QuestionAndAnswer.getItem(41),
        QuestionAndAnswer.getItem(42),
        QuestionAndAnswer.getItem(43),
        QuestionAndAnswer.getItem(44),
      ],
    ),
    LordsDay(
      index: 17,
      header: "Lord's Day 17",
      questionsAndAnswers: [
        QuestionAndAnswer.getItem(45),
      ],
    ),
    LordsDay(
      index: 18,
      header: "Lord's Day 18",
      questionsAndAnswers: [
        QuestionAndAnswer.getItem(46),
        QuestionAndAnswer.getItem(47),
        QuestionAndAnswer.getItem(48),
        QuestionAndAnswer.getItem(49),
      ],
    ),
    LordsDay(
      index: 19,
      header: "Lord's Day 19",
      questionsAndAnswers: [
        QuestionAndAnswer.getItem(50),
        QuestionAndAnswer.getItem(51),
        QuestionAndAnswer.getItem(52),
      ],
    ),
    LordsDay(
      index: 20,
      header: "Lord's Day 20",
      questionsAndAnswers: [
        QuestionAndAnswer.getItem(53),
      ],
    ),
    LordsDay(
      index: 21,
      header: "Lord's Day 21",
      questionsAndAnswers: [
        QuestionAndAnswer.getItem(54),
        QuestionAndAnswer.getItem(55),
        QuestionAndAnswer.getItem(56),
      ],
    ),
    LordsDay(
      index: 22,
      header: "Lord's Day 22",
      questionsAndAnswers: [
        QuestionAndAnswer.getItem(57),
        QuestionAndAnswer.getItem(58),
      ],
    ),
    LordsDay(
      index: 23,
      header: "Lord's Day 23",
      questionsAndAnswers: [
        QuestionAndAnswer.getItem(59),
        QuestionAndAnswer.getItem(60),
        QuestionAndAnswer.getItem(61),
      ],
    ),
    LordsDay(
      index: 24,
      header: "Lord's Day 24",
      questionsAndAnswers: [
        QuestionAndAnswer.getItem(62),
        QuestionAndAnswer.getItem(63),
        QuestionAndAnswer.getItem(64),
      ],
    ),
    LordsDay(
      index: 25,
      header: "Lord's Day 25",
      questionsAndAnswers: [
        QuestionAndAnswer.getItem(65),
        QuestionAndAnswer.getItem(66),
        QuestionAndAnswer.getItem(67),
        QuestionAndAnswer.getItem(68),
      ],
    ),
    LordsDay(
      index: 26,
      header: "Lord's Day 26",
      questionsAndAnswers: [
        QuestionAndAnswer.getItem(69),
        QuestionAndAnswer.getItem(70),
        QuestionAndAnswer.getItem(71),
      ],
    ),
    LordsDay(
      index: 27,
      header: "Lord's Day 27",
      questionsAndAnswers: [
        QuestionAndAnswer.getItem(72),
        QuestionAndAnswer.getItem(73),
        QuestionAndAnswer.getItem(74),
      ],
    ),
    LordsDay(
      index: 28,
      header: "Lord's Day 28",
      questionsAndAnswers: [
        QuestionAndAnswer.getItem(75),
        QuestionAndAnswer.getItem(76),
        QuestionAndAnswer.getItem(77),
      ],
    ),
    LordsDay(
      index: 29,
      header: "Lord's Day 29",
      questionsAndAnswers: [
        QuestionAndAnswer.getItem(78),
        QuestionAndAnswer.getItem(79),
      ],
    ),
    LordsDay(
      index: 30,
      header: "Lord's Day 30",
      questionsAndAnswers: [
        QuestionAndAnswer.getItem(80),
        QuestionAndAnswer.getItem(81),
        QuestionAndAnswer.getItem(82),
      ],
    ),
    LordsDay(
      index: 31,
      header: "Lord's Day 31",
      questionsAndAnswers: [
        QuestionAndAnswer.getItem(83),
        QuestionAndAnswer.getItem(84),
        QuestionAndAnswer.getItem(85),
      ],
    ),
    LordsDay(
      index: 32,
      header: "Lord's Day 32",
      questionsAndAnswers: [
        QuestionAndAnswer.getItem(86),
        QuestionAndAnswer.getItem(87),
      ],
    ),
    LordsDay(
      index: 33,
      header: "Lord's Day 33",
      questionsAndAnswers: [
        QuestionAndAnswer.getItem(88),
        QuestionAndAnswer.getItem(89),
        QuestionAndAnswer.getItem(90),
        QuestionAndAnswer.getItem(91),
      ],
    ),
    LordsDay(
      index: 34,
      header: "Lord's Day 34",
      questionsAndAnswers: [
        QuestionAndAnswer.getItem(92),
        QuestionAndAnswer.getItem(93),
        QuestionAndAnswer.getItem(94),
        QuestionAndAnswer.getItem(95),
      ],
    ),
    LordsDay(
      index: 35,
      header: "Lord's Day 35",
      questionsAndAnswers: [
        QuestionAndAnswer.getItem(96),
        QuestionAndAnswer.getItem(97),
        QuestionAndAnswer.getItem(98),
      ],
    ),
    LordsDay(
      index: 36,
      header: "Lord's Day 36",
      questionsAndAnswers: [
        QuestionAndAnswer.getItem(99),
        QuestionAndAnswer.getItem(100),
      ],
    ),
    LordsDay(
      index: 37,
      header: "Lord's Day 37",
      questionsAndAnswers: [
        QuestionAndAnswer.getItem(101),
        QuestionAndAnswer.getItem(102),
      ],
    ),
    LordsDay(
      index: 38,
      header: "Lord's Day 38",
      questionsAndAnswers: [
        QuestionAndAnswer.getItem(103),
      ],
    ),
    LordsDay(
      index: 39,
      header: "Lord's Day 39",
      questionsAndAnswers: [
        QuestionAndAnswer.getItem(104),
      ],
    ),
    LordsDay(
      index: 40,
      header: "Lord's Day 40",
      questionsAndAnswers: [
        QuestionAndAnswer.getItem(105),
        QuestionAndAnswer.getItem(106),
        QuestionAndAnswer.getItem(107),
      ],
    ),
    LordsDay(
      index: 41,
      header: "Lord's Day 41",
      questionsAndAnswers: [
        QuestionAndAnswer.getItem(108),
        QuestionAndAnswer.getItem(109),
      ],
    ),
    LordsDay(
      index: 42,
      header: "Lord's Day 42",
      questionsAndAnswers: [
        QuestionAndAnswer.getItem(110),
        QuestionAndAnswer.getItem(111),
      ],
    ),
    LordsDay(
      index: 43,
      header: "Lord's Day 43",
      questionsAndAnswers: [
        QuestionAndAnswer.getItem(112),
      ],
    ),
    LordsDay(
      index: 44,
      header: "Lord's Day 44",
      questionsAndAnswers: [
        QuestionAndAnswer.getItem(113),
        QuestionAndAnswer.getItem(114),
        QuestionAndAnswer.getItem(115),
      ],
    ),
    LordsDay(
      index: 45,
      header: "Lord's Day 45",
      questionsAndAnswers: [
        QuestionAndAnswer.getItem(116),
        QuestionAndAnswer.getItem(117),
        QuestionAndAnswer.getItem(118),
        QuestionAndAnswer.getItem(119),
      ],
    ),
    LordsDay(
      index: 46,
      header: "Lord's Day 46",
      questionsAndAnswers: [
        QuestionAndAnswer.getItem(120),
        QuestionAndAnswer.getItem(121),
      ],
    ),
    LordsDay(
      index: 47,
      header: "Lord's Day 47",
      questionsAndAnswers: [
        QuestionAndAnswer.getItem(122),
      ],
    ),
    LordsDay(
      index: 48,
      header: "Lord's Day 48",
      questionsAndAnswers: [
        QuestionAndAnswer.getItem(123),
      ],
    ),
    LordsDay(
      index: 49,
      header: "Lord's Day 49",
      questionsAndAnswers: [
        QuestionAndAnswer.getItem(124),
      ],
    ),
    LordsDay(
      index: 50,
      header: "Lord's Day 50",
      questionsAndAnswers: [
        QuestionAndAnswer.getItem(125),
      ],
    ),
    LordsDay(
      index: 51,
      header: "Lord's Day 51",
      questionsAndAnswers: [
        QuestionAndAnswer.getItem(126),
      ],
    ),
    LordsDay(
      index: 44,
      header: "Lord's Day 52",
      questionsAndAnswers: [
        QuestionAndAnswer.getItem(127),
        QuestionAndAnswer.getItem(128),
        QuestionAndAnswer.getItem(129),
      ],
    ),
  ];
}
