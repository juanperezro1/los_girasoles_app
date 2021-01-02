
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IngresarConOtroMedio extends StatelessWidget {
  const IngresarConOtroMedio({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text(
            "Conecta con",
            style: TextStyle(fontFamily: 'Sofia Pro', fontSize: 19),
          ),
          SizedBox(height: size.height * 0.02,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SvgPicture.asset('assets/icons/facebook.svg'),
              VerticalDivider(
                color: Colors.black,
                thickness: 2,
                width: 20,
              ),
              SvgPicture.asset('assets/icons/google.svg'),
            ],
          )
        ],
      ),
    );
  }
}