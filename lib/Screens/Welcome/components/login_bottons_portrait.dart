import 'package:flutter/material.dart';
import 'package:los_girasoles_app/Screens/Login/login_screen.dart';
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
        Container(
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
            )),
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
