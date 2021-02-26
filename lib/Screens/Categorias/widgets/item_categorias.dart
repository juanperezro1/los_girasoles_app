import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:los_girasoles_app/model/categorias.dart';

class ItemCategoria extends StatelessWidget {
  final String name;
  final String image;
  final Function press;
  const ItemCategoria({
    @required this.name,
    @required this.image,
    this.press,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Container(
                  height: 144,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 30,
                        color: Colors.grey[300],
                      )
                    ],
                  ),
                  child: Stack(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(left: 25, top: 20),
                        child: SvgPicture.network(
                          image,
                          alignment: Alignment.center,
                          height: 76,
                          width: 50,
                        ),
                      ),
                      Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(top: 100),
                          child: Text(
                            name,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Gilroy',
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                    ],
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
