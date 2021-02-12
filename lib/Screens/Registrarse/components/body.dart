import 'package:flutter/material.dart';
import 'package:los_girasoles_app/Screens/Ingresar/components/preguntar_registro.dart';
import 'package:los_girasoles_app/components/background.dart';
import 'package:los_girasoles_app/components/boton_registrarse.dart';
import 'package:los_girasoles_app/components/email_field_input.dart';
import 'package:los_girasoles_app/components/ingresar_con_otro_medio.dart';
import 'package:los_girasoles_app/components/password_field_input.dart';
import 'package:los_girasoles_app/components/rounded_button.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Crea una cuenta",
                    style: TextStyle(
                        fontFamily: 'Gilroy',
                        color: Colors.black,
                        fontSize: 52,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Por favor registrese para continuar",
                    style: TextStyle(
                        fontFamily: 'Gilroy',
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            EmailField(campo: "Correo Electrónico"),
            PasswordField(
              campo: "Contraseña",
            ),
            SizedBox(height: size.height * 0.09),
            RoundedButton(
              text: "Registrarse",
            ),
            SizedBox(
              height: size.height * 0.06,
            ),
            IngresarConOtroMedio(size: size),
            SizedBox(
              height: size.height * 0.06,
            ),
            PreguntaRegistrarse(
              login: false,
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}
