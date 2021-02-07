import 'package:flutter/material.dart';
import 'package:los_girasoles_app/Screens/Home/components/categorias.dart';
import 'package:los_girasoles_app/components/search_bar.dart';
import 'package:los_girasoles_app/components/carousel.dart';

//import 'package:firebase_storage/firebase_storage.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
            child: Column(
      children: <Widget>[
        Container(
          child: SearchBar(),
        ),
        Carousel(),
        SizedBox(height: 15),
        //Categorias(),
      ],
    )));
  }
}
