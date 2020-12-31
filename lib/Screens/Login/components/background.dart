import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({this.child});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(

        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
              top: size.width - 502,
              child: SvgPicture.asset(
                'assets/images/componente_superior.svg',
                height: size.height * 0.4,
              ),
            ),
            child,
          ],
        ));
  }
}
