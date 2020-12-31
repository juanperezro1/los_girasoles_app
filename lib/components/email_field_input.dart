import 'package:flutter/material.dart';

import '../constans.dart';

class EmailField extends StatelessWidget {
  final String campo;
  const EmailField({Key key, this.campo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 120, left: 20.0, right: 20.0),
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: TextField(
        decoration: InputDecoration(
            hintText: campo,
            prefixIcon: Icon(
              Icons.email,
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
