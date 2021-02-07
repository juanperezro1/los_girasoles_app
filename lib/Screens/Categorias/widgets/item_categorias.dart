import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:los_girasoles_app/model/categorias.dart';

class ItemCategoria extends StatelessWidget {
  final Categoria categoria;
  final Function press;
  const ItemCategoria({
    this.categoria,
    this.press,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
            height: 144,
            width: 120,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 30,
                  color: Colors.grey[200],
                )
              ],
            ),
            child: Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(left: 25, top: 20),
                  child: SvgPicture.asset(
                    categoria.imagen,
                    alignment: Alignment.center,
                    height: 76,
                    width: 50,
                  ),
                ),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(top: 100),
                    child: Text(
                      categoria.nombre,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Gilroy',
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
              ],
            )),
      ],
    );
  }
}
