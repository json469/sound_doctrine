import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

import './data/nicenecreed.dart';

class NiceneCreedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AutoSizeText(
          "Nicene Creed (325 AD)",
          style: Theme.of(context).textTheme.title,
          maxLines: 1,
          maxFontSize: 20,
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(8.0),
        child: Text(NiceneCreed.item),
      ),
    );
  }
}
