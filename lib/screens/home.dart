// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";
import 'package:provider/provider.dart';
import 'package:tawka/screens/profile_screen.dart';
import 'package:tawka/screens/settings_screen.dart';
import 'package:tawka/services.dart/auth_service.dart';

class HomeScreen extends StatefulWidget {
  static String id = 'chat_screeen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _navigationIndex = 0;
  List<Widget> _screenList = [ProfileScreen(), SettingsScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Chats'),
      //   elevation: 0,
      //   actions: [
      //     IconButton(
      //       onPressed: () async {
      //         await AuthService().signOut();
      //       },
      //       icon: Icon(
      //         Icons.logout,
      //         size: 20,
      //       ),
      //     )
      //   ],
      // ),
      body: _screenList[_navigationIndex],
    );
  }
}
