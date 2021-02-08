import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Carousel extends StatelessWidget {
  const Carousel({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 10),
          child: Text(
            "Destacadas",
            style: TextStyle(
                fontFamily: 'Sofia Pro',
                fontSize: 21,
                color: Color(0xFFF303030)),
          ),
        ),
        SizedBox(height: 20),
        CarouselSlider(
            items: [
              Container(
                //margin: EdgeInsets.all(4),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        image: AssetImage('assets/images/img2.jpg'),
                        fit: BoxFit.cover)),
              ),
              Container(
                //margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        image: AssetImage('assets/images/img2.jpg'),
                        fit: BoxFit.cover)),
              ),
              Container(
                //margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        image: AssetImage('assets/images/img2.jpg'),
                        fit: BoxFit.cover)),
              )
            ],
            options: CarouselOptions(
              height: 180.0,
              enlargeCenterPage: true,
              autoPlay: false,
              aspectRatio: 16 / 9,
              enableInfiniteScroll: false,
            )),
      ],
    );
  }
}
