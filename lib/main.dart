import 'package:flutter/material.dart';
import 'package:los_girasoles_app/lading_page.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Los Girasoles',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      home: LandingPage(),
    );
  }
}
