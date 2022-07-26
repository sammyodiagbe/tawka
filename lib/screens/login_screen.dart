import "package:flutter/material.dart";
// ignore_for_file: prefer_const_constructors

import 'package:tawka/constants.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Text('login'),
      ),
    );
  }
}
