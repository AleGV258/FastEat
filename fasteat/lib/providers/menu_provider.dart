/* CHECAR */
//Este archivo solo va a leer los archivos del json

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

//esta clase es para recuperar los datos del JSON de categorias (creo que estos datos se deberian recuperar de la base de datos no de un JSON)
class _GetICategorias {
  List<dynamic> opciones = [];
  _GetICategorias() {
    cargarData();
  }
  Future<List<dynamic>> cargarData() async {
    final resp = await rootBundle.loadString('data/categorias.json');
    Map dataMap = json.decode(resp);
    opciones = dataMap['rutas'];
    return opciones;
  }
}
final categorias = new _GetICategorias(); //la convierte a publica la clase


//esta clase es para recuperar los datos del JSON de rutas
class _MenuProvider {
  List<dynamic> opciones = [];
  _MenuProvider() {
    cargarData();
  }
  Future<List<dynamic>> cargarData() async {
    final respuesta = await rootBundle.loadString('data/rutas_opts.json');
    Map dataMap = json.decode(respuesta);
    opciones = dataMap['rutas'];
    return opciones;
  }
}
final menuProvider = new _MenuProvider();
