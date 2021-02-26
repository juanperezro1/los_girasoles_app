import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:los_girasoles_app/utils/responsive.dart';

class Background extends StatelessWidget {
  final Widget child;
  final Size size;
  const Background({this.child, this.size});
  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    return Container(
        child: Stack(
      children: <Widget>[
        Positioned(
          top: -(responsive.wp(40) * 0.09),
          child: SvgPicture.asset(
            'assets/images/background2.svg',
            height: responsive.hp(28),
          ),
        ),
        child,
      ],
    ));
  }
}
