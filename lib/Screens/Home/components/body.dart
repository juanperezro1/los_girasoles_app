import 'package:flutter/material.dart';
import 'package:los_girasoles_app/components/arregos_destacados.dart';
import 'package:los_girasoles_app/components/search_bar.dart';
import 'package:los_girasoles_app/components/carousel.dart';

import 'lista_horizontal.dart';

//import 'package:firebase_storage/firebase_storage.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int indexSeleccionado = 0;
    return SafeArea(
        child: SingleChildScrollView(
            child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          child: SearchBar(),
        ),
        Carousel(),
        SizedBox(height: 15),
        //Categorias(),
        SizedBox(
          height: 12,
        ),
        ListaHorizontal(indexSeleccionado: indexSeleccionado),
        AreglosDestacados(),
      ],
    )));
  }
}
