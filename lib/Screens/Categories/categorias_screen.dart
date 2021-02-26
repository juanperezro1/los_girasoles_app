import 'package:flutter/material.dart';
import 'package:los_girasoles_app/Screens/Categories/widgets/categorias_page.dart';


class CategoriasScreen extends StatelessWidget {
  const CategoriasScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CategoriasPage(),
    );
  }
}
