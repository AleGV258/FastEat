import 'package:fasteat/pages/pagina_categorias.dart';
import 'package:fasteat/pages/pantalla_inicial.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> getRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => PantallaInicial(),
    'pagina_categorias': (BuildContext context) => PaginaCategorias(),
  };
}
