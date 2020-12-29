import 'package:flutter/material.dart';

class LoginBottons extends StatelessWidget {
  final Widget logo;
  const LoginBottons({this.logo});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  Column(
      children: <Widget>[
        logo,
        Container(
            width: size.width * 0.5,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xFFFEDC741), Color(0xFFFF4A824)]),
              borderRadius: BorderRadius.circular(18),
            ),
            child: FlatButton(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              onPressed: () {},
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
              border: Border.all(color: Color(0xFFFFE4200), width: 2),
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
