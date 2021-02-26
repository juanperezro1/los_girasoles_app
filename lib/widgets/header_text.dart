import 'package:flutter/material.dart';
import 'package:los_girasoles_app/utils/responsive.dart';

class HeaderText extends StatelessWidget {
  const HeaderText({
    Key key,
    this.title,
    this.subtitle,
  }) : super(key: key);

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    return Container(
      padding: EdgeInsets.only(top: responsive.hp(85) * 0.085),
      height: responsive.hp(25),
      child: Column(
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
                fontFamily: 'Gilroy',
                color: Colors.white,
                fontSize: responsive.hp(5.9),
                fontWeight: FontWeight.bold),
          ),
          Text(
            subtitle,
            style: TextStyle(
                fontFamily: 'Gilroy',
                color: Colors.white,
                fontSize: responsive.hp(2.09),
                fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
