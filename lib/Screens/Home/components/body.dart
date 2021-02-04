import 'package:flutter/material.dart';
import 'package:los_girasoles_app/components/search_bar.dart';
import 'package:los_girasoles_app/components/carousel.dart';
import '../../../constans.dart';

//import 'package:firebase_storage/firebase_storage.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: SingleChildScrollView(
            child: Column(
      children: <Widget>[
        Container(
          height: size.height * 0.1,
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
        Carousel(),
      ],
    )));
  }
}

