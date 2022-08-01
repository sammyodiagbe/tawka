// ignore_for_file: prefer_const_constructors
import "package:flutter/material.dart";

class SettingsScreen extends StatefulWidget {
  static String id = 'settings_screen';

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  void initState() {
    // TODO: implement initState

    // grab the list of users that have signed up
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('settings screen'),
      ),
    );
  }
}
