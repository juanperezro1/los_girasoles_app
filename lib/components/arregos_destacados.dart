import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:los_girasoles_app/model/categorias.dart';
import 'package:los_girasoles_app/model/productos.dart';

class AreglosDestacados extends StatelessWidget {
  const AreglosDestacados({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 20,
        ),
        Container(
          height: 176,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categorias.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
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
                                  color: Colors.grey[100].withOpacity(0.9),
                                  blurRadius: 30,
                                  offset: Offset(0, 10))
                            ]),
                        child: Column(
                          children: <Widget>[
                            Container(
                              alignment: Alignment.center,
                              child: SvgPicture.asset(productos[index].imagen),
                            ),
                            Container(
                                margin: EdgeInsets.only(top: 5),
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  productos[index].nombre,
                                  style: TextStyle(fontFamily: 'Sofia Pro'),
                                )),
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                  '\$ ' + productos[index].precio.toString()),
                            ),
                          ],
                        )),
                  ],
                );
              }),
        ),
      ],
    );
  }
}
