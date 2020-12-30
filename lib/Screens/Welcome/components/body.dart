import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:los_girasoles_app/Screens/Welcome/components/login_botton_landscape.dart';
import 'package:los_girasoles_app/Screens/Welcome/components/login_bottons_portrait.dart';
import 'package:los_girasoles_app/constans.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final logoLosGirasoles = Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 50),
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
                    color: kprimaryColor),
              ),
              Text("EXPRÉSATE CON FLORES",
                  style: TextStyle(
                      fontFamily: 'Cerebri Sans',
                      fontSize: 18,
                      color: kprimaryColor)),
            ],
          ),
        ],
      ),
    );

    return Container(child: MediaQuery.of(context).orientation == Orientation.portrait  ? 
    LoginBottons(logo: logoLosGirasoles): LoginBottonLandscape(logo: logoLosGirasoles,));

  }
}
