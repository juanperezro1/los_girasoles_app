import 'package:flutter/material.dart';

import 'package:los_girasoles_app/Screens/Ingresar/login_screen.dart';
import '../constans.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({Key key, this.text, this.press, this.isLoading})
      : super(key: key);

  final String text;
  final Function press;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool _isLoading = isLoading ?? false;
    return GestureDetector(
      onTap: press,
          child: Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
          width: size.width * 0.5,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: kGradientColor),
            borderRadius: BorderRadius.circular(18),
          ),
          child: Stack(
            children: [
              Visibility(
                visible: _isLoading ? false : true,
                child: Center(
                  child: Text(
                    text,
                    style: TextStyle(
                        fontFamily: 'Sofia Pro',
                        fontSize: 18,
                        color: Colors.white),
                  ),
                ),
              ),
              Visibility(
                visible: _isLoading,
                child: Center(
                  child: SizedBox(
                    child: Theme(
                      data: Theme.of(context).copyWith(accentColor: Colors.white),
                      child: CircularProgressIndicator(),
                    ),
                    height: 20,
                    width: 20,
                  ),
                ),
              )
            ],
          )),
    );
  }
}
