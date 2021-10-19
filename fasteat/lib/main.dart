import 'package:fasteat/routes/rutas.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'FastEat',
        initialRoute: 'pagina_categorias',
        routes: getRoutes());
  }
}
