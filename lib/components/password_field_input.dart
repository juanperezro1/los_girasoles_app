import 'package:flutter/material.dart';

import '../constans.dart';

class PasswordField extends StatelessWidget {
  final String campo;
  final Function(String) onChange;
  final Function(String) onSubmit;
  final FocusNode focusNode;
  const PasswordField(
      {Key key, this.campo, this.onChange, this.onSubmit, this.focusNode})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding:
          EdgeInsets.only(top: size.height * 0.07, left: 40.0, right: 40.0),
      child: TextField(
        focusNode: focusNode,
        onChanged: onChange,
        onSubmitted: onSubmit,
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
