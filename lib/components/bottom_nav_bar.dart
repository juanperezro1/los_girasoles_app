import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:los_girasoles_app/Screens/Categorias/categorias_screen.dart';
import 'package:los_girasoles_app/Screens/Home/home_screen.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      height: 68,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25), topRight: Radius.circular(25)),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, -7),
                blurRadius: 33,
                color: Color(0xFF6DAED9).withOpacity(0.1))
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
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return HomeScreen();
                    },
                  ),
                );
              }),
          IconButton(
              icon: SvgPicture.asset('assets/icons/categories.svg'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return CategoriasScreen();
                    },
                  ),
                );
              }),
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
