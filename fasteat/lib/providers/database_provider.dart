/* CHECAR */
//Checar esta pagina ya que no funciona correctamente

import 'dart:io';
import 'package:fasteat/models/favorito_model.dart';
import 'package:fasteat/models/usuario_model.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DBProvider {
  static Database? _database;
  static final DBProvider db = DBProvider._();
  DBProvider._();

  Future get database async {
    if(_database != null) return _database;
    _database = await initDB();
    return _database;
  }

  Future initDB() async {
    Directory documentDirectory = await getApplicationDocumentsDirectory();
    final path = join(documentDirectory.path, 'baseDatosGeneral.db');
    print(path);
    return await openDatabase(
      path,
      version: 3,
      onOpen: (db){},
      onCreate: (Database db, int version) async {
        await db.execute('''
        CREATE TABLE Usuarios(
          id INTEGER PRIMARY KEY,
          usuario TEXT,
          correo TEXT,
          contrasena TEXT,
          numeroTel INTEGER
        );

        CREATE TABLE Platillos(
          idPlatillo INTEGER PRIMARY KEY,
          nombre TEXT,
          precio INTEGER
        );

        CREATE TABLE Restaurantes(
          idRestaurante INTEGER PRIMARY KEY,
          ubicacion TEXT
        );

        CREATE TABLE Favoritos(
          idFavorito INTEGER PRIMARY KEY,
          platillo TEXT,
          restaurante TEXT
        );
        ''');
      },
    );
  }

  Future getAllScansFavorito() async {
    final db = await database;
    final res = await db.query('Favoritos');
    return res.isNotEmpty ? res.map((s) => Favorito.fromMap(s)).toList() : [];
  }

  Future addFavorito(Favorito nuevoFavorito) async {
    final db = await database;
    final res = await db.insert('Favoritos', nuevoFavorito.toMap());
    return res; 
  }

  Future deleteFavorito(int id) async {
    final db = await database;
    final res = await db.delete('Favoritos', where:'idFavorito=?', whereArgs:[id]);
    return res;
  }

  Future getAllScansUsuario() async {
    final db = await database;
    final res = await db.query('Usuarios');
    return res.isNotEmpty ? res.map((s) => Usuario.fromMap(s)).toList() : [];
  }

  Future addUsuario(Usuario nuevoUsuario) async {
    final db = await database;
    final res = await db.insert('Usuarios', nuevoUsuario.toMap());
    return res; 
  }

  Future deleteUsuario(int id) async {
    final db = await database;
    final res = await db.delete('Usuarios', where:'id=?', whereArgs:[id]);
    return res;
  }

}