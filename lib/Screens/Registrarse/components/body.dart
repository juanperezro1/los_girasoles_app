import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:los_girasoles_app/Screens/Ingresar/components/preguntar_registro.dart';
import 'package:los_girasoles_app/components/background.dart';
import 'package:los_girasoles_app/components/custom_input.dart';
import 'package:los_girasoles_app/components/header_text.dart';
import 'package:los_girasoles_app/components/ingresar_con_otro_medio.dart';
import 'package:los_girasoles_app/components/rounded_button.dart';
import 'package:los_girasoles_app/utils/responsive.dart';

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

  Future<String> _createAccount() async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: _registerEmail, password: _registerPassword);
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
      _registerFormLoadin = true;
    });

    //Run the create account method
    String _createAccountFeedBack = await _createAccount();

    //Validar si el fomulario no tiene errores mientras se crea una nueva cuenta
    if (_createAccountFeedBack != null) {
      _alertDialogBuilder(_createAccountFeedBack);

      setState(() {
        _registerFormLoadin = false;
      });
    }
  }

  // Variable para mostrar el load al registrarse
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
    final Responsive responsive = Responsive.of(context);
    return SingleChildScrollView(
      child: Background(
        child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(left: 20)),
            HeaderText(
              title: "Crea una cuenta",
              subtitle: "Por favor registrese para continuar",
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
              onSubmit: (value) {
                _submitForm();
              },
            ),
            SizedBox(height: responsive.hp(5)),
            RoundedButton(
              text: "Registrarse",
              press: () {
                _submitForm();
              },
              isLoading: _registerFormLoadin,
            ),
            SizedBox(
              height: responsive.hp(7),
            ),
            IngresarConOtroMedio(size: size),
            SizedBox(
              height: responsive.hp(7),
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
