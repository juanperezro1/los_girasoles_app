import 'package:flutter/material.dart';

import '../constans.dart';

class CustomInput extends StatelessWidget {
  final String campo;
  final IconData icon;
  final Function(String) onChange;
  final Function(String) onSubmit;
  final FocusNode focusNode;
  final TextInputAction textInputAction;
  final bool isPasswordField;
  const CustomInput(
      {Key key,
      this.campo,
      this.onChange,
      this.onSubmit,
      this.focusNode,
      this.icon,
      this.textInputAction,
      this.isPasswordField})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool _isPasswordField = isPasswordField ?? false;
    return Container(
      padding: EdgeInsets.only(top: size.height * 0.1, left: 40.0, right: 40.0),
      child: TextField(
        focusNode: focusNode,
        onChanged: onChange,
        onSubmitted: onSubmit,
        textInputAction: textInputAction,
        obscureText: _isPasswordField,
        decoration: InputDecoration(
            hintText: campo,
            prefixIcon: Icon(
              icon,
              color: Colors.grey[400],
            ),
            hintStyle: TextStyle(fontFamily: 'Sofia', fontSize: 19),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: kSecondColor, width: 3),
                borderRadius: BorderRadius.circular(5))),
      ),
    );
  }
}
