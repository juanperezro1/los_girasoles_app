import 'package:flutter/material.dart';

import 'package:los_girasoles_app/Screens/Categorias/widgets/item_categorias.dart';
import 'package:los_girasoles_app/components/search_bar.dart';
import 'package:los_girasoles_app/models/categories_model.dart';
import 'package:los_girasoles_app/provider/my_provider.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class Body extends StatelessWidget {
  List<CategoriesModel> categoriesList = [];

  @override
  Widget build(BuildContext context) {
    MyProvider provider = Provider.of<MyProvider>(context);
    provider.getCategoriesList();

    categoriesList = provider.throwCategoriesModelList;

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
              style: TextStyle(fontFamily: 'Sofia Pro', fontSize: 21),
            )),
        Expanded(
            child: Padding(
                padding: const EdgeInsets.all(10),
                child: GridView.count(
                  crossAxisCount: 3,
                  childAspectRatio: 0.75,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  shrinkWrap: false,
                  primary: false,
                  children: categoriesList
                      .map((element) => ItemCategoria(
                          name: element.name, image: element.image))
                      .toList(),
                ))),
      ],
    ));
  }
}
