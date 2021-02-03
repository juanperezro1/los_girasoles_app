import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      height: 75,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, -7),
                blurRadius: 33,
                color: Color(0xFF6DAED9).withOpacity(0.19))
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
              icon: Icon(
                Icons.home,
                size: 35,
                color: Color(0xFFFFFCB00),
              ),
              onPressed: () {}),
          IconButton(
              icon: SvgPicture.asset('assets/icons/categories.svg'),
              onPressed: () {}),
          IconButton(
              icon: SvgPicture.asset('assets/icons/heart.svg'),
              onPressed: () {}),
          IconButton(
              icon: SvgPicture.asset('assets/icons/settings.svg'),
              onPressed: () {})
        ],
      ),
    );
  }
}