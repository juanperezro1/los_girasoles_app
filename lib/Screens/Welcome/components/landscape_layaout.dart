import 'package:flutter/material.dart';

import 'package:los_girasoles_app/components/boton_iniciar_sesion.dart';
import 'package:los_girasoles_app/components/boton_registrarse.dart';


class LoginBottonLandscape extends StatelessWidget {
  final Widget logo;
  const LoginBottonLandscape({@required this.logo});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        logo,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BotonIniciarSesion(),
                SizedBox(
          width: 25,
        ),
        BotonRegistrarse(),
          ],
        ),
      ],
    );
  }
}



