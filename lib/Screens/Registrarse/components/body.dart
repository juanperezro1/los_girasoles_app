import 'package:flutter/material.dart';
import 'package:los_girasoles_app/Screens/Ingresar/components/preguntar_registro.dart';
import 'package:los_girasoles_app/components/background.dart';
import 'package:los_girasoles_app/components/custom_input.dart';
import 'package:los_girasoles_app/components/ingresar_con_otro_medio.dart';
import 'package:los_girasoles_app/components/rounded_button.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  Future<void> _alertDialogBuilder() async {
    return showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Error", style: TextStyle(fontFamily: 'Sofia Pro')),
          content: Container(
            child: Text(
              "Algo anda mal",
              style:
                  TextStyle(fontFamily: 'Gilroy', fontWeight: FontWeight.bold),
            ),
          ),
          actions: [
            FlatButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Cerrar"))
          ],
        );
      },
    );
  }

  bool _registerFormLoadin = false;

  // Form Input para realizar el registro

  String _registerEmail = "";
  String _registerPassword = "";

  // FocusNode para los inputs

  FocusNode _passwordFocusNode;

  @override
  void initState() {
    _passwordFocusNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    _passwordFocusNode.dispose();
    super.dispose();
  }

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
            CustomInput(
              campo: "Correo Electrónico",
              icon: Icons.email,
              onChange: (value) {
                _registerEmail = value;
              },
              onSubmit: (value) {
                _passwordFocusNode.requestFocus();
              },
              textInputAction: TextInputAction.next,
            ),
            CustomInput(
              campo: "Contraseña",
              icon: Icons.lock,
              onChange: (value) {
                _registerPassword = value;
              },
              focusNode: _passwordFocusNode,
              isPasswordField: true,
            ),
            SizedBox(height: size.height * 0.09),
            RoundedButton(
              text: "Registrarse",
              press: () {
                setState(() {
                  _registerFormLoadin = true;
                });
              },
              isLoading: _registerFormLoadin,
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
