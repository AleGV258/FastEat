import 'package:fasteat/pages/pantalla_inicial.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'pantalla_inicial',
      routes: {
        'pantalla_inicial': (BuildContext context) => PantallaInicial(),
      },
    );
  }
}
