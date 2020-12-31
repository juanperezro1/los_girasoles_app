import 'package:flutter/material.dart';
import 'package:los_girasoles_app/components/rounded_button.dart';
import 'package:los_girasoles_app/constans.dart';

class LoginBottons extends StatelessWidget {
  final Widget logo;
  const LoginBottons({this.logo});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        SizedBox(height: size.height * 0.1,),
        logo,
        SizedBox(height: size.height * 0.1,),
        RoundedButton(size: size),
        SizedBox(
          height: 25,
        ),
        Container(
            width: size.width * 0.5,
            decoration: BoxDecoration(
              border: Border.all(color: kSecondColor, width: 2),
              borderRadius: BorderRadius.circular(18),
            ),
            child: FlatButton(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 35),
              onPressed: () {},
              child: Text(
                "Registrarme",
                style: TextStyle(
                    fontFamily: 'Sofia Pro',
                    fontSize: 18,
                    color: Color(0xFFF303030)),
              ),
            )),
      ],
    );
  }
}


