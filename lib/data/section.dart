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
}