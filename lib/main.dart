// ignore_for_file: prefer_const_constructors
import "package:flutter/material.dart";
import 'package:tawka/screens/create_account_screen.dart';
import 'package:tawka/screens/login_screen.dart';
import 'package:tawka/screens/splash_screen.dart';
import "package:firebase_core/firebase_core.dart";
import "package:tawka/screens/parking_screen.dart";

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(TawkaApp());
}

class TawkaApp extends StatelessWidget {
  const TawkaApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'OPenSans'),
      initialRoute: "login",
      routes: {
        "splash_screen": (context) => SplashScreen(),
        "login": (context) => LoginScreen(),
        "parking_screen": (context) => ParkingScreen(),
        "create_account": (context) => CreateAccountScreen()
      },
    );
  }
}
