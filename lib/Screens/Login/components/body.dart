import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:los_girasoles_app/Screens/Login/components/background.dart';
import 'package:los_girasoles_app/Screens/Login/components/preguntar_registro.dart';
import 'package:los_girasoles_app/components/email_field_input.dart';
import 'package:los_girasoles_app/components/password_field_input.dart';
import 'package:los_girasoles_app/components/rounded_button.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
        child: SafeArea(
      child: Background(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(vertical: size.height * 0.02),
              alignment: Alignment.center,
              height: size.height * 0.2,
              child: Column(
                children: <Widget>[
                  Text(
                    "¡Bienvenido!",
                    style: TextStyle(
                        fontFamily: 'Sofia Pro',
                        color: Colors.white,
                        fontSize: 55,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Por favor inicie sesión para continuar",
                    style: TextStyle(
                        fontFamily: 'Gilroy',
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  EmailField(campo: "Correo Electrónico"),
                  PasswordField(
                    campo: "Contraseña",
                  ),
                  SizedBox(height: size.height * 0.09),
                  RoundedButton(size: size)
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.06,
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Text(
                    "Conecta con",
                    style: TextStyle(fontFamily: 'Sofia Pro', fontSize: 19),
                  ),
                  SizedBox(height: size.height * 0.02,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SvgPicture.asset('assets/icons/facebook.svg'),
                      VerticalDivider(
                        color: Colors.black,
                        thickness: 2,
                        width: 20,
                      ),
                      SvgPicture.asset('assets/icons/google.svg'),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: size.height * 0.06,),
            PreguntaRegistrarse(
              press: () {},
            )
          ],
        ),
      ),
    ));
  }
}
