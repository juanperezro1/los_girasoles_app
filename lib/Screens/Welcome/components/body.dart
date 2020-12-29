import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:los_girasoles_app/Screens/Welcome/components/login_bottons.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return LoginBottons(logo: SingleChildScrollView(child:
     Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 100),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            children: <Widget>[
              SvgPicture.asset('assets/images/logo.svg'),
              Text(
                "Los Girasoles",
                style: TextStyle(
                    fontFamily: 'Lucky Fellas',
                    fontSize: 75,
                    color: Color(0xFFF9CD22)),
              ),
              Text("EXPRÉSATE CON FLORES",
                  style: TextStyle(
                      fontFamily: 'Cerebri Sans',
                      fontSize: 18,
                      color: Color(0xFFF9CD22))),
            ],
          ),
        ],
      ),
    )));
  }
}
