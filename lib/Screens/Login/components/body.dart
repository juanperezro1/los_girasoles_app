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
      children: <Widget>[
        Container(
          padding: EdgeInsets.symmetric(vertical: size.height * 0.03),
          alignment: Alignment.center,
          height: size.height * 0.2,
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
        Container(
          child: Column(
            children: <Widget>[
              EmailField(campo: "Correo Electrónico"),
              PasswordField(
                campo: "Contraseña",
              ),
              SizedBox(height: size.height * 0.06),
              RoundedButton(size: size)
            ],
          ),
        )
      ],
    ))));
  }
}
