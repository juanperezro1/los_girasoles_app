import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

// ignore: must_be_immutable
class EventsCarousel extends StatelessWidget {
  List<NetworkImage> _listOfImages = <NetworkImage>[];

  final CollectionReference _carouselRef =
      FirebaseFirestore.instance.collection('Carousel');
  @override
  Widget build(BuildContext context) {
    int indexSeleccionado = 0;
    return Column(
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
                    children: <Widget>[
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
    );
  }
}
