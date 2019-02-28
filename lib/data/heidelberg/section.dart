import './lordsday.dart';

class Section {
  final int index;
  final String header;
  final List<LordsDay> lordsDays;
  Section({this.index, this.header, this.lordsDays});

  static List<Section> items = [
    Section(
      index: 1,
      header: "Introduction",
      lordsDays: [
        LordsDay.getItem(1),
      ],
    ),
    Section(
      index: 2,
      header: 'Part I: Misery',
      lordsDays: [
        LordsDay.getItem(2),
        LordsDay.getItem(3),
        LordsDay.getItem(4),
      ],
    ),
    Section(
      index: 3,
      header: 'Part II: Deliverance',
      lordsDays: [
        LordsDay.getItem(5),
        LordsDay.getItem(6),
        LordsDay.getItem(7),
        LordsDay.getItem(8),
        LordsDay.getItem(9),
        LordsDay.getItem(10),
        LordsDay.getItem(11),
        LordsDay.getItem(12),
        LordsDay.getItem(13),
        LordsDay.getItem(14),
        LordsDay.getItem(15),
        LordsDay.getItem(16),
        LordsDay.getItem(17),
        LordsDay.getItem(18),
        LordsDay.getItem(19),
        LordsDay.getItem(20),
        LordsDay.getItem(21),
        LordsDay.getItem(22),
        LordsDay.getItem(23),
        LordsDay.getItem(24),
        LordsDay.getItem(25),
        LordsDay.getItem(26),
        LordsDay.getItem(27),
        LordsDay.getItem(28),
        LordsDay.getItem(29),
        LordsDay.getItem(30),
        LordsDay.getItem(31),
      ],
    ),
    Section(
      index: 4,
      header: 'Part III: Gratitude',
      lordsDays: [
        LordsDay.getItem(32),
        LordsDay.getItem(33),
        LordsDay.getItem(34),
        LordsDay.getItem(35),
        LordsDay.getItem(36),
        LordsDay.getItem(37),
        LordsDay.getItem(38),
        LordsDay.getItem(39),
        LordsDay.getItem(40),
        LordsDay.getItem(41),
        LordsDay.getItem(42),
        LordsDay.getItem(43),
        LordsDay.getItem(44),
        LordsDay.getItem(45),
        LordsDay.getItem(46),
        LordsDay.getItem(47),
        LordsDay.getItem(48),
        LordsDay.getItem(49),
        LordsDay.getItem(50),
        LordsDay.getItem(51),
        LordsDay.getItem(52),
      ],
    )
  ];
}
