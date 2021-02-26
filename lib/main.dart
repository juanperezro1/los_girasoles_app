import 'package:flutter/material.dart';
import 'package:los_girasoles_app/lading_page.dart';
import 'package:flutter/services.dart';
import 'package:los_girasoles_app/provider/my_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => MyProvider())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Los Girasoles',
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
        ),
        home: LandingPage(),
      ),
    );
  }
}
