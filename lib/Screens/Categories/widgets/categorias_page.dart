import 'package:flutter/material.dart';
import 'package:los_girasoles_app/Screens/Categories/widgets/body.dart';
import 'package:los_girasoles_app/widgets/bottom_nav_bar.dart';


class CategoriasPage extends StatelessWidget {
  const CategoriasPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      body: Body(),
    );
  }
}
