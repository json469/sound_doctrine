import 'package:flutter/material.dart';
import './data/counciloforangecanon.dart';

class CouncilOfOrangeCanonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Canons on the Council of Orange (A.D. 529)",
            style: Theme.of(context).textTheme.title),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(8.0),
        child: Text(CouncilOfOrangeCanon.item),
      ),
    );
  }
}
