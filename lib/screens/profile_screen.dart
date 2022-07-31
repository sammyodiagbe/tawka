// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";

class ProfileScreen extends StatelessWidget {
  static String id = 'profile_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Profile'),
      ),
      body: Center(
        child: Text('Profile screen'),
      ),
    );
  }
}
