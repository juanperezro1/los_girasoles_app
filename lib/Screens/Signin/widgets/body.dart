import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:los_girasoles_app/Screens/Signin/widgets/preguntar_registro.dart';
import 'package:los_girasoles_app/Screens/Signup/registrarse_screen.dart';
import 'package:los_girasoles_app/utils/responsive.dart';
import 'package:los_girasoles_app/widgets/background.dart';
import 'package:los_girasoles_app/widgets/custom_input.dart';
import 'package:los_girasoles_app/widgets/header_text.dart';
import 'package:los_girasoles_app/widgets/ingresar_con_otro_medio.dart';
import 'package:los_girasoles_app/widgets/rounded_button.dart';


class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  Future<void> _alertDialogBuilder(String error) async {
    return showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Error", style: TextStyle(fontFamily: 'Sofia Pro')),
          content: Container(
            child: Text(
              error,
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

  //Crear un nuevo usuario

  Future<String> _loginAccount() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: _loginEmail, password: _logiPassword);
      return null;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        return 'The password provided is too weak.';
      } else if (e.code == 'email-already-in-use') {
        return 'The account already exists for that email.';
      }
      return e.message;
    } catch (e) {
      return e.toString();
    }
  }

  void _submitForm() async {
    //Set the form to loading state
    setState(() {
      _loginFormLoadin = true;
    });

    //Run the create account method
    String _loginFeedBack = await _loginAccount();

    //Validar si el fomulario no tiene errores mientras se crea una nueva cuenta
    if (_loginFeedBack != null) {
      _alertDialogBuilder(_loginFeedBack);

      setState(() {
        _loginFormLoadin = false;
      });
    }
  }

  // Variable para mostrar el load al registrarse
  bool _loginFormLoadin = false;

  String _loginEmail = "";
  String _logiPassword = "";

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
              onChange: (value) {
                _loginEmail = value;
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
                _logiPassword = value;
              },
              focusNode: _passwordFocusNode,
              isPasswordField: true,
              onSubmit: (value) {
                _submitForm();
              },
            ),
            SizedBox(height: responsive.hp(5)),
            RoundedButton(
              text: "Iniciar Sesión",
              press: () {
                _submitForm();
              },
              isLoading: _loginFormLoadin,
            ),
            SizedBox(
              height: responsive.hp(7),
            ),
            IngresarConOtroMedio(size: size),
            SizedBox(
              height: responsive.hp(7),
            ),
            PreguntaRegistrarse(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return RegistrarseScreen();
                    },
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
