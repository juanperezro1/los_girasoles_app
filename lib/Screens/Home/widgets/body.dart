import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:los_girasoles_app/models/products_model.dart';
import 'package:los_girasoles_app/widgets/favorite_bouquets.dart';
import 'package:los_girasoles_app/widgets/search_bar.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<ProductsModel> productsList =
        Provider.of<List<ProductsModel>>(context);

    final CollectionReference _carouselRef =
        FirebaseFirestore.instance.collection('Carousel');
    //List<Carousel> carouselImgages = Provider.of<List<Carousel>>(context);
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
                  return Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SearchBar(),
                        //CarouselImages(),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: productsList
                                .map((e) => FavoriteBouquets(
                                    name: e.name,
                                    image: e.image,
                                    price: e.price))
                                .toList(),
                          ),
                        )
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
