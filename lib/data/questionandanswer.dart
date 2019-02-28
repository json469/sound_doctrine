class QuestionAndAnswer {
  final int index;
  final String question;
  final String answer;
  QuestionAndAnswer({this.index, this.question, this.answer});

  static QuestionAndAnswer getItem(int index) {
    return _items[index-1];
  }

  static List<QuestionAndAnswer> _items = [
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
  ];
}