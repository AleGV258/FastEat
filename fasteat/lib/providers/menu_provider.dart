//Este archivo solo va a leer los archivos del json
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

class _GetICategorias {
  List<dynamic> opciones = [];

  _GetICategorias() {
    cargarData();
  }
  Future<List<dynamic>> cargarData() async {
    final resp = await rootBundle.loadString('data/archivo.json');
    //usaremos un archivo json
    Map dataMap = json.decode(resp);
    opciones = dataMap['rutas'];
    return opciones;
  }
}

final categorias = new _GetICategorias(); //la convierte a publica la clase