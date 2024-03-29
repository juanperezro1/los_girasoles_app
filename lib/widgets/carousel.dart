import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

// ignore: must_be_immutable
class CarouselImages extends StatelessWidget {
  List<NetworkImage> _listOfImages = <NetworkImage>[];
  @override
  Widget build(BuildContext context) {
    //List<Carousel> carouselImgages = Provider.of<List<Carousel>>(context);
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
                          itemBuilder: (BuildContext context, int index) {
                            _listOfImages = [];
                            for (int i = 0;
                                i <
                                    snapshot.data.docs[index]
                                        .data()['images']
                                        .length;
                                i++) {
                              _listOfImages.add(NetworkImage(
                                  snapshot.data.docs[index].data()['images']
                                      [i]));
                            }
                            return Column(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.all(10.0),
                                  height: 200,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  //width: MediaQuery.of(context).size.width,
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
}
