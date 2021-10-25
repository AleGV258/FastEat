// import 'package:fasteat/pages/pagina_categorias.dart';
// import 'package:fasteat/pages/pantalla_inicial.dart';
import 'package:fasteat/pages/pagina_categorias.dart';
import 'package:fasteat/pages/pagina_perfil.dart';
import 'package:fasteat/pages/pagina_platillo.dart';
import 'package:fasteat/pages/pantalla_inicial.dart';
import 'package:fasteat/pages/pantalla_login.dart';
import 'package:fasteat/pages/pantalla_registro.dart';
import 'package:flutter/material.dart';
import 'package:fasteat/pages/pagina_platillos_categoria.dart';

Map<String, WidgetBuilder> getRoutes() {
  return <String, WidgetBuilder>{
    //'/': (BuildContext context) => Registro(),
    '/': (BuildContext context) => PantallaInicial(),
    'inicial': (BuildContext context) => PantallaInicial(),
    'login': (BuildContext context) => Login(),
    'registro': (BuildContext context) => Registro(),
    'categoria': (BuildContext context) => PaginaCategorias(),
    'platillosPorCategoria': (BuildContext context) =>
        PaginaPlatillosXCategoria(),
    'platillo': (BuildContext context) => PaginaPlatillo(),
    'perfil': (BuildContext context) => PaginaPerfil(),
  };
}
