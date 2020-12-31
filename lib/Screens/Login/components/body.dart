import 'package:flutter/material.dart';
import 'package:los_girasoles_app/Screens/Login/components/background.dart';
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
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: size.height * 0.04,),
        Container(
          child: Column(
            children: <Widget>[
              Text(
                "¡Bienvenido!",
                style: TextStyle(
                    fontFamily: 'Sofia Pro',
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Por favor inicie sesión para continuar",
                style: TextStyle(
                    fontFamily: 'Gilroy',
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        EmailField(campo: "Correo Electrónico"),
        PasswordField(
          campo: "Contraseña",
        ),
        SizedBox(height: size.height * 0.1),
        RoundedButton(size: size)
      ],
    ))));
  }
}
