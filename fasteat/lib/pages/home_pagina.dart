import 'package:fasteat/pages/pagina_categorias.dart';
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
        return PaginaCategorias(); //
      case 2:
      return PaginaPerfil();
      case 3:
      return PaginaCategorias(); //
      default:
        return PaginaCategorias();
    }
  }
}