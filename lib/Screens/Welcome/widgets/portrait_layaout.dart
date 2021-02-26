import 'package:flutter/material.dart';

import 'package:los_girasoles_app/utils/responsive.dart';
import 'package:los_girasoles_app/widgets/boton_iniciar_sesion.dart';
import 'package:los_girasoles_app/widgets/boton_registrarse.dart';

class LoginBottons extends StatelessWidget {
  final Widget logo;
  const LoginBottons({this.logo});

  get responsive => null;
  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    return Column(
      children: <Widget>[
        SizedBox(
          height: responsive.hp(5),
        ),
        logo,
        SizedBox(
          height: responsive.hp(8),
        ),
        BotonIniciarSesion(),
        SizedBox(
          height: responsive.hp(4),
        ),
        BotonRegistrarse(),
      ],
    );
  }
}
