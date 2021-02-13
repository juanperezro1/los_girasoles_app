import 'package:flutter/material.dart';

class PreguntaRegistrarse extends StatelessWidget {
  final bool login;
  final Function press;
  const PreguntaRegistrarse({
    this.login = true,
    this.press,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "¿No tienes una cuenta? " : "¿Ya tienes una cuenta?",
          style: TextStyle(fontFamily: 'Sofia', fontSize: 19),
        ),
        GestureDetector(
            onTap: () {},
            child: Text(
              login ? "Registrate" : "Inicia sesión",
              style: TextStyle(
                fontFamily: 'Sofia',
                fontSize: 19,
                color: Color(0xFFFFFD32A),
              ),
            )),
      ],
    );
  }
}
