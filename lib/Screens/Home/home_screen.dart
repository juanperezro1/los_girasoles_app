import 'package:flutter/material.dart';
import 'package:los_girasoles_app/Screens/Home/widgets/home_page.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      
    );
  }
}