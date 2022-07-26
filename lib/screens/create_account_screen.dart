// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";
import "../constants.dart";

class CreateAccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            TextField(
              style: TextStyle(
                color: Colors.white,
              ),
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
              onTap: () {
                print('Preparing to sign you in');
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
