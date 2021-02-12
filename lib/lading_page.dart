import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:los_girasoles_app/Screens/Home/components/home_page.dart';
import 'package:los_girasoles_app/Screens/Ingresar/login_screen.dart';

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

            // StreamBuilder(
            //     stream: FirebaseAuth.instance.authStateChanges(),
            //     builder: (context, streamSnapshot) {
            //       if (snapshot.hasError) {
            //         return Scaffold(
            //           body: Center(
            //             child: Text("Error: ${streamSnapshot.error}"),
            //           ),
            //         );
            //       }

            //       if (streamSnapshot.connectionState == ConnectionState.done) {
            //         User _user = streamSnapshot.data;

            //         if (_user == null) {
            //           return LoginScreen();
            //         } else {
            //           return WelcomeScreen();
            //         }
            //       }

            //       return Scaffold(
            //         body: Center(
            //           child: Text(
            //             "Checking Authentication",
            //             style: TextStyle(fontFamily: 'Sofia Pro', fontSize: 20),
            //           ),
            //         ),
            //       );
            //     });
          }

          return Scaffold(
            body: Center(
              child: Text("Initialization App.."),
            ),
          );
        });
  }
}
