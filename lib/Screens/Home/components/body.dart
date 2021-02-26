import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:los_girasoles_app/Screens/Home/components/lista_horizontal.dart';
import 'package:los_girasoles_app/components/arregos_destacados.dart';
import 'package:los_girasoles_app/components/search_bar.dart';
import 'package:los_girasoles_app/models/products_model.dart';
import 'package:los_girasoles_app/provider/my_provider.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class Body extends StatelessWidget {
  List<NetworkImage> _listOfImages = <NetworkImage>[];
  List<ProductsModel> productsList = [];

  final CollectionReference _carouselRef =
      FirebaseFirestore.instance.collection('Carousel');
  @override
  Widget build(BuildContext context) {
    MyProvider provider = Provider.of<MyProvider>(context);
    provider.getProductsList();
    productsList = provider.throwProductsModelList;

    int indexSeleccionado = 0;
    return SafeArea(
      child: Column(
        children: <Widget>[
          FutureBuilder<QuerySnapshot>(
              future: _carouselRef.get(),
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return Center(
                    child: Text("Error: ${snapshot.error}"),
                  );
                }

                if (snapshot.connectionState == ConnectionState.done) {
                  // Display the data inside a list view
                  return Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SearchBar(),
                        SizedBox(
                          height: 5,
                        ),
                        Flexible(
                            child: StreamBuilder<QuerySnapshot>(
                                stream: FirebaseFirestore.instance
                                    .collection('Carousel')
                                    .snapshots(),
                                builder: (context, snapshot) {
                                  if (snapshot.hasData) {
                                    return ListView.builder(
                                        itemCount: snapshot.data.docs.length,
                                        itemBuilder:
                                            (BuildContext context, int index) {
                                          _listOfImages = [];
                                          for (int i = 0;
                                              i <
                                                  snapshot.data.docs[index]
                                                      .data()['images']
                                                      .length;
                                              i++) {
                                            _listOfImages.add(NetworkImage(
                                                snapshot.data.docs[index]
                                                    .data()['images'][i]));
                                          }
                                          return Column(
                                            children: <Widget>[
                                              Container(
                                                margin: EdgeInsets.all(10.0),
                                                height: 200,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(30),
                                                ),
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                child: Carousel(
                                                  boxFit: BoxFit.cover,
                                                  images: _listOfImages,
                                                  autoplay: false,
                                                ),
                                              ),
                                              SingleChildScrollView(
                                                scrollDirection:
                                                    Axis.horizontal,
                                                child: Row(
                                                  children: productsList
                                                      .map((e) =>
                                                          AreglosDestacados(
                                                              name: e.name,
                                                              image: e.image,
                                                              price: e.price))
                                                      .toList(),
                                                ),
                                              )
                                            ],
                                          );
                                        });
                                  } else {
                                    return Center(
                                      child: CircularProgressIndicator(),
                                    );
                                  }
                                }))
                      ],
                    ),
                  );
                }

                return Center(
                  child: CircularProgressIndicator(),
                );
              })
        ],
      ),
    );
  }
}
