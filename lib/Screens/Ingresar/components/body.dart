import 'package:flutter/material.dart';

import 'package:los_girasoles_app/Screens/Home/components/home_page.dart';
import 'package:los_girasoles_app/components/background.dart';
import 'package:los_girasoles_app/Screens/Ingresar/components/preguntar_registro.dart';
import 'package:los_girasoles_app/components/custom_input.dart';
import 'package:los_girasoles_app/components/ingresar_con_otro_medio.dart';
import 'package:los_girasoles_app/components/rounded_button.dart';
import 'package:los_girasoles_app/utils/responsive.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: SafeArea(
        child: Background(
          size: size,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(top: responsive.hp(95) * 0.050),
                height: responsive.hp(23),
                child: Column(
                  children: <Widget>[
                    Text(
                      "¡Bienvenido!",
                      style: TextStyle(
                          fontFamily: 'Gilroy',
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
              CustomInput(
                campo: "Correo Electrónico",
                icon: Icons.email,
              ),
              CustomInput(
                campo: "Contraseña",
                icon: Icons.lock,
              ),
              SizedBox(height: responsive.hp(6)),
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
      ),
    );
  }
}
