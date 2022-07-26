// ignore_for_file: prefer_const_constructors
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:tawka/screens/chat_screen.dart';
import 'package:tawka/screens/login_screen.dart';
import './parking_screen.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: ((context, snapshot) {
        print(snapshot.connectionState);
        if (snapshot.connectionState == ConnectionState.waiting) {
          return ParkingScreen();
        }

        if (snapshot.data != null) {
          print('here');
          return ChatScreen();
        } else {
          print('therer');
          return LoginScreen();
        }
      }),
    );
  }
}
