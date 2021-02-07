import 'package:flutter/material.dart';
import 'package:los_girasoles_app/components/search_bar.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
            child: Column(
      children: <Widget>[
        Container(
          child: SearchBar(),
        ),
      ],
    )));
  }
}
