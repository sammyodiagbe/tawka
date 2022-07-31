// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:tawka/utility.dart/utility.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  CustomBottomNavigationBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            icon: FaIcon(FontAwesomeIcons.message),
            onPressed: () {
              Provider.of<Utility>(context, listen: false).updateScreen(0);
            },
          ),
          IconButton(
            icon: FaIcon(FontAwesomeIcons.user),
            onPressed: () {
              Provider.of<Utility>(context, listen: false).updateScreen(1);
            },
          ),
          IconButton(
            icon: FaIcon(FontAwesomeIcons.gear),
            onPressed: () {
              Provider.of<Utility>(context, listen: false).updateScreen(2);
            },
          ),
        ],
      ),
    );
  }
}
