import 'package:flutter/material.dart';

import 'package:los_girasoles_app/Screens/Home/components/home_page.dart';
import 'package:los_girasoles_app/components/background.dart';
import 'package:los_girasoles_app/Screens/Ingresar/components/preguntar_registro.dart';
import 'package:los_girasoles_app/components/custom_input.dart';
import 'package:los_girasoles_app/components/header_text.dart';
import 'package:los_girasoles_app/components/ingresar_con_otro_medio.dart';
import 'package:los_girasoles_app/components/rounded_button.dart';
import 'package:los_girasoles_app/utils/responsive.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Background(
        size: size,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            HeaderText(
              title: "¡Bienvenido!",
              subtitle: "Por favor inicie sesión para continuar",
            ),
            CustomInput(
              campo: "Correo Electrónico",
              icon: Icons.email,
            ),
            CustomInput(
              campo: "Contraseña",
              icon: Icons.lock,
            ),
            SizedBox(height: responsive.hp(5)),
            RoundedButton(
              text: "Iniciar Sesión",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return HomePage();
                    },
                  ),
                );
              },
            ),
            SizedBox(
              height: responsive.hp(7),
            ),
            IngresarConOtroMedio(size: size),
            SizedBox(
              height: responsive.hp(7),
            ),
            PreguntaRegistrarse(
              press: () {},
            )
          ],
        ),
      ),
    );
  }
}
