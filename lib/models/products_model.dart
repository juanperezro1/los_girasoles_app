import 'package:flutter/cupertino.dart';

class ProductsModel {
  final String name;
  final String description;
  final String image;
  final String price;

  ProductsModel(
      {@required this.name,
      @required this.description,
      @required this.image,
      @required this.price});
}
