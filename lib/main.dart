// ignore_for_file: prefer_const_constructors
import 'package:firebase_auth/firebase_auth.dart';
import "package:flutter/material.dart";
import 'package:provider/provider.dart';
import 'package:tawka/screens/create_account_screen.dart';
import 'package:tawka/screens/home.dart';
import 'package:tawka/screens/login_screen.dart';
import 'package:tawka/screens/splash_screen.dart';
import "package:firebase_core/firebase_core.dart";
import "package:tawka/screens/parking_screen.dart";
import 'package:tawka/services.dart/auth_service.dart';
import 'package:tawka/services.dart/chat_service.dart';
import 'package:tawka/utility.dart/utility.dart';

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
        ),
        Provider(
          create: (_) => ChatService(),
        ),
        ChangeNotifierProvider(
          create: (context) => Utility(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'OPenSans'),
        home: AuthenticationWrapper(),
        routes: {
          "splash_screen": (context) => SplashScreen(),
          LoginScreen.id: (context) => LoginScreen(),
          "parking_screen": (context) => ParkingScreen(),
          CreateAccountScreen.id: (context) => CreateAccountScreen(),
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
      return HomeScreen();
    }

    return LoginScreen();
  }
}
