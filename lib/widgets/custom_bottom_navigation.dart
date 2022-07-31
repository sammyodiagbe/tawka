// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:tawka/utility.dart/utility.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  CustomBottomNavigationBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Consumer<Utility>(
      builder: (context, provider, child) => Container(
        decoration: BoxDecoration(),
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: FaIcon(FontAwesomeIcons.message),
              color: provider.screen == 0 ? Colors.red : Colors.grey,
              onPressed: () {
                provider.updateScreen(0);
              },
            ),
            IconButton(
              icon: FaIcon(FontAwesomeIcons.user),
              color: provider.screen == 1 ? Colors.red : Colors.grey,
              onPressed: () {
                provider.updateScreen(1);
              },
            ),
            IconButton(
              icon: FaIcon(FontAwesomeIcons.gear),
              color: provider.screen == 2 ? Colors.red : Colors.grey,
              onPressed: () {
                provider.updateScreen(2);
              },
            ),
          ],
        ),
      ),
    );
  }
}
