import 'package:flutter/material.dart';
import 'package:los_girasoles_app/components/search_bar.dart';

import '../../../constans.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        Container(
          height: size.height * 0.2,
          child: Stack(children: <Widget>[
            Container(
              height: size.height * 0.13 - 27,
              decoration: BoxDecoration(
                color: kAppBarColorOne,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(35),
                  bottomRight: Radius.circular(35),
                ),
              ),
            ),
            Positioned(child: SearchBar())
          ]),
        ),
      ],
    );
  }
}
