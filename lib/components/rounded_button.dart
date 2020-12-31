import 'package:flutter/material.dart';
import 'package:los_girasoles_app/Screens/Login/login_screen.dart';

import '../constans.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key key,
    @required this.size
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: size.width * 0.5,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: kGradientColor),
          borderRadius: BorderRadius.circular(18),
        ),
        child: FlatButton(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return LoginScreen();
                },
              ),
            );
          },
          child: Text(
            "Iniciar sesión",
            style: TextStyle(
                fontFamily: 'Sofia Pro', fontSize: 18, color: Colors.white),
          ),
        ));
  }
}
