import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:los_girasoles_app/Screens/Welcome/widgets/landscape_layaout.dart';
import 'package:los_girasoles_app/Screens/Welcome/widgets/portrait_layaout.dart';

import 'package:los_girasoles_app/constans.dart';
import 'package:los_girasoles_app/utils/responsive.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
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
                    fontSize: responsive.hp(10),
                    color: kprimaryColor),
              ),
              Text("EXPRÉSATE CON FLORES",
                  style: TextStyle(
                      fontFamily: 'Cerebri Sans',
                      fontSize: responsive.hp(2.4),
                      color: kprimaryColor)),
            ],
          ),
        ],
      ),
    );

    return Container(
        child: MediaQuery.of(context).orientation == Orientation.portrait
            ? LoginBottons(logo: logoLosGirasoles)
            : LoginBottonLandscape(
                logo: logoLosGirasoles,
              ));
  }
}
