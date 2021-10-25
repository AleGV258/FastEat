import 'package:flutter/material.dart';

class MenuAbajo extends StatefulWidget {
  const MenuAbajo({Key? key}) : super(key: key);

  @override
  _MenuAbajoState createState() => _MenuAbajoState();
}

class _MenuAbajoState extends State<MenuAbajo> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.red,
      backgroundColor: Colors.white,
      unselectedItemColor: Colors.orange,
      currentIndex: _selectedIndex,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.list),
          label: 'Categorias',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: 'Favoritos',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle),
          label: 'Perfil',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart),
          label: 'Carrito',
        ),
      ],
    );
  }

  void _onTap(int index) {
    _selectedIndex = index;
    setState(() {});
  }
}
