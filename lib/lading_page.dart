import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'Screens/Welcome/welcome_screen.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Future<FirebaseApp> _initialization = Firebase.initializeApp();
    return FutureBuilder(
        future: _initialization,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Scaffold(
              body: Center(
                child: Text("Error: ${snapshot.error}"),
              ),
            );
          }

          if (snapshot.connectionState == ConnectionState.done) {
            return WelcomeScreen();
          }

          return Scaffold(
            body: Center(
              child: Text("Initialization App.."),
            ),
          );
        });
  }
}