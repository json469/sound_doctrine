import 'package:flutter/material.dart';
import './data/heidelberg.dart';
import './data/lordsday.dart';
import 'lordsday_page.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Project Heidelberg'),
      ),
      body: _buildListView(),
    );
  }

  Widget _buildListView() {
    return ListView.builder(
      itemCount: Heidelberg.items.length ?? 0,
      itemBuilder: (BuildContext context, int index) {
        return _buildExpandableListView(context, index);
      },
    );
  }

  Widget _buildExpandableListView(BuildContext context, int index) {
    return ExpansionTile(
      title: Text(Heidelberg.items[index].header),
      children:
          _buildExpandedListView(context, Heidelberg.items[index].lordsDays),
    );
  }

  List<Widget> _buildExpandedListView(
      BuildContext context, List<LordsDay> lordsDays) {
    List<Widget> expandedList = [];
    lordsDays.forEach((lordsDay) {
      expandedList.add(
        ListTile(
          title: Text('${lordsDay.header}'),
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => LordsDayPage(lordsDay: lordsDay))),
        ),
      );
    });
    return expandedList;
  }
}
