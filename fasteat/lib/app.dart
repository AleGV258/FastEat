import 'package:fasteat/routes/rutas.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fast Eat',
      initialRoute: 'platillo',
      routes: getRoutes(),
      theme: ThemeData().copyWith(
        colorScheme: ThemeData().colorScheme.copyWith(
              primary: Colors.red[300],
            ),
      ),
    );
  }
}
