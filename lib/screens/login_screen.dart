import "package:flutter/material.dart";
// ignore_for_file: prefer_const_constructors

import 'package:tawka/constants.dart';
import 'package:tawka/services.dart/auth_service.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String _email = '';
  String _password = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Signin to enter.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 36,
              ),
            ),
            SizedBox(height: 25),
            TextField(
              style: TextStyle(
                color: Colors.white,
              ),
              onChanged: (newValue) {
                _email = newValue;
              },
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(20),
                filled: true,
                fillColor: textFieldBackgroundColor,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none,
                ),
                hintText: 'Email',
                hintStyle: TextStyle(
                  color: Color.fromARGB(255, 187, 183, 183),
                ),
              ),
            ),
            SizedBox(height: 25),
            TextField(
              style: TextStyle(
                color: Colors.white,
              ),
              onChanged: (newValue) {
                _password = newValue;
              },
              obscureText: true,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(20),
                filled: true,
                fillColor: textFieldBackgroundColor,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none,
                ),
                hintText: 'Password',
                hintStyle: TextStyle(
                  color: Color.fromARGB(255, 187, 183, 183),
                ),
              ),
            ),
            SizedBox(height: 25),
            GestureDetector(
              onTap: () async {
                AuthService _auth = AuthService();
                await _auth.login({'email': _email, 'password': _password});
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                alignment: Alignment.center,
                child: Text(
                  'Send me in.',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, 'create_account');
              },
              child: Text(
                'Create an account',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  decoration: TextDecoration.underline,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
