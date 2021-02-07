import 'package:flutter/material.dart';
import 'package:los_girasoles_app/Screens/Home/components/body.dart';
import 'package:los_girasoles_app/components/bottom_nav_bar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
