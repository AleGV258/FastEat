import 'package:flutter/material.dart';

class MenuAbajo extends StatelessWidget {
  const MenuAbajo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.red,
      backgroundColor: Colors.white,
      unselectedItemColor: Colors.orange,
      currentIndex: 0,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.access_alarms),
          label: 'Hola mundo',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.safety_divider),
          label: 'Hola mundo',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.g_mobiledata_rounded),
          label: 'Hola mundo',
        ),
      ],
    );
  }
}
