import 'package:flutter/material.dart';

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: const Color(0xff38006b),
      // ignore: prefer_const_literals_to_create_immutables
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.purpleAccent,
      unselectedItemColor: Colors.amber,
      // ignore: prefer_const_literals_to_create_immutables
      items: [
        const BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          label: "Home",
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.playlist_add_outlined,color: Colors.amber,),
          label: "My Playlist",
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.notifications_outlined,color: Colors.amber,),
          label: "Notification",
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.settings,color: Colors.amber,),
          label: "Settings",
        ),
      ],
    );
  }
}
