/* CHECAR */
//Checar esta pagina ya que no funciona correctamente

import 'dart:io';
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
    final path = join(documentDirectory.path, 'scansdb.db');
    print(path);
    return await openDatabase(
      path,
      version: 2,
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
        ''');
      },
    );
  }

  Future registrarUsuario(Future id, String usuario, String correo, int numeroTel, String contrasena) async {
    final db = await database;
    final res = await db.rawQuery('''
      INSERT INTO Usuarios(id, usuario, correo, contrasena, numeroTel) VALUES ($id, $usuario, $correo, $numeroTel, $contrasena);
    ''');
    return res;
  }

  Future recuperarUsuario(String usuario) async {
    final db = await database;
    final res = await db.rawQuery('''
      SELECT * FROM Usuarios WHERE usuario = $usuario;
    ''');
    return res;
  }

  Future cantidadUsuarios() async {
    final db = await database;
    final res = await db.rawQuery('''
      SELECT COUNT(*) FROM Usuarios;
    ''') + 1;
    return res;
  }
}