// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class ParkingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff3953dd),
      // body: ,
      body: Center(
        child: Text(
          'Tawka',
          style: TextStyle(
            color: Colors.white,
            fontSize: 36,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
