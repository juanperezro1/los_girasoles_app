import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      height: size.height / 2,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              SvgPicture.asset('assets/images/logo.svg'),
              Text(
                "Los Girasoles",
                style: TextStyle(
                    fontFamily: 'Lucky Fellas',
                    fontSize: 75,
                    color: Color(0xFFF9CD22)),
              ),
              Text(
                "EXPRÉSATE CON FLORES",
                style: TextStyle(
                    fontFamily: 'Cerebri Sans',
                    fontSize: 18,
                    color: Color(0xFFF9CD22)),
              ),
              Container(
                width: size.width * 0.5,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xFFFEDC741), Color(0xFFFF4A824)]),
                      borderRadius: BorderRadius.circular(18)
                ),
                child: Column(
                  children: <Widget>[
                    FlatButton(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                      onPressed: () {},
                      child: Text("Iniciar sesión", style: TextStyle(fontFamily: 'Sofia Pro', fontSize: 18, color: Colors.white),),
                    )
                  ],
                ),
              ),
              Container(
                
                width: size.width * 0.5,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xFFFEDC741), Color(0xFFFF4A824)]),
                      borderRadius: BorderRadius.circular(18)
                ),
                child: Column(
                  children: <Widget>[
                    FlatButton(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 35),
                      onPressed: () {},
                      child: Text("Registrarme", style: TextStyle(fontFamily: 'Sofia Pro', fontSize: 18, color: Colors.white),),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
