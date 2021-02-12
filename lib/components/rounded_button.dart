import 'package:flutter/material.dart';

import 'package:los_girasoles_app/Screens/Ingresar/login_screen.dart';
import '../constans.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({Key key, this.text, this.press}) : super(key: key);

  final String text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
          onPressed: press,
          child: Text(
            text,
            style: TextStyle(
                fontFamily: 'Sofia Pro', fontSize: 18, color: Colors.white),
          ),
        ));
  }
}
