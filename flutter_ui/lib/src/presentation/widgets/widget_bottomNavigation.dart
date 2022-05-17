
// ignore_for_file: file_names

import 'package:flutter/material.dart';
class BottomWidget extends StatelessWidget {
  const BottomWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.black.withOpacity(0.4),
      // ignore: prefer_const_literals_to_create_immutables
      type: BottomNavigationBarType.fixed,
      fixedColor: Colors.purpleAccent,
      unselectedItemColor: Colors.grey,
      // ignore: prefer_const_literals_to_create_immutables
      items: [
        const BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "",
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today_rounded),
          label: "",
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.workspaces_outline),
          label: "",
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: "",
        ),
      ],
    );
  }
}
