// ignore_for_file: prefer_const_constructors
import 'package:firebase_auth/firebase_auth.dart';
import "package:flutter/material.dart";
import 'package:provider/provider.dart';
import 'package:tawka/screens/chat_screen.dart';
import 'package:tawka/screens/create_account_screen.dart';
import 'package:tawka/screens/login_screen.dart';
import 'package:tawka/screens/splash_screen.dart';
import "package:firebase_core/firebase_core.dart";
import "package:tawka/screens/parking_screen.dart";
import 'package:tawka/services.dart/auth_service.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(TawkaApp());
}

class TawkaApp extends StatelessWidget {
  const TawkaApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
          create: (_) => AuthService(),
        ),
        StreamProvider(
          create: (context) => context.read<AuthService>().authStateChanges,
          initialData: null,
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'OPenSans'),
        home: AuthenticationWrapper(),
        routes: {
          "splash_screen": (context) => SplashScreen(),
          "login": (context) => LoginScreen(),
          "parking_screen": (context) => ParkingScreen(),
          "create_account": (context) => CreateAccountScreen(),
          "chat_screen": (context) => ChatScreen()
        },
      ),
    );
  }
}

class AuthenticationWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final firebaseUser = context.watch<User?>();
    if (firebaseUser != null) {
      return ChatScreen();
    }

    return LoginScreen();
  }
}
