/* CHECAR */
//Revisar para que funcione con una base de datos, si se puede

import 'package:flutter/material.dart';
import 'package:fasteat/providers/database_provider.dart';

class Registro extends StatelessWidget {
  // Future id = DBProvider.db.cantidadUsuarios();
  // String usuario = '';
  // String correo = '';
  // int telefono = 0;
  // String contrasena = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 15.0),
            Image(image: AssetImage('assets/Logo.png'), height: 100),
            SizedBox(height: 10.0),
            Text('¡Bienvenido!', style: TextStyle(color: Colors.black, fontSize: 30)),
            SizedBox(height: 10.0),
            Text('Registrate', style: TextStyle(color: Colors.red[300], fontSize: 25)),
            SizedBox(height: 10.0),
            _usuario(),
            SizedBox(height: 15.0),
            _correo(),
            SizedBox(height: 15.0),
            _telefono(),
            SizedBox(height: 15.0),
            _contrasena(),
            SizedBox(height: 20.0),
            //_registrarse(id, usuario, correo, telefono, contrasena, context),
            _registrarse(context),
            SizedBox(height: 15.0),
            GestureDetector(
              child: Text('¡Ya tienes cuenta, inicia sesión!', style: TextStyle(decoration: TextDecoration.underline, color: Colors.orange[700], fontSize: 15)),
              onTap: () {
                Navigator.of(context).pushNamed('login');
              }
            ),
            SizedBox(height: 15.0),
          ],
        ),
      ),
    );
  }

  Widget _usuario() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 35.0),
      child: TextField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          icon: Icon(Icons.person),
          hintText: 'Usuario',
          labelText: 'Usuario:',
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
          ),
        ),
        onChanged: (value) {
          //usuario = value;
        },
        autofocus: true,
      ),
    );
  }

  Widget _correo() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 35.0),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          icon: Icon(Icons.email),
          hintText: 'ejemplo@correo.com',
          labelText: 'Correo Electrónico:',
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
          ),
        ),
        onChanged: (value) {

        },
      ),
    );
  }

  Widget _telefono() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 35.0),
      child: TextField(
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
          icon: Icon(Icons.local_phone),
          hintText: 'Teléfono',
          labelText: 'Teléfono:',
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
          ),
        ),
        onChanged: (value) {

        },
      ),
    );
  }

  Widget _contrasena() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 35.0),
      child: TextField(
        obscureText: true,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          icon: Icon(Icons.password),
          hintText: 'Contraseña',
          labelText: 'Contraseña:',
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
          ),
        ),
        onChanged: (value) {

        },
      ),
    );
  }

  Widget _registrarse(BuildContext context){
  //Widget _registrarse(Future id, String usuario, String correo, int telefono, String contrasena, BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // if(usuario == '' || correo == '' || telefono == 0 || contrasena == ''){
        //   AlertDialog(
        //     shape:
        //       RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        //     title: Text('Error de Registro'),
        //     content: Column(
        //       mainAxisSize: MainAxisSize.min,
        //       children: <Widget>[Text('No se ha podido registrar, rellene todos los campos del registro e intente nuevamente.')],
        //     ),
        //     actions: <Widget>[
        //       TextButton(
        //         onPressed: () => Navigator.of(context).pop,
        //         child: Text('Cancelar'),
        //       ),
        //     ],
        //   );
        // }else{
        //   DBProvider.db.registrarUsuario(id, usuario, correo, telefono, contrasena);
        // }
        Navigator.of(context).pushNamed('categoria');
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 20.0),
        child: Text('Registrate', style: TextStyle(fontSize: 17.0)),
      ),
      style: ElevatedButton.styleFrom(
        primary: Colors.red,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
