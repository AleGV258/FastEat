import 'package:fasteat/pages/pagina_categorias.dart';
import 'package:fasteat/providers/gestor_provider.dart';
import 'package:fasteat/routes/rutas.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (BuildContext context) => GestorProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Fast Eat',
        initialRoute: '/',
        routes: getRoutes(),
        theme: ThemeData().copyWith(
          colorScheme: ThemeData().colorScheme.copyWith(
            primary: Colors.red[300],
          ),
        ),
      ),
    );
  }
}
