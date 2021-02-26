import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FavoriteBouquets extends StatelessWidget {
  final String name;
  final String image;
  final String price;
  const FavoriteBouquets({
    Key key,
    @required this.name,
    @required this.image,
    @required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
            height: 176,
            width: 160,
            padding: EdgeInsets.only(left: 10),
            margin: EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey[300].withOpacity(0.6),
                      blurRadius: 30,
                      offset: Offset(-2, 20))
                ]),
            child: Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  child: SvgPicture.network(image),
                ),
                Container(
                    margin: EdgeInsets.only(top: 5),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      name,
                      style: TextStyle(fontFamily: 'Sofia Pro'),
                    )),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text('\$ ' + price),
                ),
              ],
            )),
      ],
    );
  }
}
