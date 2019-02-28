import 'package:flutter/material.dart';
import './heidelberg.dart';
import './lordsday_page.dart';

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

  Widget _buildExpandableListView(BuildContext context, int indexx) {
    print(Heidelberg.items[indexx].lordsDays.length);
    return ExpansionTile(
      title: Text(Heidelberg.items[indexx].header),
      children:
          _buildExpandedListView(context, Heidelberg.items[indexx].lordsDays),
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
                  builder: (context) => LordsDayPage(
                        lordsDay: lordsDay,
                      ))),
        ),
      );
    });
    return expandedList;
  }
}
