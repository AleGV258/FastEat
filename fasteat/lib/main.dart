import 'package:fasteat/pages/pagina_categorias.dart';
import 'package:fasteat/pages/pantalla_inicial.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FastEat',
      initialRoute: 'pagina_categorias',
      routes: {
        'pantalla_inicial': (BuildContext context) => PantallaInicial(),
        'pagina_categorias': (BuildContext context) => PaginaCategorias(),
      },
    );
  }
}
