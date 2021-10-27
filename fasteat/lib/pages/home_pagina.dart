import 'package:fasteat/pages/pagina_carrito.dart';
import 'package:fasteat/pages/pagina_categorias.dart';
//import 'package:fasteat/pages/pagina_favoritos.dart';
import 'package:fasteat/pages/pagina_newFavoritos.dart';
import 'package:fasteat/pages/pagina_perfil.dart';
import 'package:fasteat/providers/gestor_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final gestorProvider = Provider.of<GestorProvider>(context);
    final opcion = gestorProvider.opcionSeleccionada;
    switch (opcion) {
      case 0:
        return PaginaCategorias();
      case 1:
        return NewFavorito();
      case 2:
        return PaginaPerfil();
      case 3:
        return PaginaCarrito(); //
      default:
        return PaginaCategorias();
    }
  }
}
