import 'package:fasteat/pages/home_pagina.dart';
import 'package:fasteat/pages/pantalla_inicial.dart';
import 'package:fasteat/pages/pantalla_login.dart';
import 'package:fasteat/pages/pantalla_registro.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> getRoutes() {
  return <String, WidgetBuilder>{
    //'/': (BuildContext context) => Registro(),
    '/': (BuildContext context) => PantallaInicial(),
    'home': (BuildContext context) => HomePage(),
    'inicial': (BuildContext context) => PantallaInicial(),
    'login': (BuildContext context) => Login(),
    'registro': (BuildContext context) => Registro(),
  };
}

