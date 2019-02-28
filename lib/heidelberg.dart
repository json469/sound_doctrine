class Heidelberg {
  static List<Section> items = [
    Section(
      index: 1,
      header: "Introduction",
      lordsDays: [
        LordsDay(
          index: 1,
          header: "Lord's Day 1",
          questionsAndAnswers: [
            QuestionAndAnswer(
              index: 1,
              question: "1. What is thy only comfort in life and in death?",
              answer:
                  "That I, with body and soul, both in life and in death, am not my own, but belong to my faithful Savior Jesus Christ, who with His precious blood has fully satisfied for all my sins, and redeemed me from all the power of the devil; and so preserves me, that without the will of my Father in heaven not a hair can fall from my head; yea, that all things must work together for my salvation. Wherefore, by His Holy Spirit, He also assures me of eternal life, and makes me heartily willing and ready henceforth to live unto Him. ",
            ),
            QuestionAndAnswer(
              index: 2,
              question:
                  "2. How many things are necessary for thee to know, that thou in this comfort mayest live and die happily?",
              answer:
                  "Three things: first, the greatness of my sin and misery. Second, how I am redeemed from all my sins and misery. Third, how I am to be thankful to God for such redemption.",
            ),
          ],
        ),
      ],
    ),
    Section(
      index: 2,
      header: 'Part I: Misery',
      lordsDays: [],
    ),
    Section(
      index: 3,
      header: 'Part II: Deliverance',
      lordsDays: [],
    ),
    Section(
      index: 4,
      header: 'Part III: Gratitude',
      lordsDays: [],
    )
  ];

  static List<String> lordsDay = [
    "Lord's Day 1",
    "Lord's Day 2",
    "Lord's Day 3",
    "Lord's Day 4",
    "Lord's Day 5",
    "Lord's Day 6",
    "Lord's Day 7",
    "Lord's Day 8",
    "Lord's Day 9",
    "Lord's Day 10",
    "Lord's Day 11",
    "Lord's Day 12",
    "Lord's Day 13",
    "Lord's Day 14",
    "Lord's Day 15",
    "Lord's Day 16",
    "Lord's Day 17",
    "Lord's Day 18",
    "Lord's Day 19",
    "Lord's Day 20",
    "Lord's Day 21",
    "Lord's Day 22",
    "Lord's Day 23",
    "Lord's Day 24",
    "Lord's Day 25",
    "Lord's Day 26",
    "Lord's Day 27",
    "Lord's Day 28",
    "Lord's Day 29",
    "Lord's Day 30",
    "Lord's Day 31",
    "Lord's Day 32",
    "Lord's Day 33",
    "Lord's Day 34",
    "Lord's Day 35",
    "Lord's Day 36",
    "Lord's Day 37",
    "Lord's Day 38",
    "Lord's Day 39",
    "Lord's Day 40",
    "Lord's Day 41",
    "Lord's Day 42",
    "Lord's Day 43",
    "Lord's Day 44",
    "Lord's Day 45",
    "Lord's Day 46",
    "Lord's Day 47",
    "Lord's Day 48",
    "Lord's Day 49",
    "Lord's Day 50",
    "Lord's Day 51",
    "Lord's Day 52",
  ];

  static List<String> questionsAndAnswers = [
    "1. What is thy only comfort in life and in death?\nThat I, with body and soul, both in life and in death, am not my own, but belong to my faithful Savior Jesus Christ, who with His precious blood has fully satisfied for all my sins, and redeemed me from all the power of the devil; and so preserves me, that without the will of my Father in heaven not a hair can fall from my head; yea, that all things must work together for my salvation. Wherefore, by His Holy Spirit, He also assures me of eternal life, and makes me heartily willing and ready henceforth to live unto Him.",
  ];
}

class Section {
  final int index;
  final String header;
  final List<LordsDay> lordsDays;
  Section({this.index, this.header, this.lordsDays});
}

class LordsDay {
  final int index;
  final String header;
  final List<QuestionAndAnswer> questionsAndAnswers;
  LordsDay({this.index, this.header, this.questionsAndAnswers});
}

class QuestionAndAnswer {
  final int index;
  final String question;
  final String answer;
  QuestionAndAnswer({this.index, this.question, this.answer});
}
