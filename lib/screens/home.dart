// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";
import 'package:provider/provider.dart';
import 'package:tawka/screens/profile_screen.dart';
import 'package:tawka/screens/settings_screen.dart';
import 'package:tawka/screens/chat_screen.dart';
import 'package:tawka/utility.dart/utility.dart';
import "../widgets/custom_bottom_navigation.dart";

class HomeScreen extends StatelessWidget {
  static String id = 'chat_screeen';
  final List<Widget> _screenList = [
    ChatScreen(),
    ProfileScreen(),
    SettingsScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<Utility>(
      builder: (context, provider, child) => Scaffold(
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
        appBar: AppBar(
          title: Text('Chats'),
          elevation: 0,
        ),
        body: _screenList[provider.screen],
        bottomNavigationBar: CustomBottomNavigationBar(),
      ),
    );
  }
}
