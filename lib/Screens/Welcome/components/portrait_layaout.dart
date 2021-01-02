import 'package:flutter/material.dart';
import 'package:los_girasoles_app/components/boton_iniciar_sesion.dart';
import 'package:los_girasoles_app/components/boton_registrarse.dart';


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
        BotonIniciarSesion(),
        SizedBox(
          height: 25,
        ),
        BotonRegistrarse(),
      ],
    );
  }
}




