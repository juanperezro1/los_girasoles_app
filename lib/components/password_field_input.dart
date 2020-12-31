import 'package:flutter/material.dart';

import '../constans.dart';

class PasswordField extends StatelessWidget {
  final String campo;
  const PasswordField({
    Key key,
    this.campo
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20, left: 20.0, right: 20.0),
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
            hintText: campo,
            prefixIcon: Icon(
              Icons.lock,
              color: Colors.grey[400],
            ),
            hintStyle: TextStyle(fontFamily: 'Sofia Pro', fontSize: 19),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: kSecondColor, width: 5),
                borderRadius: BorderRadius.circular(5))),
      ),
    );
  }
}
