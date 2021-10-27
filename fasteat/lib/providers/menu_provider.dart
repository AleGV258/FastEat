import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

//esta clase es para recuperar los datos del JSON de categorias (creo que estos datos se deberian recuperar de la base de datos no de un JSON)
class _GetFavoritos {
  List<dynamic> opciones = [];
  _GetFavoritos() {
    cargarData();
  }
  Future<List<dynamic>> cargarData() async {
    final resp = await rootBundle.loadString('data/favoritos.json');
    Map dataMap = json.decode(resp);
    opciones = dataMap['rutas'];
    return opciones;
  }
}

final fav = new _GetFavoritos(); //la convierte a publica la clase