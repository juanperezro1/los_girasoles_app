import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Categorias extends StatelessWidget {
  const Categorias({
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
              "Categorias",
              style: TextStyle(fontFamily: 'Sofia Pro', fontSize: 21),
            )),
        SizedBox(height: 10),
        Container(
          height: 128,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 2,
              itemBuilder: (context, index) {
                return Container(
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                        height: 100,
                        width: 118,
                        child: SvgPicture.asset(
                          'categorias[index].imagen',
                        ),
                      ),
                      // Text(
                      //   categorias[index]['nombre'],
                      //   textAlign: TextAlign.right,
                      //   style: TextStyle(
                      //       fontFamily: 'Gilroy'),
                      // )
                    ],
                  ),
                );
              }),
        ),
      ],
    );
  }
}
