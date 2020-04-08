import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

import './data/athanasiancreed.dart';

class AthanasianCreedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AutoSizeText(
          "Athanasian Creed (500 AD)",
          style: Theme.of(context).textTheme.headline6,
          maxLines: 1,
          maxFontSize: 20,
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(8.0),
        child: Text(AthanasianCreed.item),
      ),
    );
  }
}
