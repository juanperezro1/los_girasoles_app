import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:los_girasoles_app/models/carousel.dart';
import 'package:los_girasoles_app/models/products_model.dart';

class Database {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Stream<List<ProductsModel>> get products {
    return _firestore.collection('Products').snapshots().map(
        (QuerySnapshot querySnapshot) => querySnapshot.docs
            .map((DocumentSnapshot documentSnapshot) => ProductsModel(
                name: documentSnapshot.data()['name'],
                description: documentSnapshot.data()['description'],
                image: documentSnapshot.data()['image'],
                price: documentSnapshot.data()['price']))
            .toList());
  }

  Stream<List<Carousel>> get imagesCarousel {
    return _firestore
        .collection('Carousel')
        .snapshots()
        .map((QuerySnapshot querySnapshot) => querySnapshot.docs
            .map((DocumentSnapshot documentSnapshot) => Carousel(image: documentSnapshot.data()['image'])));
            
  }
}
