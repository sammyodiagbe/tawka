// ignore_for_file: prefer_const_constructors
import "package:flutter/material.dart";

class SettingsScreen extends StatelessWidget {
  static String id = 'settings_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Center(
        child: Text('settings screen'),
      ),
    );
  }
}
