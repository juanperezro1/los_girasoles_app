import 'package:flutter/material.dart';

import 'package:los_girasoles_app/components/background.dart';
import 'package:los_girasoles_app/Screens/Ingresar/components/preguntar_registro.dart';
import 'package:los_girasoles_app/components/boton_iniciar_sesion.dart';
import 'package:los_girasoles_app/components/email_field_input.dart';
import 'package:los_girasoles_app/components/ingresar_con_otro_medio.dart';
import 'package:los_girasoles_app/components/password_field_input.dart';

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
                  BotonIniciarSesion()
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.06,
            ),
            IngresarConOtroMedio(size: size),
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

