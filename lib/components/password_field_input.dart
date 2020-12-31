import 'package:flutter/material.dart';

import '../constans.dart';

class PasswordField extends StatelessWidget {
  final String campo;
  const PasswordField({Key key, this.campo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(top: size.height * 0.07, left: 40.0, right: 40.0),
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
