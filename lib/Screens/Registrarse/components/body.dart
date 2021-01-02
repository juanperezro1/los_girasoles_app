import 'package:flutter/material.dart';
import 'package:los_girasoles_app/components/background.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: SingleChildScrollView(
      child: Background(
        child: Column(
          children: <Widget>[],
        ),
      ),
    ));
  }
}
