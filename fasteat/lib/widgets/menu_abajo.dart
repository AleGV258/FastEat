import 'package:fasteat/providers/gestor_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MenuAbajo extends StatelessWidget {
  const MenuAbajo({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final gestorProvider = Provider.of<GestorProvider>(context);
    final index = gestorProvider.opcionSeleccionada;
    return BottomNavigationBar(
      onTap: (int i) => gestorProvider.opcionSeleccionada = i,
      // showSelectedLabels: false,
      // showUnselectedLabels: false,
      selectedItemColor: Colors.red,
      backgroundColor: Colors.white,
      unselectedItemColor: Colors.orange,
      currentIndex: index,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.list),
          label: 'Categoría',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: 'Favorito',
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
