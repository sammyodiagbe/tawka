// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";
import 'package:provider/provider.dart';
import 'package:tawka/services.dart/auth_service.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print(Provider.of<AuthService>(context).getCurrentUser?.email);
    return Scaffold(
      appBar: AppBar(
        title: Text('Chats'),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () async {
              await AuthService().signOut();
            },
            icon: Icon(
              Icons.logout,
              size: 20,
            ),
          )
        ],
      ),
    );
  }
}
