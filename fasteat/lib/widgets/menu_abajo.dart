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
}
