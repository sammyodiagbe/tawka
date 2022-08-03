// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";
import 'package:tawka/services.dart/auth_service.dart';
import "../constants.dart";

class CreateAccountScreen extends StatefulWidget {
  static String id = 'create_account_screen';
  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  String _email = '';
  String _password = '';
  String _username = '';

  final _formKey = GlobalKey<FormState>();
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
              'Create an account.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 36,
              ),
            ),
            SizedBox(height: 25),
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a value';
                }

                return null;
              },
              style: TextStyle(
                color: Colors.white,
              ),
              onChanged: (newValue) {
                _username = newValue;
              },
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(20),
                filled: true,
                fillColor: textFieldBackgroundColor,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none,
                ),
                hintText: 'Username',
                hintStyle: TextStyle(
                  color: Color.fromARGB(255, 187, 183, 183),
                ),
              ),
            ),
            SizedBox(height: 25),
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a value';
                }
                return null;
              },
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
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Field can\'t be empty';
                }
                return null;
              },
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
                AuthService _authService = AuthService();
                final user = await _authService.createUserAccount({
                  'username': _username,
                  'password': _password,
                  'email': _email
                });
                // if (user) {
                //   Navigator.popAndPushNamed(context, 'chat_screen');
                // }
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
            )
          ],
        ),
      ),
    );
  }
}
