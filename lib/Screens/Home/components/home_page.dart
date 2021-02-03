import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:los_girasoles_app/Screens/Home/components/body.dart';
import 'package:los_girasoles_app/components/bottom_nav_bar.dart';
import 'package:los_girasoles_app/constans.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kAppBarColorOne,
        actions: [
          IconButton(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 23),
              icon: SvgPicture.asset('assets/icons/bag.svg'),
              onPressed: null),
        ],
        elevation: 0,
      ),
      body: Body(),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
