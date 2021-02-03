import 'package:flutter/material.dart';
import 'package:los_girasoles_app/Screens/Registrarse/registrarse_screen.dart';

import '../constans.dart';

class BotonRegistrarse extends StatelessWidget {
  const BotonRegistrarse({
    Key key,

  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          border: Border.all(color: kSecondColor, width: 2),
          borderRadius: BorderRadius.circular(18),
        ),
        child: FlatButton(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return RegistrarseScreen();
                },
              ),
            );
          },
          child: Text(
            "Registrarme",
            style: TextStyle(
                fontFamily: 'Sofia Pro',
                fontSize: 18,
                color: Color(0xFFF303030)),
          ),
        ));
  }
}