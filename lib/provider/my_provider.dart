import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:los_girasoles_app/models/categories_model.dart';
import 'package:los_girasoles_app/models/products_model.dart';

class MyProvider extends ChangeNotifier {
  List<ProductsModel> productsModelList = [];
  ProductsModel productsModel;
  Future<void> getProductsList() async {
    List<ProductsModel> newproductsModelList = [];
    QuerySnapshot querySnapshot =
        await FirebaseFirestore.instance.collection('Products').get();
    querySnapshot.docs.forEach((element) {
      productsModel = ProductsModel(
          name: element.data()['name'],
          description: element.data()['description'],
          image: element.data()['image'],
          price: element.data()['price']);
      print(productsModel.name);
    });

    newproductsModelList.add(productsModel);
    productsModelList = newproductsModelList;
  }

  get throwProductsModelList {
    return productsModelList;
  }

  List<CategoriesModel> categoriesModelList = [];
  CategoriesModel categoriesModel;
  Future<void> getCategoriesList() async {
    List<CategoriesModel> newcategoriesModelList = [];
    QuerySnapshot querySnapshot =
        await FirebaseFirestore.instance.collection('Categories').get();
    querySnapshot.docs.forEach((element) {
      categoriesModel = CategoriesModel(
          name: element.data()['name'], image: element.data()['image']);
      //print(categoriesModel.image);
    });
    newcategoriesModelList.add(categoriesModel);
    categoriesModelList = newcategoriesModelList;
  }

  get throwCategoriesModelList {
    return categoriesModelList;
  }
}
