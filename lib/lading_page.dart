import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:los_girasoles_app/Screens/Home/components/home_page.dart';
import 'package:los_girasoles_app/Screens/Ingresar/login_screen.dart';

class LandingPage extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialization,
      builder: (context, snapshot) {
        // If Firebase App init, snapshot has error
        if (snapshot.hasError) {
          return Scaffold(
            body: Center(
              child: Text("Error: ${snapshot.error}",
                  style: TextStyle(fontFamily: 'Sofia')),
            ),
          );
        }

        // Connection Initialized - Firebase App is running
        if (snapshot.connectionState == ConnectionState.done) {
          // StreamBuilder can check the login state live
          return StreamBuilder(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, streamSnapshot) {
              // If Stream Snapshot has error
              if (streamSnapshot.hasError) {
                return Scaffold(
                  body: Center(
                    child: Text("Error: ${streamSnapshot.error}",
                        style: TextStyle(fontFamily: 'Sofia')),
                  ),
                );
              }

              // Connection state active - Do the user login check inside the
              // if statement
              if (streamSnapshot.connectionState == ConnectionState.active) {
                // Get the user
                User _user = streamSnapshot.data;

                // If the user is null, we're not logged in
                if (_user == null) {
                  // user not logged in, head to login
                  return LoginScreen();
                } else {
                  // The user is logged in, head to homepage
                  return HomePage();
                }
              }

              // Checking the auth state - Loading
              return Scaffold(
                body: Center(
                  child: Text(
                    "Checking Authentication...",
                    style: TextStyle(fontFamily: 'Sofia'),
                  ),
                ),
              );
            },
          );
        }

        // Connecting to Firebase - Loading
        return Scaffold(
          body: Center(
            child: Text("Initialization App...",
                style: TextStyle(fontFamily: 'Sofia')),
          ),
        );
      },
    );
  }
}
