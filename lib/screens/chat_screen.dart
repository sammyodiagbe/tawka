// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";
import 'package:provider/provider.dart';
import 'package:tawka/screens/profile_screen.dart';
import 'package:tawka/screens/settings_screen.dart';
import 'package:tawka/services.dart/auth_service.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chats'),
      ),
      body: Center(
        child: Text('Chat screen'),
      ),
    );
  }
}
