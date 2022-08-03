// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";
import 'package:provider/provider.dart';
import 'package:tawka/services.dart/auth_service.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Chat screen'),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text('Log out'),
              onPressed: () {
                Provider.of<AuthService>(context, listen: false).signOut();
              },
            )
          ],
        ),
      ),
    );
  }
}
