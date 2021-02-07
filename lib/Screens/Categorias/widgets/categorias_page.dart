import 'package:flutter/material.dart';
import 'package:los_girasoles_app/Screens/Categorias/widgets/body.dart';
import 'package:los_girasoles_app/components/bottom_nav_bar.dart';

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
