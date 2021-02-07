import 'package:flutter/material.dart';

import 'package:los_girasoles_app/Screens/Categorias/widgets/item_categorias.dart';
import 'package:los_girasoles_app/components/search_bar.dart';
import 'package:los_girasoles_app/model/categorias.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          child: SearchBar(),
        ),
        SizedBox(height: 10),
        Container(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              "Categorias",
              style: TextStyle(fontFamily: 'Sofia Pro', fontSize: 25),
            )),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: GridView.builder(
              itemCount: categorias.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, childAspectRatio: 0.75),
              itemBuilder: (context, index) => ItemCategoria(
                    categoria: categorias[index],
                  )),
        ))
      ],
    ));
  }
}
