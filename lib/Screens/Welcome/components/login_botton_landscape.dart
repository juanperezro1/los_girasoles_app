import 'package:flutter/material.dart';
import 'package:los_girasoles_app/Screens/Login/login_screen.dart';
import 'package:los_girasoles_app/constans.dart';

class LoginBottonLandscape extends StatelessWidget {
  final Widget logo;
  const LoginBottonLandscape({@required this.logo});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        logo,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                width: size.width * 0.4,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: kGradientColor),
                  borderRadius: BorderRadius.circular(18),
                ),
                child: FlatButton(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
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
          width: 25,
        ),
        Container(
            width: size.width * 0.4,
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
        ),
        
      ],
    );
  }
}