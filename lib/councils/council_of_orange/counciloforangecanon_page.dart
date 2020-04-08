import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

import './data/counciloforangecanon.dart';

class CouncilOfOrangeCanonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AutoSizeText(
          "Canons on the Council of Orange (529 AD)",
          style: Theme.of(context).textTheme.headline6,
          maxLines: 1,
          maxFontSize: 20,
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(8.0),
        child: Text(CouncilOfOrangeCanon.item),
      ),
    );
  }
}
