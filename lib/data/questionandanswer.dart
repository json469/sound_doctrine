class QuestionAndAnswer {
  final int index;
  final String question;
  final String answer;
  QuestionAndAnswer({this.index, this.question, this.answer});

  static QuestionAndAnswer getItem(int index) {
    return _items[index - 1];
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
    QuestionAndAnswer(
      index: 3,
      question: "3. Whence knowest thou thy misery?",
      answer: "Out of the Law of God.",
    ),
    QuestionAndAnswer(
      index: 4,
      question: "4. What does the Law of God require of us?",
      answer:
          "Christ teaches us in sum, Matthew 22:37–40, “Thou shalt love the Lord, thy God with all thy heart, and with all thy soul, and with all thy mind, and with all thy strength. This is the first and great commandment; and the second is like unto it: Thou shalt love thy neighbor as thyself. On these two commandments hang all the law and the prophets.”",
    ),
    QuestionAndAnswer(
      index: 5,
      question: "5. Canst thou keep all this perfectly?",
      answer: "No; for I am by nature prone to hate God and my neighbor.",
    ),
    QuestionAndAnswer(
      index: 6,
      question: "6. Did God create man thus wicked and perverse?",
      answer:
          "No; but God created man good, and after His own image, that is, in righteousness and true holiness; that he might rightly know God his Creator, heartily love Him, and live with Him in eternal blessedness, to praise and glorify Him.",
    ),
    QuestionAndAnswer(
      index: 7,
      question: "7. Whence then comes this depraved nature of man?",
      answer:
          "From the fall and disobedience of our first parents, Adam and Eve, in Paradise, whereby our nature became so corrupt, that we are all conceived and born in sin.",
    ),
    QuestionAndAnswer(
      index: 8,
      question:
          "8. But are we so depraved, that we are wholly unapt to any good and prone to all evil?",
      answer: "Yes; unless we are born again by the Spirit of God.",
    ),
    QuestionAndAnswer(
      index: 9,
      question:
          "9. Does not God then wrong man, by requiring of him in His law that which he cannot perform?",
      answer:
          "No; for God so made man, that he could perform it; but man, through the instigation of the devil, by wilful disobedience deprived himself and all his posterity of this power.",
    ),
    QuestionAndAnswer(
      index: 10,
      question:
          "10. Will God suffer such disobedience and apostasy to go unpunished?",
      answer:
          "By no means; but He is terribly displeased with our inborn as well as our actual sins, and will punish them in just judgment in time and eternity, as he has declared: Cursed is everyone that continueth not in all things which are written in the book of the law, to do them (Deut. 27:26).",
    ),
    QuestionAndAnswer(
      index: 11,
      question: "11. Is then God not merciful? ",
      answer: "God is indeed merciful, but He is likewise just; wherefore His justice requires that sin, which is committed against the most high majesty of God, be also punished with extreme, that is, with everlasting punishment both of body and soul.",
    ),
  ];
}
