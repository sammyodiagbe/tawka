// ignore_for_file: prefer_const_constructors
import "package:flutter/material.dart";
import 'package:tawka/screens/login_screen.dart';
import 'package:tawka/screens/parking_screen.dart';

void main() {
  runApp(TawkaApp());
}

class TawkaApp extends StatelessWidget {
  const TawkaApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ParkingScreen(),
      theme: ThemeData(fontFamily: 'OPenSans'),
      initialRoute: "parking_screen",
      routes: {
        "login": (context) => LoginScreen(),
        "parking_screen": (context) => ParkingScreen()
      },
    );
  }
}
